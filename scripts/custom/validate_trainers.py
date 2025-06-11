import re

TRAINERS_S_FILEPATH = '../../armips/data/trainers/trainers.s'
PRINT_TEAM_ON_ERROR = False

def parse_trainers(file_path):
    with open(file_path, 'r') as f:
        lines = f.readlines()

    trainers = {}
    trainer_id = None
    trainer = {}
    in_trainerdata = False
    in_party = False
    current_mon = []
    mon_list = []

    for line in lines:
        stripped = line.split("//")[0].strip()

        if not stripped:
            continue

        if stripped.startswith("trainerdata"):
            match = re.match(r'trainerdata\s+(\d+),\s*"([^"]+)"', stripped)
            if match:
                trainer_id = int(match.group(1))
                trainer = {
                    "id": trainer_id,
                    "name": match.group(2),
                    "trainermontype": "",
                    "nummons": 0,
                    "party": []
                }
                in_trainerdata = True
            continue

        if in_trainerdata:
            if stripped.startswith("trainermontype"):
                trainer["trainermontype"] = stripped.split("trainermontype")[1].strip()
            elif stripped.startswith("nummons"):
                trainer["nummons"] = int(stripped.split("nummons")[1].strip())
            elif stripped == "endentry":
                trainers[trainer_id] = trainer
                trainer = {}
                in_trainerdata = False
            continue

        if stripped.startswith("party"):
            if in_party:
                print(f"encountered unexpected 'party' tag before closure with 'endparty'. inspect your trainers.s file before trainer {trainer_id}")

            match = re.match(r'party\s+(\d+)', stripped)
            if match:
                party_trainer_id = int(match.group(1))
                if party_trainer_id in trainers:
                    in_party = True
                    mon_list = []
                    current_mon = []
            continue

        if in_party:
            if stripped.startswith("ivs"):
                if current_mon:
                    mon_list.append(current_mon)
                current_mon = [stripped]
                continue
            elif stripped == "endparty":
                if current_mon:
                    mon_list.append(current_mon)

                parsed_mons = []
                for mon in mon_list:
                    mon_dict = {}
                    move_count = 1
                    for line in mon:
                        kv = re.match(r'(\w+)\s+(.+)', line)
                        if kv:
                            key, value = kv.groups()
                            if key == "move":
                                mon_dict[f"move{move_count}"] = value
                                move_count += 1
                            else:
                                mon_dict[key] = value
                    parsed_mons.append(mon_dict)

                trainers[party_trainer_id]["party"] = parsed_mons
                trainer_id = None
                in_party = False
                mon_list = []
                current_mon = []
                continue
            else:
                if not current_mon:
                    print(f"encountered unexpected line {stripped}. inspect your trainers.s file at trainer {trainer_id}. 'ivs' should be the first attribute listed for each pokémon")
                current_mon.append(stripped)

    return list(trainers.values())


def validate_mon_field_order(mon, trainer_id, mon_index):
    correct_order = [
        "ivs", "abilityslot", "level", "pokemon", "item",
        "move1", "move2", "move3", "move4",
        "ability", "setivs", "setevs", "nature",
        "shinylock", "additionalflags", "ballseal"
    ]

    actual_order = []
    for field in mon.keys():
        if field.startswith("move"):
            # Normalize all move fields to the position of move1
            actual_order.append((field, correct_order.index("move1")))
        elif field in correct_order:
            actual_order.append((field, correct_order.index(field)))

    indices = [idx for _, idx in actual_order]

    if indices != sorted(indices):
        print(f"Trainer ID {trainer_id} - mon {mon_index}: Field order is incorrect.")
        print("  Found order:", [f for f, _ in actual_order])
        print("  Expected order (if present):", correct_order)
        return False
    return True


def validate_trainers(trainers, print_team):
    for trainer in trainers:
        if trainer["id"] == 0:
            continue

        any_error = False
        party = trainer["party"]

        # Item validation
        has_items_flag = 'TRAINER_DATA_TYPE_ITEMS' in trainer["trainermontype"]
        all_have_items = all("item" in mon for mon in party)
        any_have_items = any("item" in mon for mon in party)

        if has_items_flag and not all_have_items:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) has TRAINER_DATA_TYPE_ITEMS flag but not all party pokémon have an item defined")
            any_error = True
        elif not has_items_flag and any_have_items:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) does not have the TRAINER_DATA_TYPE_ITEMS flag but some party pokémon have an item defined")
            any_error = True

        # Move validation
        has_moves_flag = 'TRAINER_DATA_TYPE_MOVES' in trainer["trainermontype"]
        all_have_moves = all("move4" in mon for mon in party)
        any_have_moves = any("move1" in mon for mon in party)
        any_have_extra_moves = any("move5" in mon for mon in party)

        if has_moves_flag and not all_have_moves:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) has TRAINER_DATA_TYPE_MOVES flag but not all party pokémon have four moves defined")
            any_error = True
        elif not has_moves_flag and any_have_moves:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) does not have the TRAINER_DATA_TYPE_MOVES flag but some party pokémon have move(s) defined")
            any_error = True

        if has_moves_flag and any_have_extra_moves:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) mon {i} has {len(move_keys)} moves but should have 4")

        # Ability validation
        has_ability_flag = 'TRAINER_DATA_TYPE_ABILITY' in trainer["trainermontype"]
        all_have_ability = all("ability" in mon for mon in party)
        any_have_ability = any("ability" in mon for mon in party)

        if has_ability_flag and not all_have_ability:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) has TRAINER_DATA_TYPE_ABILITY flag but not all party pokémon have an ability defined")
            any_error = True
        elif not has_ability_flag and any_have_ability:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) does not have the TRAINER_DATA_TYPE_ABILITY flag but some party pokémon have an ability defined")
            any_error = True

        # Nature validation
        has_nature_flag = 'TRAINER_DATA_TYPE_NATURE_SET' in trainer["trainermontype"]
        all_have_nature = all("nature" in mon for mon in party)
        any_have_nature = any("nature" in mon for mon in party)

        if has_nature_flag and not all_have_nature:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) has TRAINER_DATA_TYPE_NATURE_SET flag but not all party pokémon have a nature defined")
            any_error = True
        elif not has_nature_flag and any_have_nature:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) does not have the TRAINER_DATA_TYPE_NATURE_SET flag but some party pokémon have a nature defined")
            any_error = True

        # EV/IV validation
        has_ev_iv_flag = 'TRAINER_DATA_TYPE_IV_EV_SET' in trainer["trainermontype"]
        all_have_ev = all("setevs" in mon for mon in party)
        any_have_ev = any("setevs" in mon for mon in party)
        all_have_iv = all("setivs" in mon for mon in party)
        any_have_iv = any("setivs" in mon for mon in party)

        if has_ev_iv_flag and not all_have_ev:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) has TRAINER_DATA_TYPE_IV_EV_SET flag but not all party pokémon have EVs defined")
            any_error = True
        if not has_ev_iv_flag and any_have_ev:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) does not have the TRAINER_DATA_TYPE_IV_EV_SET flag but some party pokémon have EVs defined")
            any_error = True
        if has_ev_iv_flag and not all_have_iv:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) has TRAINER_DATA_TYPE_IV_EV_SET flag but not all party pokémon have IVs defined")
            any_error = True
        if not has_ev_iv_flag and any_have_iv:
            print(f"{trainer['name']} (id: {trainer['id']}, flags: {trainer['trainermontype']}) does not have the TRAINER_DATA_TYPE_IV_EV_SET flag but some party pokémon have IVs defined")
            any_error = True

        # Party size validation
        if len(party) != trainer["nummons"]:
            print(f"{trainer['name']} (id: {trainer['id']}, nummons: {trainer['nummons']}) has {len(party)} pokémon defined")
            any_error = True

        # Field order validation
        for i, mon in enumerate(party):
            if not validate_mon_field_order(mon, trainer["id"], i):
                any_error = True

        if any_error and print_team:
            print(f'------- Start Party {trainer["id"]} -------')
            for pokemon in party:
                for k, v in pokemon.items():
                    print(f"{k}: {v}")
                print("\n")
            print(f'------- End Party {trainer["id"]} -------')


if __name__ == "__main__":
    parsed_trainers = parse_trainers(TRAINERS_S_FILEPATH)
    validate_trainers(parsed_trainers, PRINT_TEAM_ON_ERROR)