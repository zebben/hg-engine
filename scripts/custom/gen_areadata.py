import re

encounter_map = {
    0: "DEX_NEW_BARK_TOWN",
    1: "DEX_ROUTE_29",
    2: "DEX_CHERRYGROVE_CITY",
    3: "DEX_ROUTE_30",
    4: "DEX_ROUTE_31",
    5: "DEX_VIOLET_CITY",
    6: "DEX_SPROUT_TOWER",
    7: "DEX_SPROUT_TOWER",
    8: "DEX_ROUTE_32",
    9: "DEX_RUINS_OF_ALPH",
    10: "DEX_RUINS_OF_ALPH",
    11: "DEX_RUINS_OF_ALPH",
    12: "DEX_RUINS_OF_ALPH",
    13: "DEX_RUINS_OF_ALPH",
    14: "DEX_UNION_CAVE",
    15: "DEX_UNION_CAVE",
    16: "DEX_UNION_CAVE",
    17: "DEX_ROUTE_33",
    18: "DEX_SLOWPOKE_WELL",
    19: "DEX_SLOWPOKE_WELL",
    20: "DEX_ILEX_FOREST",
    21: "DEX_ROUTE_34",
    22: "DEX_ROUTE_35",
    23: "DEX_NATIONAL_PARK",
    24: "DEX_NATIONAL_PARK",
    25: "DEX_ROUTE_36",
    26: "DEX_ROUTE_37",
    27: "DEX_ECRUTEAK_CITY",
    28: "DEX_BURNED_TOWER",
    29: "DEX_BURNED_TOWER",
    30: "DEX_BELL_TOWER",
    31: "DEX_BELL_TOWER",
    32: "DEX_BELL_TOWER",
    33: "DEX_BELL_TOWER",
    34: "DEX_BELL_TOWER",
    35: "DEX_BELL_TOWER",
    36: "DEX_BELL_TOWER",
    37: "DEX_BELL_TOWER",
    38: "DEX_ROUTE_38",
    39: "DEX_ROUTE_39",
    40: "DEX_OLIVINE_CITY",
    41: "DEX_ROUTE_40",
    42: "DEX_ROUTE_41",
    43: "DEX_WHIRL_ISLANDS",
    44: "DEX_WHIRL_ISLANDS",
    45: "DEX_UNKNOWN",
    46: "DEX_WHIRL_ISLANDS",
    47: "DEX_UNKNOWN",
    48: "DEX_WHIRL_ISLANDS",
    49: "DEX_UNKNOWN",
    50: "DEX_UNKNOWN",
    51: "DEX_CIANWOOD_CITY",
    52: "DEX_ROUTE_42",
    53: "DEX_MT_MORTAR",
    54: "DEX_MT_MORTAR",
    55: "DEX_MT_MORTAR",
    56: "DEX_MT_MORTAR",
    57: "DEX_ROUTE_43",
    58: "DEX_LAKE_OF_RAGE",
    59: "DEX_ROUTE_44",
    60: "DEX_ICE_PATH",
    61: "DEX_ICE_PATH",
    62: "DEX_ICE_PATH",
    63: "DEX_ICE_PATH",
    64: "DEX_UNKNOWN",
    65: "DEX_BLACKTHORN_CITY",
    66: "DEX_DRAGONS_DEN",
    67: "DEX_ROUTE_45",
    68: "DEX_ROUTE_46",
    69: "DEX_DARK_CAVE",
    70: "DEX_DARK_CAVE",
    71: "DEX_ROUTE_47",
    72: "DEX_MT_MOON",
    73: "DEX_MT_MOON",
    74: "DEX_SEAFOAM_ISLANDS",
    75: "DEX_SEAFOAM_ISLANDS",
    76: "DEX_SEAFOAM_ISLANDS",
    77: "DEX_SEAFOAM_ISLANDS",
    78: "DEX_SEAFOAM_ISLANDS",
    79: "DEX_MT_SILVER",
    80: "DEX_MT_SILVER",
    81: "DEX_MT_SILVER",
    82: "DEX_CLIFF_EDGE_GATE",
    83: "DEX_CLIFF_CAVE",
    84: "DEX_BELL_TOWER",
    85: "DEX_MT_SILVER",
    86: "DEX_MT_SILVER",
    87: "DEX_MT_SILVER",
    88: "DEX_MT_SILVER",
    89: "DEX_MT_SILVER",
    90: "DEX_UNKNOWN",
    91: "DEX_SAFARI_ZONE",
    92: "DEX_ROUTE_12",
    93: "DEX_ROUTE_19",
    94: "DEX_ROUTE_20",
    95: "DEX_PALLET_TOWN",
    96: "DEX_VIRIDIAN_CITY",
    97: "DEX_CERULEAN_CITY",
    98: "DEX_VERMILION_CITY",
    99: "DEX_CELADON_CITY",
    100: "DEX_FUCHSIA_CITY",
    101: "DEX_CINNABAR_CITY",
    102: "DEX_ROUTE_48",
    103: "DEX_ROUTE_26",
    104: "DEX_ROUTE_27",
    105: "DEX_ROUTE_28",
    106: "DEX_MT_MOON",
    107: "DEX_MT_MOON",
    108: "DEX_ROCK_TUNNEL",
    109: "DEX_ROCK_TUNNEL",
    110: "DEX_VICTORY_ROAD",
    111: "DEX_ROUTE_1",
    112: "DEX_ROUTE_2",
    113: "DEX_ROUTE_3",
    114: "DEX_ROUTE_4",
    115: "DEX_ROUTE_5",
    116: "DEX_ROUTE_6",
    117: "DEX_ROUTE_7",
    118: "DEX_ROUTE_8",
    119: "DEX_ROUTE_9",
    120: "DEX_ROUTE_10",
    121: "DEX_ROUTE_11",
    122: "DEX_ROUTE_13",
    123: "DEX_ROUTE_14",
    124: "DEX_ROUTE_15",
    125: "DEX_ROUTE_16",
    126: "DEX_ROUTE_17",
    127: "DEX_ROUTE_18",
    128: "DEX_ROUTE_21",
    129: "DEX_ROUTE_22",
    130: "DEX_ROUTE_24",
    131: "DEX_ROUTE_25",
    132: "DEX_TOHJO_FALLS",
    133: "DEX_DIGLETTS_CAVE",
    134: "DEX_VICTORY_ROAD",
    135: "DEX_VICTORY_ROAD",
    136: "DEX_ROUTE_2",
    137: "DEX_VIRIDIAN_FOREST",
    138: "DEX_UNKNOWN",
    139: "DEX_CERULEAN_CAVE",
    140: "DEX_CERULEAN_CAVE",
    141: "DEX_CERULEAN_CAVE"
}


def add_mon_encounter(mon_encounters, mon, route_or_city, encounter_type, encounter_name):
    mon_entry = {
        "specialareas": {
            "MORNING": set(),
            "DAY": set(),
            "NIGHT": set(),
            "SPECIAL": set(),
        },
        "routesandcities": {
            "MORNING": set(),
            "DAY": set(),
            "NIGHT": set(),
            "SPECIAL": set(),
        }
    }

    if mon in mon_encounters:
        mon_entry = mon_encounters[mon]
    
    is_water = encounter_type in [ "old_rod", "good_rod", "super_rod", "surf" ]
    is_special = not is_water and encounter_type not in [ "MORNING", "DAY", "NIGHT" ]

    if encounter_name == 'DEX_SAFARI_ZONE':
        return

    if route_or_city:
        if is_special:
            mon_entry["routesandcities"]["SPECIAL"].add(encounter_name)
        elif is_water:
            mon_entry["routesandcities"]["MORNING"].add(encounter_name)
            mon_entry["routesandcities"]["DAY"].add(encounter_name)
            mon_entry["routesandcities"]["NIGHT"].add(encounter_name)
        else:
            mon_entry["routesandcities"][encounter_type].add(encounter_name)
    else:
        if is_special:
            mon_entry["specialareas"]["SPECIAL"].add(encounter_name)
        elif is_water:
            mon_entry["specialareas"]["MORNING"].add(encounter_name)
            mon_entry["specialareas"]["DAY"].add(encounter_name)
            mon_entry["specialareas"]["NIGHT"].add(encounter_name)
        else:
            mon_entry["specialareas"][encounter_type].add(encounter_name)

    mon_encounters[mon] = mon_entry


def parse_encounters(file_path):
    with open(file_path, 'r') as f:
        lines = f.readlines()

    mon_encounters = {}
    encounter_id = 0
    encounter_name = ""
    encounter_line_index = 0
    in_encounterdata = False
    in_comment = False

    for line in lines:
        stripped = line.strip()

        if not stripped:
            continue

        if stripped.startswith("//"):
            continue

        if "/*" in stripped:
            in_comment = True
        
        if in_comment:
            if "*/" in stripped:
                in_comment = False
            else:
                continue

        if stripped.startswith("encounterdata"):
            match = re.match(r'encounterdata\s+(\d+)', stripped)
            if match:
                encounter_id = int(match.group(1))
                encounter_name = encounter_map[encounter_id]
                encounter_line_index = 0
            continue

        if "monwithform" in stripped or "pokemon" in stripped:
            in_encounterdata = True

        if in_encounterdata:
            if stripped == ".close":
                mon = ""
                in_encounterdata = False
                continue

            mon = "SPECIES_NONE"
            if stripped.startswith("pokemon"):
                mon = stripped.split("pokemon")[1].strip()
            elif stripped.startswith("monwithform"):
                mon = stripped.split("monwithform")[1].strip()
            elif stripped.startswith("encounter"):
                mon = stripped.split("encounter")[1].strip()
            elif stripped.startswith("encounterwithform"):
                mon = stripped.split("encounterwithform")[1].strip()
            else:
                print(f"[ERROR] parse mon on line: {stripped} in encounter {encounter_id}")
            
            comma = mon.find(",")
            if comma > 0:
                mon = mon[0:comma].strip()
            
            if mon == "SPECIES_NONE":
                encounter_line_index += 1
                continue
            
            # todo mimejr
            route_or_city = re.match(r'^DEX_(ROUTE_\d+(?:_\d+)?|[A-Z_]+_(CITY|TOWN))$', encounter_name)

            if encounter_line_index < 12:
                add_mon_encounter(mon_encounters, mon, route_or_city, "MORNING", encounter_name)
            elif encounter_line_index < 24:
                add_mon_encounter(mon_encounters, mon, route_or_city, "DAY", encounter_name)
            elif encounter_line_index < 36:
                add_mon_encounter(mon_encounters, mon, route_or_city, "NIGHT", encounter_name)
            elif encounter_line_index < 38:
                add_mon_encounter(mon_encounters, mon, route_or_city, "hoenn", encounter_name)
            elif encounter_line_index < 40:
                add_mon_encounter(mon_encounters, mon, route_or_city, "sinnoh", encounter_name)
            elif encounter_line_index < 45:
                add_mon_encounter(mon_encounters, mon, route_or_city, "surf", encounter_name)
            elif encounter_line_index < 47:
                add_mon_encounter(mon_encounters, mon, route_or_city, "rock_smash", encounter_name)
            elif encounter_line_index < 52:
                add_mon_encounter(mon_encounters, mon, route_or_city, "old_rod", encounter_name)
            elif encounter_line_index < 57:
                add_mon_encounter(mon_encounters, mon, route_or_city, "good_rod", encounter_name)
            elif encounter_line_index < 62:
                add_mon_encounter(mon_encounters, mon, route_or_city, "super_rod", encounter_name)
            elif encounter_line_index < 63:
                add_mon_encounter(mon_encounters, mon, route_or_city, "swarm_grass", encounter_name)
            elif encounter_line_index < 64:
                add_mon_encounter(mon_encounters, mon, route_or_city, "swarm_surf", encounter_name)
            elif encounter_line_index < 65:
                add_mon_encounter(mon_encounters, mon, route_or_city, "swarm_good_rod", encounter_name)
            elif encounter_line_index < 66:
                add_mon_encounter(mon_encounters, mon, route_or_city, "swarm_super_rod", encounter_name)
            else:
                 print(f"[ERROR] expected index line: {stripped} in encounter {encounter_id}")

            encounter_line_index += 1
            continue

    return mon_encounters


def parse_species(filepath):
    ordered_species = []
    excluded = {"SPECIES_NONE", "SPECIES_BAD_EGG", "SPECIES_EGG"}

    with open(filepath, "r") as f:
        for line in f:
            match = re.match(r"#define\s+(SPECIES_[A-Z0-9_]+)\s+\d+", line)
            if match:
                name = match.group(1)
                if name not in excluded:
                    ordered_species.append(name)

    return ordered_species


if __name__ == "__main__":
    file_path = '../../armips/data/encounters.s'
    parsed_encounters = parse_encounters(file_path)

    species_path = '../../include/constants/species.h'
    parsed_species = parse_species(species_path)

    with open("areadata.txt", "w") as f:
        for species in parsed_species:
            mon_entry = {
                "specialareas": {
                    "MORNING": set(),
                    "DAY": set(),
                    "NIGHT": set(),
                    "SPECIAL": set(),
                },
                "routesandcities": {
                    "MORNING": set(),
                    "DAY": set(),
                    "NIGHT": set(),
                    "SPECIAL": set(),
                }
            }

            if species in parsed_encounters:
                mon_entry = parsed_encounters[species]
            
            for area_type, encounters in mon_entry.items():
                for encounter_time, encounter_areas in encounters.items():
                    f.write(f"{area_type} {species}, DEX_{encounter_time}\n")
                    for encounter_area in encounter_areas:
                        f.write(f"    .word {encounter_area}\n")
                    f.write("    dexendareadata\n\n\n")
