import os
import re
from html import escape
from collections import defaultdict, deque

TRAINER_INPUT = "../../armips/data/trainers/trainers.s"
TRAINER_OUTPUT_DIR = "../../docs/trainers"
TRAINER_INDEX_PATH = "../../docs/trainers/index.html"
POKEMON_SPRITE_PATH = "../pokedex/sprites"
SPECIES_PATH = "../../include/constants/species.h"
FORM_TABLE_PATH = "../../data/FormToSpeciesMapping.c"

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
            form_dict[(base, idx)] = form.replace("SPECIES_", "")
    return form_dict


def parse_trainers(filepath, species_form_map):
    with open(filepath, "r") as f:
        lines = f.readlines()

    trainers = []
    current = None
    in_party = False
    current_mon = None

    for line in lines:
        line = line.strip()

        if line.startswith("trainerdata"):
            if current:
                trainers.append(current)
            _, tid, name = re.split(r'\s+|,', line, maxsplit=2)
            current = {
                "id": tid.strip(),
                "name": name.strip().strip('"'),
                "aiflags": "",
                "battletype": "",
                "party": []
            }

        elif line.startswith("aiflags"):
            current["aiflags"] = line.split(" ", 1)[1]

        elif line.startswith("battletype"):
            current["battletype"] = line.split()[1]

        elif line.startswith("party"):
            in_party = True
            current_mon = None

        elif line.startswith("endparty"):
            in_party = False
            if current_mon:
                current["party"].append(current_mon)

        elif in_party and "// mon" in line:
            if current_mon:
                current["party"].append(current_mon)
            current_mon = {
                "level": "",
                "species": "",
                "ability": "",
                "item": "",
                "nature": "",
                "ivs": "",
                "evs": "",
                "moves": [],
                "shinylock": "No"
            }

        elif in_party and current_mon is not None:
            if line.startswith("level"):
                current_mon["level"] = line.split()[1]
            elif line.startswith("pokemon"):
                current_mon["species"] = line.split()[1].replace("SPECIES_", "").title()
            elif line.startswith("monwithform"):
                species = line.split()[1].replace(",", "")
                form_index = int(line.split()[2])
                resolved = species_form_map.get((species, form_index))
                if resolved:
                    current_mon["species"] = resolved.replace("SPECIES_", "").title()
                else:
                    current_mon["species"] = species.replace("SPECIES_", "").title()
            elif line.startswith("ability"):
                current_mon["ability"] = line.split()[1].replace("ABILITY_", "").replace("_", " ").title()
            elif line.startswith("item"):
                current_mon["item"] = line.split()[1].replace("ITEM_", "").replace("_", " ").title()
            elif line.startswith("nature"):
                current_mon["nature"] = line.split()[1].replace("NATURE_", "").title()
            elif line.startswith("setivs"):
                current_mon["ivs"] = line.split("setivs")[1].strip()
            elif line.startswith("setevs"):
                current_mon["evs"] = line.split("setevs")[1].strip()
            elif line.startswith("shinylock"):
                current_mon["shinylock"] = "Yes" if line.endswith("1") else "No"
            elif line.startswith("move"):
                move = line.split()[1].replace("MOVE_", "").replace("_", " ").title()
                current_mon["moves"].append(move)

    if current:
        trainers.append(current)

    return trainers

def generate_trainer_pages(trainers, output_dir):
    os.makedirs(output_dir, exist_ok=True)

    for trainer in trainers:
        if trainer["name"] == "-":
            continue
        fname = f"{trainer['name'].replace(' ', '_')}_{trainer['id']}.html"
        path = os.path.join(output_dir, fname)

        with open(path, "w") as f:
            f.write(f"""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{escape(trainer['name'])}</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <h1 class="center">{escape(trainer['name'])} <small>(ID: {trainer['id']})</small></h1>
""")

            for mon in trainer["party"]:
                species = mon["species"].upper()
                sprite_path = f"{POKEMON_SPRITE_PATH}/{species.lower()}.png"

                f.write(f"""    <div class="trainer-mon">
        <div class='sprite info-line'>
            <div class='sprite-frame'>
                <img src="{sprite_path}" alt="{species}" class="sprite crop">
            </div>
        </div>
        <div class="center">
            <div class="info-line">
                <h3>{escape(species)} (Level {mon['level']})</h3>
                <strong>Ability:</strong> {escape(mon['ability'])}<br>
                <strong>Nature:</strong> {escape(mon['nature'])}<br>
                <strong>Item:</strong> {escape(mon['item'])}<br>
                <strong>IVs:</strong> {escape(mon['ivs'])}<br>
                <strong>EVs:</strong> {escape(mon['evs'])}<br>
            </div>
            <strong>Moves:</strong>
""")
                moves_line = " / ".join(escape(move) for move in mon["moves"])
                f.write(f"{moves_line}\n""""
        </div>
    </div>\n""")

            f.write("""
    <div class="center"><h3><a href="./index.html">Back to Trainer Index</a></h3></div>
</body>
</html>
""")
    print(f"Generated {len(trainers)} trainer pages in '{output_dir}/'")

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
    generate_trainer_pages(trainers, TRAINER_OUTPUT_DIR)
    generate_index(trainers, TRAINER_INDEX_PATH)
