#!/usr/bin/env python3
import re
import argparse
from pathlib import Path
import shutil

# ---------- Step 1: Parse moves.s for MOVE -> TYPE ----------
def parse_moves_file(filepath: Path):
    moves_to_type = {}  # MOVE_* -> TYPE_*
    current_move = None
    current_type = None

    TYPE_TOKEN_RE = re.compile(r'\bTYPE_[A-Za-z0-9_]+')

    with filepath.open(encoding="utf-8") as f:
        for raw in f:
            line = raw.strip()
            if not line or line.startswith("//"):
                continue

            if line.startswith("movedata"):
                # e.g. movedata MOVE_POUND, "Pound"
                m = re.match(r'movedata\s+(\w+),', line)
                if m:
                    current_move = m.group(1)
                    current_type = None

            elif line.startswith("type") and current_move:
                # Handle both:
                #   type TYPE_NORMAL
                #   type (FAIRY_TYPE_IMPLEMENTED) ? TYPE_FAIRY : TYPE_NORMAL
                type_tokens = TYPE_TOKEN_RE.findall(line)
                if type_tokens:
                    # Prefer TYPE_FAIRY if present on the line, otherwise take the first token
                    current_type = "TYPE_FAIRY" if "TYPE_FAIRY" in type_tokens else type_tokens[0]

            elif line.startswith("terminatedata") and current_move:
                if current_move and current_type:
                    moves_to_type[current_move] = current_type
                current_move = None
                current_type = None

    return moves_to_type


# ---------- Step 2: Load sMachineMoves[] ----------
def load_machine_move_list(file_path: Path):
    move_list = []
    in_array = False
    move_pattern = re.compile(r'\bMOVE_[A-Z0-9_]+')

    with file_path.open(encoding='utf-8') as f:
        for raw in f:
            line = raw.strip()
            if 'static const u16 sMachineMoves[]' in line:
                in_array = True
                continue
            if in_array:
                if '};' in line:
                    break
                move_list.extend(move_pattern.findall(line))
    return move_list


# ---------- Step 3: Re-implement ItemToMachineMoveIndex mapping ----------
def canonical_items():
    """
    Yields tuples describing each canonical machine item in order we need to check:
    (kind, number, item_id_sim)
      kind: 'TM' | 'TR' | 'HM' | 'SPECIAL'
      number: integer label (TM001 -> 1, TR00 -> 0, etc.), or a string for SPECIAL.
      item_id_sim: a simulated integer ID used only so our Python port of ItemToMachineMoveIndex works.
    """
    # We'll simulate item IDs as monotonic counters per block;
    # only relative differences matter for the mapping function.

    # Block A: ITEM_TM001 .. ITEM_HM08 (this contiguous region includes TMs 1-92 and HMs 01-08).
    # Simulate starting ID for ITEM_TM001:
    base_A = 10_000
    # TM001..TM092 -> indices 0..91
    for n in range(1, 93):
        yield ('TM', n, base_A + (n - 1))
    # HM01..HM08 -> indices 92..99
    for n in range(1, 9):
        yield ('HM', n, base_A + 92 + (n - 1))

    # SPECIAL: HM07_ORAS -> index 100
    hm07_oras_id = 20_000
    yield ('SPECIAL', 'HM07_ORAS', hm07_oras_id)

    # SPECIAL: TM00 -> index 101
    tm00_id = 20_001
    yield ('TM', 0, tm00_id)

    # Block B: ITEM_TM093 .. ITEM_TM095 -> indices 102..104
    base_B = 30_000
    for n in range(93, 96):
        yield ('TM', n, base_B + (n - 93))

    # Block C: ITEM_TM096 .. ITEM_TM100 -> indices 105..109
    base_C = 31_000
    for n in range(96, 101):
        yield ('TM', n, base_C + (n - 96))

    # Block D: ITEM_TM100_SV .. ITEM_TM229 -> indices 110..(110 + 130 - 1) if all present
    # We'll assume these label as TM100..TM229 (overlaps numbering with prior TMs but reflects newer games).
    base_D = 40_000
    for i, n in enumerate(range(100, 230)):  # TM100 .. TM229
        yield ('TM', n, base_D + i)

    # Block E: ITEM_TR00 .. ITEM_TR99 -> indices 240..339
    base_E = 50_000
    for n in range(0, 100):  # TR00 .. TR99
        yield ('TR', n, base_E + n)


def item_to_machine_move_index(item_id_sim):
    """
    Python port of your ItemToMachineMoveIndex with simulated IDs.
    We mirror ranges using the same simulated bases used in canonical_items().
    """
    # Mirrors the bases in canonical_items():
    ITEM_TM001 = 10_000
    ITEM_HM08 = ITEM_TM001 + 92 + 8 - 1  # 10_099
    ITEM_HM07_ORAS = 20_000
    ITEM_TM00 = 20_001
    ITEM_TM093 = 30_000
    ITEM_TM095 = ITEM_TM093 + (95 - 93)  # 30_002
    ITEM_TM096 = 31_000
    ITEM_TM100 = ITEM_TM096 + (100 - 96)  # 31_004
    ITEM_TM100_SV = 40_000
    ITEM_TM229 = ITEM_TM100_SV + (229 - 100)  # 40_129
    ITEM_TR00 = 50_000
    ITEM_TR99 = ITEM_TR00 + 99  # 50_099

    if ITEM_TM001 <= item_id_sim <= ITEM_HM08:
        return item_id_sim - ITEM_TM001
    if item_id_sim == ITEM_HM07_ORAS:
        return 100
    if item_id_sim == ITEM_TM00:
        return 101
    if ITEM_TM093 <= item_id_sim <= ITEM_TM095:
        return item_id_sim - ITEM_TM093 + 102
    if ITEM_TM096 <= item_id_sim <= ITEM_TM100:
        return item_id_sim - ITEM_TM096 + 105
    if ITEM_TM100_SV <= item_id_sim <= ITEM_TM229:
        return item_id_sim - ITEM_TM100_SV + 110
    if ITEM_TR00 <= item_id_sim <= ITEM_TR99:
        return item_id_sim - ITEM_TR00 + 240
    return None


def build_canonical_lookup(machine_moves):
    """
    Returns a list of (kind, number, index, move_name) in canonical order,
    skipping anything that maps beyond machine_moves length.
    """
    out = []
    for kind, number, sim_id in canonical_items():
        idx = item_to_machine_move_index(sim_id)
        if idx is None:
            continue
        if 0 <= idx < len(machine_moves):
            out.append((kind, number, idx, machine_moves[idx]))
        else:
            # We've exceeded the actual sMachineMoves[] content; stop gracefully.
            break
    return out


# ---------- Step 4: Copy icons by type ----------
def type_token_to_basename(type_token: str) -> str:
    # e.g., TYPE_FIRE -> fire
    return type_token.split('_', 1)[1].lower()

def write_icons(canonical_list, move_to_type, base_dir: Path, out_dir: Path, skip_hms=True):
    out_dir.mkdir(parents=True, exist_ok=True)
    copied = 0
    skipped = 0
    for kind, number, idx, move in canonical_list:
        if skip_hms and kind == 'HM':
            continue

        tkn = move_to_type.get(move)
        if not tkn:
            skipped += 1
            continue

        base_name = type_token_to_basename(tkn)
        src = base_dir / f"{base_name}.png"
        if not src.exists():
            print(f"[warn] Missing base icon for {tkn} ({src}) — skipping {kind} {number:02d if isinstance(number,int) else number} ({move})")
            skipped += 1
            continue

        if kind == 'TM':
            if not isinstance(number, int):
                skipped += 1
                continue
            if number == 0:  # TM00 special case
                dst = out_dir / "tm00.png"
            else:
                dst = out_dir / f"tm{number:03d}.png"
        elif kind == 'TR':
            # TR filenames zero-pad to 2 digits (e.g., tr61.png? choose tr061 for symmetry)
            dst = out_dir / f"tr{number:02d}.png"
        elif kind == 'HM':
            # If you want HM icons too, uncomment this block:
            # dst = out_dir / f"hm{number:02d}.png"
            skipped += 1
            continue
        else:
            skipped += 1
            continue

        shutil.copyfile(src, dst)
        copied += 1

    return copied, skipped


# ---------- CLI ----------
def main():
    ap = argparse.ArgumentParser(description="Generate TM/TR icons by move type.")
    ap.add_argument("--moves", default="armips/data/moves.s", type=Path, help="Path to moves.s")
    ap.add_argument("--machines", default="src/item.c", type=Path, help="File containing sMachineMoves[]")
    ap.add_argument("--base-icons", default="data/graphics/item/base", type=Path, help="Directory with base type icons (e.g., fire.png)")
    ap.add_argument("--out", default="data/graphics/item", type=Path, help="Output directory for generated icons")
    ap.add_argument("--include-hms", action="store_true", help="Also generate HM icons (hmNN.png)")
    args = ap.parse_args()

    move_to_type = parse_moves_file(args.moves)
    machine_moves = load_machine_move_list(args.machines)
    canonical_list = build_canonical_lookup(machine_moves)
    copied, skipped = write_icons(
        canonical_list,
        move_to_type,
        args.base_icons,
        args.out,
        skip_hms=not args.include_hms,
    )
    print(f"Done. Copied: {copied}, Skipped: {skipped}")

if __name__ == "__main__":
    main()
