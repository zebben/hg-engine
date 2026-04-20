#!/usr/bin/env python3
"""
Randomize learnset JSON using UPR-ZX-inspired rules without changing the build
pipeline or runtime code.
"""

from __future__ import annotations

import argparse
import copy
import json
import random
import re
import sys
from dataclasses import dataclass
from pathlib import Path


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parent

DEFAULT_INPUT = REPO_ROOT / "data/learnsets/learnsets.json"
DEFAULT_OUTPUT = REPO_ROOT / "data/learnsets/learnsets.randomized.json"
MOVES_SOURCE = REPO_ROOT / "armips/data/moves.s"
MONDATA_SOURCE = REPO_ROOT / "armips/data/mondata.s"
MACHINE_SOURCE = REPO_ROOT / "src/item.c"
TUTOR_SOURCE = REPO_ROOT / "src/field/move_tutor.c"
FORM_MAPPING_SOURCE = REPO_ROOT / "data/FormToSpeciesMapping.c"
MOVE_LIST_SOURCE = REPO_ROOT / "src/battle/other_battle_calculators.c"

MOVE_NONE = "MOVE_NONE"
MOVE_STRUGGLE = "MOVE_STRUGGLE"

MODE_SAME_TYPE = "same-type"
MODE_RANDOM = "random"

SPLIT_PHYSICAL = "SPLIT_PHYSICAL"
SPLIT_SPECIAL = "SPLIT_SPECIAL"

MIN_DAMAGING_MOVE_POWER = 50

HM_MOVE_TOKENS = {
    "MOVE_CUT",
    "MOVE_FLY",
    "MOVE_SURF",
    "MOVE_STRENGTH",
    "MOVE_WHIRLPOOL",
    "MOVE_ROCK_SMASH",
    "MOVE_WATERFALL",
    "MOVE_ROCK_CLIMB",
    "MOVE_DIVE",
}

SPECIES_ALIASES = {
    # `mondata.s` still uses the old token here.
    "SPECIES_MIME_JR": "SPECIES_MIMEJR",
}

BANNED_RANDOM_MOVES = {
    MOVE_NONE,
    MOVE_STRUGGLE,
}

BANNED_FOR_DAMAGING = {
    "MOVE_SELFDESTRUCT",
    "MOVE_DREAM_EATER",
    "MOVE_EXPLOSION",
    "MOVE_SNORE",
    "MOVE_FALSE_SWIPE",
    "MOVE_FUTURE_SIGHT",
    "MOVE_FAKE_OUT",
    "MOVE_FOCUS_PUNCH",
    "MOVE_DOOM_DESIRE",
    "MOVE_FEINT",
    "MOVE_LAST_RESORT",
    "MOVE_SUCKER_PUNCH",
    "MOVE_CONSTRICT",
    "MOVE_RAGE",
    "MOVE_ROLLOUT",
    "MOVE_ICE_BALL",
    "MOVE_SYNCHRONOISE",
    "MOVE_SHELL_TRAP",
    "MOVE_FOUL_PLAY",
    "MOVE_SPIT_UP",
    "MOVE_SONIC_BOOM",
    "MOVE_DRAGON_RAGE",
    "MOVE_HORN_DRILL",
    "MOVE_GUILLOTINE",
    "MOVE_FISSURE",
    "MOVE_SHEER_COLD",
}

GAME_BREAKING_MOVES = {
    "MOVE_SONIC_BOOM",
    "MOVE_DRAGON_RAGE",
}

AVERAGE_HIT_COUNT_OVERRIDES = {
    "MOVE_ARM_THRUST": 3.0,
    "MOVE_BARRAGE": 3.0,
    "MOVE_BONE_RUSH": 3.0,
    "MOVE_BULLET_SEED": 3.0,
    "MOVE_COMET_PUNCH": 3.0,
    "MOVE_DOUBLE_SLAP": 3.0,
    "MOVE_FURY_ATTACK": 3.0,
    "MOVE_FURY_SWIPES": 3.0,
    "MOVE_ICICLE_SPEAR": 3.0,
    "MOVE_PIN_MISSILE": 3.0,
    "MOVE_ROCK_BLAST": 3.0,
    "MOVE_SPIKE_CANNON": 3.0,
    "MOVE_TAIL_SLAP": 3.0,
    "MOVE_WATER_SHURIKEN": 3.0,
    "MOVE_SCALE_SHOT": 3.0,
    "MOVE_POPULATION_BOMB": 10.0,
    "MOVE_DOUBLE_HIT": 2.0,
    "MOVE_BONEMERANG": 2.0,
    "MOVE_DOUBLE_IRON_BASH": 2.0,
    "MOVE_DOUBLE_KICK": 2.0,
    "MOVE_DRAGON_DARTS": 2.0,
    "MOVE_DUAL_CHOP": 2.0,
    "MOVE_GEAR_GRIND": 2.0,
    "MOVE_TWINEEDLE": 2.0,
    "MOVE_TWIN_BEAM": 2.0,
    "MOVE_SURGING_STRIKES": 3.0,
    "MOVE_TRIPLE_AXEL": 3.0,
    "MOVE_TRIPLE_KICK": 3.0,
}


@dataclass(frozen=True)
class MoveData:
    token: str
    type_token: str
    category_token: str
    power: int
    accuracy: int
    flags: tuple[str, ...]
    order: int
    effective_power: float

    @property
    def is_unimplemented(self) -> bool:
        return "FLAG_UNUSABLE_UNIMPLEMENTED" in self.flags


@dataclass(frozen=True)
class SpeciesData:
    token: str
    type1: str
    type2: str | None
    attack: int
    sp_attack: int

    @property
    def attack_special_attack_ratio(self) -> float:
        total = self.attack + self.sp_attack
        if total <= 0:
            return 0.5
        return self.attack / total


@dataclass
class MovePools:
    valid_moves: list[MoveData]
    valid_damaging_moves: list[MoveData]
    valid_type_moves: dict[str, list[MoveData]]
    valid_type_damaging_moves: dict[str, list[MoveData]]


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Randomize learnsets.json using UPR-ZX-style rules."
    )
    parser.add_argument(
        "--input",
        default=str(DEFAULT_INPUT),
        help="Input learnset JSON file.",
    )
    parser.add_argument(
        "--output",
        default=str(DEFAULT_OUTPUT),
        help="Output learnset JSON file.",
    )
    parser.add_argument(
        "--seed",
        type=int,
        help="Seed for deterministic output. Defaults to a random 32-bit seed.",
    )
    parser.add_argument(
        "--mode",
        choices=[MODE_SAME_TYPE, MODE_RANDOM],
        default=MODE_SAME_TYPE,
        help="Randomize from the full pool or prefer same-type moves.",
    )
    parser.add_argument(
        "--no-levelup",
        action="store_true",
        help="Leave LevelMoves unchanged.",
    )
    parser.add_argument(
        "--no-egg",
        action="store_true",
        help="Leave EggMoves unchanged.",
    )
    parser.add_argument(
        "--randomize-machine",
        action="store_true",
        help="Randomize MachineMoves compatibility using the current machine move table.",
    )
    parser.add_argument(
        "--randomize-tutor",
        action="store_true",
        help="Randomize TutorMoves compatibility using the current tutor move table.",
    )
    parser.add_argument(
        "--guaranteed-starting-moves",
        type=int,
        default=2,
        help="Minimum number of level 1 moves per species. Set to 0 to disable.",
    )
    parser.add_argument(
        "--good-damaging-percent",
        type=int,
        default=25,
        help="Target percentage of non-starting learnset slots that should try to be good damaging moves.",
    )
    parser.add_argument(
        "--no-reorder-damaging",
        action="store_true",
        help="Keep randomized damaging level-up moves in raw random order instead of sorting them by power.",
    )
    parser.add_argument(
        "--allow-broken-moves",
        action="store_true",
        help="Allow otherwise blocked game-breaking moves like Sonic Boom and Dragon Rage.",
    )
    parser.add_argument(
        "--evolution-moves-for-all",
        action="store_true",
        help="Insert a level 0 evolution move slot for species that do not already have one.",
    )
    parser.add_argument(
        "--no-preserve-shared-forms",
        action="store_true",
        help="Do not force originally identical form learnsets to stay aligned with their base form.",
    )
    args = parser.parse_args()

    if args.good_damaging_percent < 0 or args.good_damaging_percent > 100:
        parser.error("--good-damaging-percent must be between 0 and 100")

    if args.guaranteed_starting_moves < 0:
        parser.error("--guaranteed-starting-moves cannot be negative")

    return args


def parse_int(token: str) -> int:
    return int(token.strip().rstrip(","), 0)


def load_move_data(path: Path) -> tuple[dict[str, MoveData], list[str]]:
    move_start_re = re.compile(r"^\s*movedata(?:longname)?\s+(MOVE_[A-Z0-9_]+)\s*,")
    flag_re = re.compile(r"\bFLAG_[A-Z0-9_]+\b")
    type_re = re.compile(r"\bTYPE_[A-Z0-9_]+\b")

    moves: dict[str, MoveData] = {}
    move_order: list[str] = []
    current_move: str | None = None
    fields: dict[str, object] = {}

    with path.open(encoding="utf-8") as handle:
        for raw_line in handle:
            line = raw_line.strip()
            if not line or line.startswith("//"):
                continue

            match = move_start_re.match(line)
            if match:
                current_move = match.group(1)
                fields = {
                    "type_token": "TYPE_NORMAL",
                    "category_token": SPLIT_PHYSICAL,
                    "power": 0,
                    "accuracy": 0,
                    "flags": tuple(),
                }
                move_order.append(current_move)
                continue

            if current_move is None:
                continue

            if line.startswith("pss "):
                fields["category_token"] = line.split(None, 1)[1].strip()
                continue

            if line.startswith("basepower "):
                fields["power"] = parse_int(line.split(None, 1)[1].split()[0])
                continue

            if line.startswith("type "):
                type_match = type_re.search(line)
                if type_match:
                    fields["type_token"] = type_match.group(0)
                continue

            if line.startswith("accuracy "):
                fields["accuracy"] = parse_int(line.split(None, 1)[1].split()[0])
                continue

            if line.startswith("flags "):
                fields["flags"] = tuple(flag_re.findall(line))
                continue

            if line.startswith("terminatedata"):
                effective_power = fields["power"] * AVERAGE_HIT_COUNT_OVERRIDES.get(current_move, 1.0)
                moves[current_move] = MoveData(
                    token=current_move,
                    type_token=str(fields["type_token"]),
                    category_token=str(fields["category_token"]),
                    power=int(fields["power"]),
                    accuracy=int(fields["accuracy"]),
                    flags=tuple(fields["flags"]),
                    order=len(move_order) - 1,
                    effective_power=effective_power,
                )
                current_move = None
                fields = {}

    return moves, move_order


def load_species_data(path: Path) -> dict[str, SpeciesData]:
    mon_start_re = re.compile(r"^\s*mondata\s+(SPECIES_[A-Z0-9_]+)\s*,")
    type_re = re.compile(r"\bTYPE_[A-Z0-9_]+\b")

    species: dict[str, SpeciesData] = {}
    current_species: str | None = None
    attack = 0
    sp_attack = 0
    type1 = "TYPE_NORMAL"
    type2 = "TYPE_NORMAL"

    with path.open(encoding="utf-8") as handle:
        for raw_line in handle:
            line = raw_line.strip()
            if not line or line.startswith("//"):
                continue

            match = mon_start_re.match(line)
            if match:
                if current_species is not None:
                    species[current_species] = SpeciesData(
                        token=current_species,
                        type1=type1,
                        type2=None if type2 == type1 else type2,
                        attack=attack,
                        sp_attack=sp_attack,
                    )

                current_species = match.group(1)
                attack = 0
                sp_attack = 0
                type1 = "TYPE_NORMAL"
                type2 = "TYPE_NORMAL"
                continue

            if current_species is None:
                continue

            if line.startswith("basestats "):
                values = [parse_int(part) for part in line.split(None, 1)[1].split(",")]
                if len(values) == 6:
                    attack = values[1]
                    sp_attack = values[4]
                continue

            if line.startswith("types "):
                types = type_re.findall(line)
                if len(types) >= 2:
                    type1, type2 = types[0], types[1]
                continue

    if current_species is not None:
        species[current_species] = SpeciesData(
            token=current_species,
            type1=type1,
            type2=None if type2 == type1 else type2,
            attack=attack,
            sp_attack=sp_attack,
        )

    return species


def load_machine_moves(path: Path) -> list[str]:
    moves: list[str] = []
    in_array = False
    move_re = re.compile(r"\bMOVE_[A-Z0-9_]+\b")

    with path.open(encoding="utf-8") as handle:
        for raw_line in handle:
            line = raw_line.strip()
            if "static const u16 sMachineMoves[]" in line:
                in_array = True
                continue
            if not in_array:
                continue
            if line.startswith("};"):
                break
            matches = move_re.findall(line)
            moves.extend(matches)

    return moves


def load_tutor_moves(path: Path) -> list[str]:
    moves: list[str] = []
    in_array = False
    move_re = re.compile(r"\bMOVE_[A-Z0-9_]+\b")

    with path.open(encoding="utf-8") as handle:
        for raw_line in handle:
            line = raw_line.strip()
            if line.startswith("TutorMove sTutorMoves[]"):
                in_array = True
                continue
            if not in_array:
                continue
            if line.startswith("};"):
                break
            matches = move_re.findall(line)
            if matches:
                moves.append(matches[0])

    return moves


def load_form_mapping(path: Path) -> dict[str, str]:
    mapping: dict[str, str] = {}
    pattern = re.compile(r"\[(SPECIES_\w+)\s*-\s*SPECIES_MEGA_START\]\s*=\s*(SPECIES_\w+),")

    with path.open(encoding="utf-8") as handle:
        for line in handle:
            match = pattern.search(line)
            if match:
                form_species, base_species = match.groups()
                mapping[form_species] = base_species

    return mapping


def load_move_token_array(path: Path, array_name: str) -> set[str]:
    tokens: set[str] = set()
    in_array = False
    move_re = re.compile(r"\bMOVE_[A-Z0-9_]+\b")

    with path.open(encoding="utf-8") as handle:
        for raw_line in handle:
            line = raw_line.strip()
            if line.startswith(f"const u16 {array_name}[] = {{"):
                in_array = True
                continue
            if not in_array:
                continue
            if line.startswith("};"):
                break
            tokens.update(move_re.findall(line))

    return tokens


def is_good_damaging_move(move: MoveData) -> bool:
    if move.power <= 0:
        return False

    if move.effective_power >= 2 * MIN_DAMAGING_MOVE_POWER:
        return True

    return move.effective_power >= MIN_DAMAGING_MOVE_POWER and (move.accuracy >= 90 or move.accuracy == 0)


def has_unused_move(pool: list[MoveData], learned: set[str]) -> bool:
    for move in pool:
        if move.token not in learned:
            return True
    return False


def choose_same_type(species: SpeciesData, rng: random.Random) -> str | None:
    picked = rng.random()
    primary = species.type1
    secondary = species.type2

    if secondary and (primary == "TYPE_NORMAL" or secondary == "TYPE_NORMAL"):
        other_type = secondary if primary == "TYPE_NORMAL" else primary
        if picked < 0.1:
            return "TYPE_NORMAL"
        if picked < 0.4:
            return other_type
        return None

    if secondary:
        if picked < 0.2:
            return primary
        if picked < 0.4:
            return secondary
        return None

    if picked < 0.4:
        return primary
    return None


def build_move_pools(
    move_data: dict[str, MoveData],
    ordered_tokens: list[str],
    allowed_tokens: set[str],
    block_broken_moves: bool,
    rng: random.Random,
    banned_extra: set[str] | None = None,
) -> MovePools:
    valid_moves: list[MoveData] = []
    valid_damaging_moves: list[MoveData] = []
    valid_type_moves: dict[str, list[MoveData]] = {}
    valid_type_damaging_moves: dict[str, list[MoveData]] = {}

    all_banned = set(banned_extra or set())
    if block_broken_moves:
        all_banned.update(GAME_BREAKING_MOVES)

    for token in ordered_tokens:
        if token not in allowed_tokens:
            continue

        move = move_data[token]
        if token in BANNED_RANDOM_MOVES:
            continue
        if token in all_banned:
            continue
        if move.is_unimplemented:
            continue

        valid_moves.append(move)
        valid_type_moves.setdefault(move.type_token, []).append(move)

        if token not in BANNED_FOR_DAMAGING and is_good_damaging_move(move):
            valid_damaging_moves.append(move)
            valid_type_damaging_moves.setdefault(move.type_token, []).append(move)

    balance_type_move_pools(valid_type_moves, rng)

    return MovePools(
        valid_moves=valid_moves,
        valid_damaging_moves=valid_damaging_moves,
        valid_type_moves=valid_type_moves,
        valid_type_damaging_moves=valid_type_damaging_moves,
    )


def balance_type_move_pools(type_pools: dict[str, list[MoveData]], rng: random.Random) -> None:
    avg_type_powers: dict[str, float] = {}
    total_avg_power = 0.0

    for type_token, moves in type_pools.items():
        attacking_sum = sum(move.effective_power for move in moves if move.power > 0)
        avg_power = attacking_sum / len(moves)
        avg_type_powers[type_token] = avg_power
        total_avg_power += avg_power

    if not avg_type_powers:
        return

    total_avg_power /= len(avg_type_powers)
    min_avg = total_avg_power * 0.75
    max_avg = total_avg_power * 1.25

    for type_token, avg_power in avg_type_powers.items():
        type_moves = type_pools[type_token]
        already_picked: list[MoveData] = []
        iterations = 0

        while avg_power < min_avg and iterations < 10000:
            stronger = [move for move in type_moves if move.effective_power > avg_power]
            if not stronger:
                break

            if all(move in already_picked for move in stronger):
                already_picked = []
            else:
                stronger = [move for move in stronger if move not in already_picked]

            extra_move = rng.choice(stronger)
            avg_power = ((avg_power * len(type_moves)) + extra_move.effective_power) / (len(type_moves) + 1)
            type_moves.append(extra_move)
            already_picked.append(extra_move)
            iterations += 1

        iterations = 0
        while avg_power > max_avg and iterations < 10000:
            weaker = [move for move in type_moves if move.effective_power < avg_power]
            if not weaker:
                break

            if all(move in already_picked for move in weaker):
                already_picked = []
            else:
                weaker = [move for move in weaker if move not in already_picked]

            extra_move = rng.choice(weaker)
            avg_power = ((avg_power * len(type_moves)) + extra_move.effective_power) / (len(type_moves) + 1)
            type_moves.append(extra_move)
            already_picked.append(extra_move)
            iterations += 1


def choose_move(
    species: SpeciesData,
    pools: MovePools,
    mode: str,
    learned: set[str],
    attempt_damaging: bool,
    rng: random.Random,
) -> str:
    chosen_type: str | None = None
    if mode == MODE_SAME_TYPE:
        chosen_type = choose_same_type(species, rng)

    pick_list = pools.valid_moves
    if attempt_damaging:
        if chosen_type and has_unused_move(pools.valid_type_damaging_moves.get(chosen_type, []), learned):
            pick_list = pools.valid_type_damaging_moves[chosen_type]
        elif has_unused_move(pools.valid_damaging_moves, learned):
            pick_list = pools.valid_damaging_moves

        forced_category = SPLIT_PHYSICAL if rng.random() < species.attack_special_attack_ratio else SPLIT_SPECIAL
        filtered = [move for move in pick_list if move.category_token == forced_category and move.token not in learned]
        if filtered:
            pick_list = filtered
    elif chosen_type and has_unused_move(pools.valid_type_moves.get(chosen_type, []), learned):
        pick_list = pools.valid_type_moves[chosen_type]

    candidates = [move for move in pick_list if move.token not in learned]
    if not candidates:
        candidates = [move for move in pools.valid_moves if move.token not in learned]
    if not candidates:
        raise RuntimeError(f"No available moves left while randomizing {species.token}")

    return rng.choice(candidates).token


def randomize_level_moves(
    level_moves: list[dict[str, object]],
    species: SpeciesData,
    pools: MovePools,
    mode: str,
    guaranteed_starting_moves: int,
    good_damaging_percent: int,
    evolution_moves_for_all: bool,
    reorder_damaging: bool,
    move_data: dict[str, MoveData],
    rng: random.Random,
) -> list[dict[str, object]]:
    randomized = copy.deepcopy(level_moves)

    if guaranteed_starting_moves > 0:
        lv1_count = sum(1 for move in randomized if move.get("Level") == 1)
        for _ in range(max(0, guaranteed_starting_moves - lv1_count)):
            randomized.insert(0, {"Level": 1, "Move": MOVE_NONE})

    if evolution_moves_for_all and (not randomized or randomized[0].get("Level") != 0):
        randomized.insert(0, {"Level": 0, "Move": MOVE_NONE})

    if not randomized:
        return randomized

    lv1_index = 0 if randomized[0].get("Level") == 1 else 1
    while lv1_index < len(randomized) and randomized[lv1_index].get("Level") == 1:
        lv1_index += 1
    if lv1_index != 0:
        lv1_index -= 1

    good_damaging_left = round((good_damaging_percent / 100.0) * len(randomized))
    learned: list[str] = []
    learned_set: set[str] = set()
    lv1_attacking_move: str | None = None

    for index in range(len(randomized)):
        attempt_damaging = index == lv1_index or good_damaging_left > 0
        move_token = choose_move(species, pools, mode, learned_set, attempt_damaging, rng)
        learned.append(move_token)
        learned_set.add(move_token)

        if index == lv1_index:
            lv1_attacking_move = move_token
        else:
            good_damaging_left -= 1

    rng.shuffle(learned)

    if lv1_attacking_move and learned[lv1_index] != lv1_attacking_move:
        swap_index = learned.index(lv1_attacking_move)
        learned[swap_index], learned[lv1_index] = learned[lv1_index], learned[swap_index]

    for index, move_token in enumerate(learned):
        randomized[index]["Move"] = move_token
        if index == lv1_index:
            randomized[index]["Level"] = 1

    if reorder_damaging:
        reorder_levelup_damaging_moves(randomized, move_data, rng)

    return randomized


def reorder_levelup_damaging_moves(
    level_moves: list[dict[str, object]],
    move_data: dict[str, MoveData],
    rng: random.Random,
) -> None:
    damaging_indices: list[int] = []
    damaging_tokens: list[str] = []

    for index, entry in enumerate(level_moves):
        if entry.get("Level") == 0:
            continue
        move = move_data.get(str(entry.get("Move")))
        if move and move.power > 1:
            damaging_indices.append(index)
            damaging_tokens.append(move.token)

    rng.shuffle(damaging_tokens)
    damaging_tokens.sort(key=lambda token: move_data[token].effective_power)

    for index, move_token in zip(damaging_indices, damaging_tokens):
        level_moves[index]["Move"] = move_token


def randomize_flat_moves(
    original_moves: list[str],
    species: SpeciesData,
    pools: MovePools,
    mode: str,
    good_damaging_percent: int,
    rng: random.Random,
    sort_order: dict[str, int] | None = None,
) -> list[str]:
    if not original_moves:
        return []

    target_count = min(len(original_moves), len({move.token for move in pools.valid_moves}))
    good_damaging_left = round((good_damaging_percent / 100.0) * target_count)
    learned: list[str] = []
    learned_set: set[str] = set()

    for _ in range(target_count):
        attempt_damaging = good_damaging_left > 0
        move_token = choose_move(species, pools, mode, learned_set, attempt_damaging, rng)
        learned.append(move_token)
        learned_set.add(move_token)
        good_damaging_left -= 1

    if sort_order is not None:
        learned.sort(key=lambda token: sort_order[token])
    else:
        rng.shuffle(learned)

    return learned


def preserve_shared_form_sections(
    randomized: dict[str, dict[str, object]],
    original: dict[str, dict[str, object]],
    form_mapping: dict[str, str],
    randomized_sections: set[str],
) -> None:
    for form_species, base_species in form_mapping.items():
        if form_species not in randomized or base_species not in randomized:
            continue
        if form_species not in original or base_species not in original:
            continue

        for section in randomized_sections:
            if original[form_species].get(section) == original[base_species].get(section):
                randomized[form_species][section] = copy.deepcopy(randomized[base_species].get(section, []))


def build_sort_order(tokens: list[str]) -> dict[str, int]:
    return {token: index for index, token in enumerate(tokens)}


def main() -> int:
    args = parse_args()

    seed = args.seed if args.seed is not None else random.SystemRandom().randrange(0, 2**32)
    rng = random.Random(seed)

    input_path = Path(args.input)
    output_path = Path(args.output)

    with input_path.open(encoding="utf-8") as handle:
        learnsets = json.load(handle)

    original_learnsets = copy.deepcopy(learnsets)

    move_data, move_order = load_move_data(MOVES_SOURCE)
    species_data = load_species_data(MONDATA_SOURCE)
    machine_moves = load_machine_moves(MACHINE_SOURCE)
    tutor_moves = load_tutor_moves(TUTOR_SOURCE)
    form_mapping = load_form_mapping(FORM_MAPPING_SOURCE)
    z_moves = load_move_token_array(MOVE_LIST_SOURCE, "ZMoveList")
    max_moves = load_move_token_array(MOVE_LIST_SOURCE, "MaxMoveList")

    global_allowed = set(move_order)
    global_allowed -= HM_MOVE_TOKENS
    banned_extra = z_moves | max_moves

    level_egg_pools = build_move_pools(
        move_data,
        move_order,
        global_allowed,
        block_broken_moves=not args.allow_broken_moves,
        rng=rng,
        banned_extra=banned_extra,
    )

    machine_sort_order = build_sort_order(machine_moves)
    tutor_sort_order = build_sort_order(tutor_moves)

    machine_pools = build_move_pools(
        move_data,
        move_order,
        set(machine_moves),
        block_broken_moves=not args.allow_broken_moves,
        rng=rng,
        banned_extra=banned_extra,
    ) if args.randomize_machine else None

    tutor_pools = build_move_pools(
        move_data,
        move_order,
        set(tutor_moves),
        block_broken_moves=not args.allow_broken_moves,
        rng=rng,
        banned_extra=banned_extra,
    ) if args.randomize_tutor else None

    randomized_sections: set[str] = set()
    missing_species: list[str] = []

    for species_token, sections in learnsets.items():
        species = species_data.get(species_token)
        if species is None and species_token in SPECIES_ALIASES:
            species = species_data.get(SPECIES_ALIASES[species_token])
        if species is None:
            missing_species.append(species_token)
            continue

        if not args.no_levelup:
            sections["LevelMoves"] = randomize_level_moves(
                sections.get("LevelMoves", []),
                species,
                level_egg_pools,
                args.mode,
                args.guaranteed_starting_moves,
                args.good_damaging_percent,
                args.evolution_moves_for_all,
                not args.no_reorder_damaging,
                move_data,
                rng,
            )
            randomized_sections.add("LevelMoves")

        if not args.no_egg:
            sections["EggMoves"] = randomize_flat_moves(
                sections.get("EggMoves", []),
                species,
                level_egg_pools,
                args.mode,
                args.good_damaging_percent,
                rng,
            )
            randomized_sections.add("EggMoves")

        if args.randomize_machine and machine_pools is not None:
            sections["MachineMoves"] = randomize_flat_moves(
                sections.get("MachineMoves", []),
                species,
                machine_pools,
                args.mode,
                args.good_damaging_percent,
                rng,
                sort_order=machine_sort_order,
            )
            randomized_sections.add("MachineMoves")

        if args.randomize_tutor and tutor_pools is not None:
            sections["TutorMoves"] = randomize_flat_moves(
                sections.get("TutorMoves", []),
                species,
                tutor_pools,
                args.mode,
                args.good_damaging_percent,
                rng,
                sort_order=tutor_sort_order,
            )
            randomized_sections.add("TutorMoves")

    if not args.no_preserve_shared_forms and randomized_sections:
        preserve_shared_form_sections(learnsets, original_learnsets, form_mapping, randomized_sections)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="utf-8") as handle:
        json.dump(learnsets, handle, indent=2)
        handle.write("\n")

    print(f"Seed: {seed}")
    print(f"Output: {output_path}")
    print(f"Mode: {args.mode}")
    print(
        "Sections: "
        + ", ".join(
            section
            for section, enabled in (
                ("levelup", not args.no_levelup),
                ("egg", not args.no_egg),
                ("machine", args.randomize_machine),
                ("tutor", args.randomize_tutor),
            )
            if enabled
        )
    )

    if missing_species:
        print(
            f"Warning: skipped {len(missing_species)} species without metadata",
            file=sys.stderr,
        )

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
