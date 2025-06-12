import os
import re
from html import escape
from collections import defaultdict, deque
import math

TRAINER_INPUT = "../../armips/data/trainers/trainers.s"
TRAINER_OUTPUT_DIR = "../../docs/trainers"
TRAINER_INDEX_PATH = "../../docs/trainers/index.html"
POKEMON_SPRITE_PATH = "../pokedex/sprites"
SPECIES_PATH = "../../include/constants/species.h"
FORM_TABLE_PATH = "../../data/FormToSpeciesMapping.c"
MON_DATA_PATH = "../../armips/data/mondata.s"

NATURE_MODIFIERS = {
    "NATURE_HARDY":    (None, None),
    "NATURE_LONELY":   ("Attack", "Defense"),
    "NATURE_BRAVE":    ("Attack", "Speed"),
    "NATURE_ADAMANT":  ("Attack", "Sp. Atk"),
    "NATURE_NAUGHTY":  ("Attack", "Sp. Def"),
    "NATURE_BOLD":     ("Defense", "Attack"),
    "NATURE_DOCILE":   (None, None),
    "NATURE_RELAXED":  ("Defense", "Speed"),
    "NATURE_IMPISH":   ("Defense", "Sp. Atk"),
    "NATURE_LAX":      ("Defense", "Sp. Def"),
    "NATURE_TIMID":    ("Speed", "Attack"),
    "NATURE_HASTY":    ("Speed", "Defense"),
    "NATURE_SERIOUS":  (None, None),
    "NATURE_JOLLY":    ("Speed", "Sp. Atk"),
    "NATURE_NAIVE":    ("Speed", "Sp. Def"),
    "NATURE_MODEST":   ("Sp. Atk", "Attack"),
    "NATURE_MILD":     ("Sp. Atk", "Defense"),
    "NATURE_QUIET":    ("Sp. Atk", "Speed"),
    "NATURE_BASHFUL":  (None, None),
    "NATURE_RASH":     ("Sp. Atk", "Sp. Def"),
    "NATURE_CALM":     ("Sp. Def", "Attack"),
    "NATURE_GENTLE":   ("Sp. Def", "Defense"),
    "NATURE_SASSY":    ("Sp. Def", "Speed"),
    "NATURE_CAREFUL":  ("Sp. Def", "Sp. Atk"),
    "NATURE_QUIRKY":   (None, None),
}

STAT_NAMES = ["HP", "Attack", "Defense", "Sp. Atk", "Sp. Def", "Speed"]


def parse_species_header(filepath):
    species_order = []
    with open(filepath) as f:
        for line in f:
            match = re.match(r'#define\s+(SPECIES_[A-Z][A-Z0-9_]+)\s+', line)
            if match and match.group(1) != 'SPECIES_NONE':
                species_order.append(match.group(1))
    return species_order


def parse_form_mapping(filepath):
    pattern = re.compile(
        r'\[\s*(SPECIES_[A-Z0-9_]+)\s*-\s*(SPECIES_[A-Z0-9_]+)\s*\]\s*=\s*(SPECIES_[A-Z0-9_]+)\s*,?'
    )
    form_to_base = {}

    with open(filepath, "r") as f:
        content = f.read()

    for match in pattern.finditer(content):
        form_species = match.group(1)     # e.g. SPECIES_MEGA_VENUSAUR
        form_group_start = match.group(2) # e.g. SPECIES_MEGA_START (currently unused)
        base_species = match.group(3)     # e.g. SPECIES_VENUSAUR
        form_to_base[form_species] = base_species

    form_to_base["SPECIES_ROTOM_HEAT"] = "SPECIES_ROTOM"
    form_to_base["SPECIES_ROTOM_WASH"] = "SPECIES_ROTOM"
    form_to_base["SPECIES_ROTOM_FROST"] = "SPECIES_ROTOM"
    form_to_base["SPECIES_ROTOM_FAN"] = "SPECIES_ROTOM"
    form_to_base["SPECIES_ROTOM_MOW"] = "SPECIES_ROTOM"

    form_to_base["SPECIES_WORMADAM_SANDY"] = "SPECIES_WORMADAM"
    form_to_base["SPECIES_WORMADAM_TRASHY"] = "SPECIES_WORMADAM"

    form_to_base["SPECIES_SHAYMIN_SKY"] = "SPECIES_SHAYMIN"

    return form_to_base


def assign_form_indexes(species_list, form_species):
    # Group by base species prefix
    form_groups = defaultdict(list)

    for species in species_list:
        if species in form_species:
            base = form_species[species]
            form_groups[base].append(species)
        else:
            form_groups[species].append(species)


    # Assign form indexes and return the final dict
    form_dict = {}
    for base, forms in form_groups.items():
        for idx, form in enumerate(forms, start=0):
            form_dict[(base, idx)] = form
    return form_dict


def parse_mondata(filepath):
    monstats = {}
    current_species = None

    with open(filepath, "r") as f:
        for line in f:
            line = line.split("//")[0].strip()
            if not line:
                continue

            if line.startswith("mondata"):
                match = re.match(r"mondata\s+(SPECIES_\w+),", line)
                if match:
                    current_species = match.group(1).upper()

            elif "basestats" in line and current_species:
                stat_match = re.search(r'basestats\s+(\d+),\s*(\d+),\s*(\d+),\s*(\d+),\s*(\d+),\s*(\d+)', line)
                if stat_match:
                    hp, atk, defn, spd, spatk, spdef = map(int, stat_match.groups())
                    monstats[current_species] = {
                        "HP": hp,
                        "Attack": atk,
                        "Defense": defn,
                        "Speed": spd,
                        "Sp. Atk": spatk,
                        "Sp. Def": spdef,
                        "abilities": [],
                        "types": []
                    }

            elif "abilities" in line and current_species in monstats:
                ability_match = re.search(r'abilities\s+ABILITY_(\w+),\s*ABILITY_(\w+)', line)
                if ability_match:
                    primary, secondary = ability_match.groups()
                    abilities = [primary]
                    if secondary != "NONE":
                        abilities.append(secondary)
                    monstats[current_species]["abilities"] = abilities

            elif "types" in line and current_species in monstats:
                type_match = re.search(r'types\s+TYPE_(\w+),\s*TYPE_(\w+)', line)
                if type_match:
                    t1, t2 = type_match.groups()
                    monstats[current_species]["types"] = [t1] if t1 == t2 else [t1, t2]

    return monstats


def get_nature_modifiers(nature):
    up, down = NATURE_MODIFIERS.get(nature, (None, None))
    mods = {stat: 1.0 for stat in STAT_NAMES[1:]}  # exclude HP
    if up: mods[up] = 1.1
    if down: mods[down] = 0.9
    return mods


def calculate_stat(base, iv, ev, level, nature_mod=1.0):
    return math.floor(((2 * int(base) + int(iv) + math.floor(int(ev) / 4)) * int(level)) / 100 + 5) * nature_mod


def calculate_hp(base, iv, ev, level):
    return math.floor(((2 * int(base) + int(iv) + math.floor(int(ev) / 4)) * int(level)) / 100) + int(level) + 10


def calculate_all_stats(base_stats, ivs, evs, level, nature):
    nature_mods = get_nature_modifiers(nature)
    final_stats = {}

    final_stats["HP"] = calculate_hp(base_stats["HP"], ivs["HP"], evs["HP"], level)

    for stat in STAT_NAMES[1:]:
        mod = nature_mods.get(stat, 1.0)
        final_stats[stat] = int(calculate_stat(base_stats[stat], ivs[stat], evs[stat], level, mod))

    return final_stats


def parse_trainers(file_path, species_form_map):
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

                if stripped.startswith("monwithform"):
                    species = line.split()[1].replace(",", "")
                    form_index = int(line.split()[2])
                    resolved = species_form_map.get((species, form_index))
                    current_mon.append(f"pokemon {resolved}")
                else:
                    current_mon.append(stripped)

    return list(trainers.values())


def generate_trainer_pages(trainers, mondata, output_dir):
    os.makedirs(output_dir, exist_ok=True)

    for trainer in trainers:
        if trainer["name"] == "-":
            continue

        fname = f"{trainer['name'].replace(' ', '_')}_{trainer['id']}.html"
        path = os.path.join(output_dir, fname)

        with open(path, "w", encoding="utf-8") as f:
            f.write(f"""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{escape(trainer['name'])}</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <h1 class='center'>Mirror Gold Trainerdex</h1>
    <div class="center"><h3><a href="./index.html">Back to Trainer Index</a></h3></div>
    <h1 class="center">{escape(trainer['name']).replace('_', ' ')} <small>(ID: {trainer['id']})</small></h1>
""")

            for mon in trainer["party"]:
                species = mon["pokemon"].upper()
                level = mon["level"]
                sprite_path = f"{POKEMON_SPRITE_PATH}/{species.replace('SPECIES_', '').lower()}.png"
                base_stats = mondata[species]
                ivs = [31, 31, 31, 31, 31, 31]
                if mon.get("setivs"):
                    ivs = mon["setivs"].split(", ")
                ivs_by_stat = {
                    "HP": ivs[0],
                    "Attack": ivs[1],
                    "Defense": ivs[2],
                    "Speed": ivs[3],
                    "Sp. Atk": ivs[4],
                    "Sp. Def": ivs[5],
                }
                evs = [31, 31, 31, 31, 31, 31]
                if mon.get("setevs"):
                    evs = mon["setevs"].split(", ")
                evs_by_stat = {
                    "HP": evs[0],
                    "Attack": evs[1],
                    "Defense": evs[2],
                    "Speed": evs[3],
                    "Sp. Atk": evs[4],
                    "Sp. Def": evs[5],
                }
                nature = "NATURE_SERIOUS"
                if mon.get("nature"):
                   nature = mon["nature"]
                actual_stats = calculate_all_stats(base_stats, ivs_by_stat, evs_by_stat, level,  nature)

                f.write(f"""    <div class="trainer-mon">
        <div class="sprite info-line">
            <div class="sprite-frame">
                <img src="{sprite_path}" alt="{species}" class="sprite crop">
            </div>
        </div>
        <div class="center">
            <div class="info-line">
""")

                f.write(f"""                <h3>{escape(species).replace("SPECIES_", "").replace('_', ' ')} (Level {level})</h3>\n""")

                # Optional fields
                if mon.get("ability"):
                    f.write(f"""                <strong>Ability:</strong> {escape(mon['ability']).replace('ABILITY_', '').replace('_', ' ')}<br>\n""")

                f.write("".join(render_stat_bar(stat, value) for stat, value in actual_stats.items()))

                if mon.get("item"):
                    f.write(f"""                <strong>Item:</strong> {escape(mon['item']).replace('ITEM_', '').replace('_', ' ').replace('CHARIZARDITE', 'MEGA STONE')}<br>\n""")

                if mon.get("move1"):
                    f.write(f"""                <strong>Move 1:</strong> {escape(mon['move1']).replace('MOVE_', '').replace('_', ' ')}<br>\n""")
                    f.write(f"""                <strong>Move 2:</strong> {escape(mon['move2']).replace('MOVE_', '').replace('_', ' ')}<br>\n""")
                    f.write(f"""                <strong>Move 3:</strong> {escape(mon['move3']).replace('MOVE_', '').replace('_', ' ')}<br>\n""")
                    f.write(f"""                <strong>Move 4:</strong> {escape(mon['move4']).replace('MOVE_', '').replace('_', ' ')}<br>\n""")
                f.write(f"""            </div>
        </div>
    </div>
""")

            f.write("""
    <div class="center"><h3><a href="./index.html">Back to Trainer Index</a></h3></div>
</body>
</html>
""")

    print(f"Generated {len(trainers)} trainer pages in '{output_dir}/'")


def stat_color(stat):
    if stat < 50:
        return "darkred"
    elif stat < 100:
        return "orangered"
    elif stat < 200:
        return "gold"
    elif stat < 300:
        return "limegreen"
    elif stat < 400:
        return "dodgerblue"
    else:
        return "mediumorchid"


MAX_STAT = 600

def render_stat_bar(label, value):
    color = stat_color(value)
    width_pct = min(int((value / MAX_STAT) * 100), 100)
    return f"""
    <div class="stat-bar">
        <span class="label">{label}</span>
        <div class="bar-bg">
            <div class="bar-fill" style="width: {width_pct}%; background-color: {color};">{value}</div>
        </div>
    </div>
    """


def generate_index(trainers, output_path):
    with open(output_path, "w") as f:
        f.write("""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mirror Gold Trainer Index</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <h1 class="center">Mirror Gold Trainer Index</h1>
    <h3 class='center'><a href='../index.html'>Back to Wiki Index</a></h3>
    <div class="center">
        <input type="text" id="searchBox" class="center" placeholder="Search Trainers..." onkeyup="filterList()" />
    </div>
    <ul id="trainerList" class="center">
""")
        for t in trainers:
            if t["name"] == "-":
                continue
            fname = f"./{t['name'].replace(' ', '_')}_{t['id']}.html"
            f.write(f"        <li><a href='{fname}'>{escape(t['name'])}</a></li>\n")

        f.write("""    </ul>
    <script>
    function filterList() {
        const input = document.getElementById("searchBox").value.toUpperCase();
        const ul = document.getElementById("trainerList");
        const items = ul.getElementsByTagName("li");
        for (let i = 0; i < items.length; i++) {
            const a = items[i].getElementsByTagName("a")[0];
            const txt = a.textContent || a.innerText;
            items[i].style.display = txt.toUpperCase().includes(input) ? "" : "none";
        }
    }
    </script>
</body>
</html>""")

    print(f"Index written to {output_path}")


if __name__ == "__main__":
    species_list = parse_species_header(SPECIES_PATH)
    form_species = parse_form_mapping(FORM_TABLE_PATH)
    species_form_map = assign_form_indexes(species_list, form_species)
    trainers = parse_trainers(TRAINER_INPUT, species_form_map)
    mondata = parse_mondata(MON_DATA_PATH)
    generate_trainer_pages(trainers, mondata, TRAINER_OUTPUT_DIR)
    generate_index(trainers, TRAINER_INDEX_PATH)
