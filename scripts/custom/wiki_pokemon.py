import os
import re
from collections import defaultdict, deque
import shutil

# Evolution method descriptions
method_map = {
    "EVO_LEVEL": "level up to",
    "EVO_ITEM": "using",
    "EVO_ITEM_DAY": "held item (day)",
    "EVO_ITEM_NIGHT": "held item (night)",
    "EVO_HAPPINESS": "high friendship",
    "EVO_TRADE": "trade",
    "EVO_TRADE_ITEM": "trade while holding",
    "EVO_MOVE": "level up knowing",
    "EVO_STONE": "stone",
    "EVO_NONE": "No evolution"
}

def parse_evodata(evodata_path, species_form_map):
    forward_evolutions = defaultdict(list)   # SPECIES_* -> list of SPECIES_*
    backward_evolutions = defaultdict(list)                 # SPECIES_* -> SPECIES_*

    current_species = None
    in_block = False

    with open(evodata_path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()

            if line.startswith("evodata"):
                match = re.match(r'evodata\s+SPECIES_([A-Z0-9_]+)', line)
                if match:
                    current_species = match.group(1)
                    in_block = True
                continue

            if line.startswith("terminateevodata"):
                current_species = None
                in_block = False
                continue

            if not in_block or current_species is None:
                continue

            # Match evolutionwithform: evolutionwithform EVO_TYPE, item, SPECIES_NAME, form
            if line.startswith("evolutionwithform"):
                match = re.match(r"evolutionwithform\s+(\w+),\s*(\w+),\s*(SPECIES_[A-Z0-9_]+),\s*(\d)+", line)
                if match:
                    evo_method, evo_param, target_species, target_species_index = match.groups()
                    if target_species == 'SPECIES_NONE':
                        continue
                    resolved_target = species_form_map.get((target_species, int(target_species_index)))

                    forward_evolutions[current_species].append({
                        "evolves_to": resolved_target,
                        "method": evo_method,
                        "parameter": evo_param,
                    })

                    backward_evolutions[resolved_target].append({
                        "evolves_from": current_species,
                        "method": evo_method,
                        "parameter": evo_param,
                    })

            elif line.startswith("evolution"):
                # evolution EVO_LEVEL, 28, SPECIES_PERRSERKER
                match = re.match(r"evolution\s+(\w+),\s*(\w+),\s*SPECIES_([A-Z0-9_]+).*", line)
                if match and match.group(1) != "SPECIES_NONE":
                    evo_method, evo_param, target_species = match.groups()
                    if target_species == 'NONE':
                        continue
                    forward_evolutions[current_species].append({
                        "evolves_to": target_species,
                        "method": evo_method,
                        "parameter": evo_param,
                    })

                    backward_evolutions[target_species].append({
                        "evolves_from": current_species,
                        "method": evo_method,
                        "parameter": evo_param,
                    })

    return forward_evolutions, backward_evolutions


def is_form_of(base, form):
    if form.startswith("MEGA_") and form[5:] == base:
        return True
    if base.startswith("MEGA_") and base[5:] == form:
        return True
    if any(form == f"{base}_{suffix}" for suffix in ["GALARIAN", "ALOLAN", "HISUIAN", "PALDEAN"]):
        return True
    if any(base == f"{form}_{suffix}" for suffix in ["GALARIAN", "ALOLAN", "HISUIAN", "PALDEAN"]):
        return True
    if base + "_" in form and form != base:
        return True
    return False


def parse_mondata(filepath):
    monstats = {}
    current_species = None

    with open(filepath, "r") as f:
        for line in f:
            line = line.split("//")[0].strip()
            if not line:
                continue

            if line.startswith("mondata"):
                match = re.match(r"mondata\s+SPECIES_(\w+),", line)
                if match:
                    current_species = match.group(1).upper()

            elif "basestats" in line and current_species:
                stat_match = re.search(r'basestats\s+(\d+),\s*(\d+),\s*(\d+),\s*(\d+),\s*(\d+),\s*(\d+)', line)
                if stat_match:
                    hp, atk, defn, spd, spatk, spdef = map(int, stat_match.groups())
                    monstats[current_species] = {
                        "hp": hp,
                        "attack": atk,
                        "defense": defn,
                        "speed": spd,
                        "sp_atk": spatk,
                        "sp_def": spdef,
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


def parse_species_header(filepath):
    species_list = []
    with open(filepath) as f:
        for line in f:
            match = re.match(r'#define\s+(SPECIES_[A-Z0-9_]+)\s+', line)
            if match:
                species = match.group(1)
                if match.group(1) == 'SPECIES_NONE' or species.replace('SPECIES_', '').isdigit():
                    continue
                species_list.append(species)
    return species_list


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


def parse_levelup_data(filepath):
    levelup_data = defaultdict(list)
    current_species = None

    with open(filepath, "r") as f:
        for line in f:
            line = line.strip()
            if line.startswith("levelup"):
                match = re.match(r"levelup\s+SPECIES_(\w+)", line)
                if match:
                    current_species = match.group(1).upper()

            elif line.startswith("learnset") and current_species:
                move_match = re.match(r"learnset\s+MOVE_(\w+),\s*(\d+)", line)
                if move_match:
                    move, level = move_match.groups()
                    levelup_data[current_species].append((int(level), move.replace('_', ' ').title()))

            elif line.startswith("terminatelearnset"):
                current_species = None

    # Sort moves by level for each species
    for species in levelup_data:
        levelup_data[species].sort(key=lambda x: x[0])

    return levelup_data


def parse_encounter_data(filepath, species_form_map):
    species_locations = defaultdict(list)
    location_comment = ""
    current_section = None

    with open(filepath, "r") as f:
        for line in f:
            line = line.strip()

            if line.startswith("encounterdata"):
                match = re.match(r"encounterdata\s+(\d+)\s*//\s*(.+)", line)
                if match:
                    location_comment = match.group(2).strip()
                    current_section = None

            elif line.startswith("//"):
                lower_line = line.lower()
                if "morning" in lower_line:
                    current_section = "Morning"
                elif "day" in lower_line:
                    current_section = "Day"
                elif "night" in lower_line:
                    current_section = "Night"
                elif "hoenn" in lower_line:
                    current_section = "Hoenn"
                elif "sinnoh" in lower_line:
                    current_section = "Sinnoh"
                elif "surf encounters" in lower_line:
                    current_section = "Surf"
                elif "rock smash" in lower_line:
                    current_section = "Rock Smash"
                elif "old rod" in lower_line:
                    current_section = "Old Rod"
                elif "good rod" in lower_line:
                    current_section = "Good Rod"
                elif "super rod" in lower_line:
                    current_section = "Super Rod"
                elif "swarm grass" in lower_line:
                    current_section = "Swarm Grass"
                elif "swarm surf" in lower_line:
                    current_section = "Swarm Surf"
                elif "swarm good rod" in lower_line:
                    current_section = "Swarm Good Rod"
                elif "swarm super rod" in lower_line:
                    current_section = "Swarm Super Rod"

            if line.startswith("encounterwithform"):
                match = re.search(r"encounterwithform\s+(SPECIES_[A-Z0-9_]+),\s*(\d+),\s*\d+,\s*\d+", line)
                if match:
                    species, form_index = match.groups()
                    parsed = species_form_map.get((species, int(form_index)))
                    if parsed is None:
                        print(f"[DEBUG] missing form mapping? {species} {form_index}")
                        continue
                    if current_section:
                        desc = f"{location_comment} ({current_section})"
                    else:
                        desc = location_comment
                    species_locations[parsed.upper()].append(desc)


            elif line.startswith("monwithform"):
                match = re.search(r"monwithform\s+(SPECIES_[A-Z0-9_]+),\s*(\d+)", line)
                if match:
                    species, form_index = match.groups()
                    parsed = species_form_map.get((species, int(form_index)))
                    if parsed is None:
                        print(f"[DEBUG] missing form mapping? {species} {form_index}")
                        continue
                    if current_section:
                        desc = f"{location_comment} ({current_section})"
                    else:
                        desc = location_comment
                    species_locations[parsed.upper()].append(desc)

            elif line.startswith("pokemon") or line.startswith("encounter"):
                match = re.search(r"SPECIES_([A-Z0-9_]+)", line)
                if match:
                    species = match.group(1).upper()
                    if current_section:
                        desc = f"{location_comment} ({current_section})"
                    else:
                        desc = location_comment
                    species_locations[species].append(desc)

            elif line.startswith(".close"):
                current_section = None

    return species_locations


def generate_pokemon_pages(evodata_path, output_dir, mondata_path, species_path, form_table_path, sprite_root, levelup_path, encounter_path):
    os.makedirs(output_dir, exist_ok=True)

    species_list = parse_species_header(species_path)
    form_species = parse_form_mapping(form_table_path)
    species_form_map = assign_form_indexes(species_list, form_species)

    fwd, rev = parse_evodata(evodata_path, species_form_map)

    monstats = parse_mondata(mondata_path)
    sorted_species_list = sorted(s.removeprefix("SPECIES_") for s in set(species_list))
    levelup_moves = parse_levelup_data(levelup_path)
    encounter_locations = parse_encounter_data(encounter_path, species_form_map)
    sprite_out = "sprites"
    os.makedirs(f"{output_dir}/{sprite_out}", exist_ok=True)

    for species in sorted_species_list:
        if species.isdigit():
            continue
        evolutions = fwd.get(species, [])
        pre_evolutions = rev.get(species, [])
        stats = monstats.get(species, {})
        sprite_path = os.path.join(sprite_root, species.lower(), "male", "front.png")
        img_tag = ""
        if os.path.exists(sprite_path):
            sprite_dst = os.path.join(f"{output_dir}/{sprite_out}", f"{species.lower()}.png")
            shutil.copy(sprite_path, sprite_dst)
            img_tag = f"<div class='sprite-frame'><img src='{sprite_out}/{species.lower()}.png' alt='{species.lower()}' class='sprite crop'/></div>"
        else:
            img_tag = "<p><em>No image available</em></p>"

        stats_html = "<p><em>Stats not found.</em></p>"
        abilities_html = "<p><em>Abilities not found.</em></p>"
        types_html = "<p><em>Typing not found.</em></p>"
        moves_html = "<p><em>Moves not found.</em></p>"

        locations = encounter_locations.get(species, [])
        if locations:
            locations_html = "<ul class='center'>\n" + "".join(f"  <li>{loc}</li>\n" for loc in sorted(set(locations))) + "</ul>"
        else:
            locations_html = "<p><em>Not found in the wild.</em></p>"

        if stats:
            stats_html = f"""
            <table>
              <tr><th>HP</th><th>Atk</th><th>Def</th><th>Sp. Atk</th><th>Sp. Def</th><th>Speed</th></tr>
              <tr>
                <td>{stats['hp']}</td><td>{stats['attack']}</td><td>{stats['defense']}</td>
                <td>{stats['sp_atk']}</td><td>{stats['sp_def']}</td><td>{stats['speed']}</td>
              </tr>
            </table>
            """
            if stats.get("abilities"):
                abilities_html = " / ".join(
                    f"<a href='https://bulbapedia.bulbagarden.net/wiki/{ability.replace('_', ' ').title()}_(Ability)' target='_blank'>{ability.replace('_', ' ').title()}</a>"
                    for ability in stats["abilities"]
                )

            if stats.get("types"):
                types = stats["types"]
                types_html = "".join(
                    f"<span class='type {t.lower()}'>{t.title()}</span>" for t in types
                )


        related_forms = [
            other for other in monstats.keys()
            if is_form_of(species, other)
        ]

        html_path = os.path.join(output_dir, f"{species.lower()}.html")
        with open(html_path, "w") as f:
            f.write("""<!DOCTYPE html>
        <html lang='en'>
          <head>
            <meta charset='UTF-8'>
            <title>{species}</title>
            <link rel='stylesheet' type='text/css' href='../style.css'>
          </head>
          <body>
            <h1 class='center'>Mirror Gold Pokédex</h1>
            <h2 class='center'>{species}</h2>
            <div class='sprite info-line'>{img_tag}</div>
            <div class='center info-line'>
              <strong>Type:</strong>
            </div>
            <div class='center info-line'>
              {types_html}
            </div>
            <div class='center info-line'>
              <strong>Abilities:</strong>
            </div>
            <div class='center info-line'>
              {abilities_html}
            </div>
            <h3 class='center'>Base Stats</h3>
            {stats_html}
        """.format(species=species, img_tag=img_tag, types_html=types_html, abilities_html=abilities_html, stats_html=stats_html))

            if pre_evolutions:
                f.write("    <h3 class='center'>Evolves From</h3>\n    <ul class='center'>\n")
                for evo in pre_evolutions:
                    method_desc = method_map.get(evo["method"], evo["method"])
                    param = evo["parameter"]

                    # Clean up parameter
                    if param.startswith("ITEM_"):
                        param_readable = param.replace("ITEM_", "").replace("_", " ").title()
                    elif param.startswith("MOVE_"):
                        param_readable = param.replace("MOVE_", "").replace("_", " ").title()
                    elif param.startswith("ABILITY_"):
                        param_readable = param.replace("ABILITY_", "").replace("_", " ").title()
                    elif param.upper() == "NONE":
                        param_readable = ""
                    else:
                        param_readable = param

                    evo_line = f"      <li>Evolves from <a href='{evo['evolves_from'].lower()}.html'>{evo['evolves_from']}</a> via {method_desc}"
                    if param_readable:
                        evo_line += f" <strong>{param_readable}</strong>"
                    evo_line += "</li>\n"
                    f.write(evo_line)
                f.write("    </ul>\n")

            if evolutions:
                f.write("    <h3 class='center'>Evolves To</h3>\n    <ul class='center'>\n")
                for evo in evolutions:
                    method_desc = method_map.get(evo["method"], evo["method"])
                    param = evo["parameter"]

                    # Clean up parameter
                    if param.startswith("ITEM_"):
                        param_readable = param.replace("ITEM_", "").replace("_", " ").title()
                    elif param.startswith("MOVE_"):
                        param_readable = param.replace("MOVE_", "").replace("_", " ").title()
                    elif param.startswith("ABILITY_"):
                        param_readable = param.replace("ABILITY_", "").replace("_", " ").title()
                    elif param.upper() == "NONE":
                        param_readable = ""
                    else:
                        param_readable = param

                    evo_line = f"      <li>Evolves into <a href='{evo['evolves_to'].lower()}.html'>{evo['evolves_to']}</a> via {method_desc}"
                    if param_readable:
                        evo_line += f" <strong>{param_readable}</strong>"
                    evo_line += "</li>\n"
                    f.write(evo_line)
                f.write("    </ul>\n")

            if related_forms:
                f.write("    <h3 class='center'>Other Forms</h3>\n    <ul class='center'>\n")
                for form in sorted(related_forms):
                    f.write(f"      <li><a href='{form.lower()}.html'>{form.replace('_', ' ').title()}</a></li>\n")
                f.write("    </ul>\n")

            moves = levelup_moves.get(species, [])

            if moves:
                moves_html = "<table>\n  <tr><th>Level</th><th>Move</th></tr>\n"
                for level, move in moves:
                    moves_html += f"  <tr><td>{level}</td><td>{move}</td></tr>\n"
                moves_html += "</table>"
            ...
            f.write(f"""
                <h3 class='center'>Level-Up Moves</h3>
                {moves_html}
            """)

            f.write(f"""
            <h3 class='center'>Wild Locations</h3>
            {locations_html}
            """)

            f.write("""    <h3 class='center'><a href='./index.html'>Back to Pokédex Index</a></h3>
          </body>
        </html>
        """)


    print(f"Generated {len(species_list)} pages in '{output_dir}/'")

generate_pokemon_pages(
    evodata_path="../../armips/data/evodata.s",
    output_dir="../../docs/pokedex",
    mondata_path="../../armips/data/mondata.s",
    species_path="../../include/constants/species.h",
    form_table_path="../../data/FormToSpeciesMapping.c",
    sprite_root="../../data/graphics/sprites",
    levelup_path="../../armips/data/levelupdata.s",
    encounter_path="../../armips/data/encounters.s"
)

def generate_index(species_path, output_path="../../docs/pokedex/index.html"):
    species = parse_species_header(species_path)

    with open(output_path, "w") as f:
        f.write("<!DOCTYPE html>\n<html lang='en'>\n<head>\n")
        f.write("  <meta charset='UTF-8'>\n  <title>Mirror Gold Pokédex Index</title>\n")
        f.write("  <link rel='stylesheet' href='../style.css'>\n")
        f.write("""
  <script>
      function filterPokemon() {
          let input = document.getElementById('searchBox').value.toUpperCase();
          let ul = document.getElementById('pokemonList');
          let items = ul.getElementsByTagName('li');
          for (let i = 0; i < items.length; i++) {
              let a = items[i].getElementsByTagName("a")[0];
              let txt = a.textContent || a.innerText;
              items[i].style.display = txt.toUpperCase().indexOf(input) > -1 ? "" : "none";
          }
      }
  </script>
        """)
        f.write("</head>\n<body>\n")
        f.write("  <h1 class='center'>Mirror Gold Pokédex</h1>\n")
        f.write("  <h3 class='center'><a href='../index.html'>Back to Wiki Index</a></h3>\n")
        f.write("  <div class='center'><input type='text' id='searchBox' class='center' placeholder='Search Pokémon...' onkeyup='filterPokemon()' /></div>\n")
        f.write("  <ul id='pokemonList' class='center'>\n")

        for name in species:
            n = name.replace("SPECIES_", "")
            f.write(f"    <li><a href='./{n.lower()}.html'>{n}</a></li>\n")

        f.write("  </ul>\n</body>\n</html>\n")

    print(f"Index generated at {output_path} with {len(species)} entries.")

if __name__ == "__main__":
    generate_index("../../include/constants/species.h")