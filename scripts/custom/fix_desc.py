#!/usr/bin/env python3
import re
from pathlib import Path
import argparse

# ---------------------------
# Parse moves.s -> MOVE_* : movedescription (with literal \n)
# ---------------------------
def parse_moves_descriptions(moves_s: Path):
    """
    Parse all `movedescription MOVE_XXX, "..."` lines anywhere in the file.
    Keeps literal \n sequences (single-line entry per msg text file).
    """
    descs = {}  # MOVE_* -> 'text with \n escapes'
    desc_re = re.compile(r'^movedescription\s+(\w+),\s*"(.*)"')

    with moves_s.open(encoding="utf-8") as f:
        for raw in f:
            line = raw.strip()
            if not line or line.startswith("//"):
                continue
            m = desc_re.match(line)
            if m:
                move_token, text = m.group(1), m.group(2)
                descs[move_token] = text
    return descs


# ---------------------------
# Load sMachineMoves[] -> list of MOVE_* in array order
# ---------------------------
def load_machine_move_list(file_path: Path):
    move_list = []
    in_array = False
    move_pattern = re.compile(r'\bMOVE_[A-Z0-9_]+')

    with file_path.open(encoding='utf-8') as f:
        for line in f:
            s = line.strip()
            if 'static const u16 sMachineMoves[]' in s:
                in_array = True
                continue
            if in_array:
                if '};' in s:
                    break
                move_list.extend(move_pattern.findall(s))
    return move_list


# ---------------------------
# Parse item IDs from include/constants/item.h
# ---------------------------
def load_item_ids(header_path: Path):
    items = {}
    pat = re.compile(r'#define\s+(ITEM_[A-Z0-9_]+)\s+(\d+)')
    with header_path.open(encoding="utf-8") as f:
        for line in f:
            m = pat.match(line.strip())
            if m:
                items[m.group(1)] = int(m.group(2))
    return items


# ---------------------------
# C macro ports: ITEM_GENERATION / ITEM_MSG_OFFSET
# ---------------------------
CUSTOM = 9999

def item_generation(item_id, C):
    if item_id <= C["ITEM_ENIGMA_STONE"]: return 4
    if item_id <= C["ITEM_REVEAL_GLASS"]: return 5
    if item_id <= C["ITEM_EON_FLUTE"]:    return 6
    if item_id <= C["ITEM_UNKNOWN_1073"]: return 7
    if item_id <= C["ITEM_LEGEND_PLATE"]: return 8
    if item_id <= C["ITEM_BRIARS_BOOK"]:  return 9
    return CUSTOM

def item_msg_offset(item_id, C):
    if item_id <= C["ITEM_ENIGMA_STONE"]:
        return item_id
    if item_id <= C["ITEM_REVEAL_GLASS"]:
        return item_id - (C["ITEM_ENIGMA_STONE"] + 1)
    if item_id <= C["ITEM_EON_FLUTE"]:
        return item_id - (C["ITEM_REVEAL_GLASS"] + 1)
    if item_id <= C["ITEM_UNKNOWN_1073"]:
        return item_id - (C["ITEM_EON_FLUTE"] + 1)
    if item_id <= C["ITEM_LEGEND_PLATE"]:
        return item_id - (C["ITEM_UNKNOWN_1073"] + 1)
    if item_id <= C["ITEM_BRIARS_BOOK"]:
        return item_id - (C["ITEM_LEGEND_PLATE"] + 1)
    return item_id - (C["ITEM_BRIARS_BOOK"] + 1)

MSG_DATA_ITEM_DESCRIPTION = {
    4: 830, 5: 834, 6: 838, 7: 842, 8: 846, 9: 850, CUSTOM: 221
}


# ---------------------------
# Port of ItemToMachineMoveIndex (using real IDs if present)
# ---------------------------
def build_item_to_index_fn(C):
    # Gracefully handle missing blocks by disabling them
    def has(*names): return all(n in C for n in names)

    ranges = []

    if has("ITEM_TM001","ITEM_HM08"):
        ranges.append(("A", C["ITEM_TM001"], C["ITEM_HM08"], lambda x: x - C["ITEM_TM001"]))
    if has("ITEM_HM07_ORAS"):
        hm07_oras_id = C["ITEM_HM07_ORAS"]
    else:
        hm07_oras_id = None
    if has("ITEM_TM00"):
        tm00_id = C["ITEM_TM00"]
    else:
        tm00_id = None
    if has("ITEM_TM093","ITEM_TM095"):
        ranges.append(("B", C["ITEM_TM093"], C["ITEM_TM095"], lambda x: x - C["ITEM_TM093"] + 102))
    if has("ITEM_TM096","ITEM_TM100"):
        ranges.append(("C", C["ITEM_TM096"], C["ITEM_TM100"], lambda x: x - C["ITEM_TM096"] + 105))
    if has("ITEM_TM100_SV","ITEM_TM229"):
        ranges.append(("D", C["ITEM_TM100_SV"], C["ITEM_TM229"], lambda x: x - C["ITEM_TM100_SV"] + 110))
    if has("ITEM_TR00","ITEM_TR99"):
        ranges.append(("E", C["ITEM_TR00"], C["ITEM_TR99"], lambda x: x - C["ITEM_TR00"] + 240))

    def f(item_id):
        if has("ITEM_TM001","ITEM_HM08") and C["ITEM_TM001"] <= item_id <= C["ITEM_HM08"]:
            return item_id - C["ITEM_TM001"]
        if hm07_oras_id is not None and item_id == hm07_oras_id:
            return 100
        if tm00_id is not None and item_id == tm00_id:
            return 101
        for _, lo, hi, trans in ranges:
            if lo <= item_id <= hi:
                return trans(item_id)
        return None
    return f


# ---------------------------
# Build reverse map: index -> (item_name, item_id)
# by scanning all ITEM_TM*, ITEM_HM*, ITEM_TR* constants and applying the index fn
# ---------------------------
def collect_machine_items(items, item_to_index):
    out = {}
    for name, iid in items.items():
        # accept ITEM_TM*, ITEM_HM*, ITEM_TR* (with any suffixes)
        if not (name.startswith("ITEM_TM") or name.startswith("ITEM_HM") or name.startswith("ITEM_TR")):
            continue
        idx = item_to_index(iid)
        if idx is not None:
            # last one wins if there are alias constants; that’s fine for our purpose
            out[idx] = (name, iid)
    return out


# ---------------------------
# Update a specific line (1-indexed) in data/text/<file_id>.txt
# Pad with empty lines if needed. Keep UTF-8.
# ---------------------------
def write_description_line(text_root: Path, file_id: int, line_num_1idx: int, text: str):
    path = text_root / f"{file_id}.txt"
    lines = []
    if path.exists():
        with path.open(encoding="utf-8") as f:
            lines = f.read().splitlines()
    # ensure capacity
    while len(lines) < line_num_1idx:
        lines.append("")
    # set line (keep single-line entry with literal \n inside)
    lines[line_num_1idx - 1] = text
    with path.open("w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(lines) + "\n")


# ---------------------------
# Main flow
# ---------------------------
def main():
    ap = argparse.ArgumentParser(description="Write TM/TR item descriptions from moves.s movedescription fields.")
    ap.add_argument("--moves", default="armips/data/moves.s", type=Path)
    ap.add_argument("--machines", default="src/item.c", type=Path)
    ap.add_argument("--items-header", default="include/constants/item.h", type=Path)
    ap.add_argument("--text-root", default="data/text", type=Path)
    ap.add_argument("--dry-run", action="store_true", help="Show actions without writing files")
    ap.add_argument("--include-hms", action="store_true", help="Also update HM descriptions")
    args = ap.parse_args()

    # 1) Parse sources
    move_desc = parse_moves_descriptions(args.moves)
    machine_moves = load_machine_move_list(args.machines)
    items = load_item_ids(args.items_header)

    # 2) Build item->index and index->item maps
    item_to_index = build_item_to_index_fn(items)
    index_to_item = collect_machine_items(items, item_to_index)

    # 3) For each machine index in canonical order, write description
    wrote = 0
    skipped = 0
    for idx, move in enumerate(machine_moves):
        if idx not in index_to_item:
            # array entry with no corresponding item constant in your header
            skipped += 1
            continue

        item_name, item_id = index_to_item[idx]

        # Skip HMs unless requested
        if not args.include_hms and item_name.startswith("ITEM_HM"):
            continue

        # Use move's movedescription text
        desc = move_desc.get(move)
        if not desc:
            # No description in moves.s for this move
            skipped += 1
            continue

        # Compute message file and line
        gen = item_generation(item_id, items)
        file_id = MSG_DATA_ITEM_DESCRIPTION[gen]
        offset0 = item_msg_offset(item_id, items)
        line_num = offset0 + 1  # 1-indexed lines

        if args.dry_run:
            print(f"[dry] {item_name} (id={item_id}) idx={idx} -> file {file_id} line {line_num} := {move} :: {desc[:60]}{'...' if len(desc)>60 else ''}")
        else:
            write_description_line(args.text_root, file_id, line_num, desc)
            wrote += 1

    
    print(f"machine_moves: {len(machine_moves)}")
    print(f"index_to_item coverage: {len(index_to_item)} indices")
    if not args.dry_run:
        print(f"Done. Wrote {wrote} descriptions. Skipped {skipped} entries.")

if __name__ == "__main__":
    main()
