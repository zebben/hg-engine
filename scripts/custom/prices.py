#!/usr/bin/env python3
import argparse, csv, json, math, re, sys
from collections import defaultdict

def slug(s: str) -> str:
    return re.sub(r'[^a-z0-9]', '', s.lower())

def parse_machine_map(machine_file_path: str):
    """
    Parses sMachineMoves[] C file to map ITEM_TMxxx / ITEM_TRxx -> MoveName (string).
    Only lines that have both MOVE_* token and a trailing // LABEL are considered.
    We keep labels strictly matching TM\d{2,3} or TR\d{2}.
    """
    tmtr_to_move = {}
    move_slug_to_display = {}
    pat = re.compile(r'^\s*MOVE_([A-Z0-9_]+)\s*,\s*//\s*([A-Z0-9_]+)')
    with open(machine_file_path, 'r', encoding='utf-8') as f:
        for line in f:
            m = pat.search(line)
            if not m:
                continue
            move_core, label = m.group(1), m.group(2)  # e.g., ('EARTHQUAKE', 'TR10') or ('MEGA_PUNCH','TM00')
            # Only accept plain TMxxx or TRxx (skip HMxx and special suffixed labels like TM100_SV)
            if re.fullmatch(r'TM\d{2,3}', label) or re.fullmatch(r'TR\d{2}', label):
                move_name = move_core.replace('_', ' ').title()
                if move_name == 'Will O Wisp':
                    move_name = 'Will-O-Wisp'
                if move_name == 'X Scissor':
                    move_name = 'X-Scissor'
                if move_name == 'U Turn':
                    move_name = 'U-turn'
                if move_name == 'Double Edge':
                    move_name = 'Double-Edge'
                tmtr_to_move[label] = move_name
                move_slug_to_display[slug(move_name)] = move_name
    return tmtr_to_move, move_slug_to_display

def load_distribution(learnsets_path: str):
    """
    Returns a dict: move_slug -> number of species that have it (LevelMoves or MachineMoves).
    """
    with open(learnsets_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    dist = defaultdict(int)
    for species, info in data.items():
        seen = set()
        for lm in info.get('LevelMoves', []) or []:
            mv = lm.get('Move')
            if isinstance(mv, str):
                seen.add(slug(mv))
        for mm in info.get('MachineMoves', []) or []:
            if isinstance(mm, str):
                seen.add(slug(mm))
        for mvslug in seen:
            dist[mvslug] += 1
    # compute cmin/cmax for normalization
    if dist:
        cmin = min(dist.values())
        cmax = max(dist.values())
    else:
        cmin = 1
        cmax = 1
    return dist, cmin, cmax

def round_to_100(x):
    return int(round(x / 100.0) * 100)

def clamp(x, lo, hi):
    return max(lo, min(hi, x))

def build_tier_sets():
    """
    Curated sets by slug. Edit to taste.
    """
    top = {
        'earthquake','closecombat','flareblitz','bravebird','hydropump','blizzard','hyperbeam','gigaimpact',
        'overheat','stoneedge','psychic','shadowball','thunderbolt','flamethrower','icebeam','scald','playrough',
        'swordsdance','nastyplot','calmmind','dragondance','stealthrock','trickroom','knockoff','sludgewave',
        'poisonjab','xscissor','darkpulse','bugbuzz','powergem','zenheadbutt','ironhead','drillrun','earthpower',
        'wildcharge','liquidation','phantomforce','dazzlinggleam','leafblade','seedbomb','hydrocannon','blastburn',
        'frenzyplant','focusblast','doubleedge'
    }
    high = {
        'aura sphere','irondefense','tailwind','encore','batonpass','willowisp','thunderwave','u-turn','shadowclaw',
        'energyball','flashcannon','xscissor','dragonpulse','sludgebomb','rockslide','rocktomb','bodyslam','gyroball',
        'psychicfangs','heatwave','tripleaxel','heavyslam','irondefense','zenheadbutt','bulkup','swordsdance'
    }
    utility = {
        'protect','substitute','taunt','roost','reflect','lightscreen','haze','gravity','trick','helpinghand',
        'sandstorm','sunnyday','raindance','safeguard','rest','attract','thief','recycle','flash','sleep talk',
        'u-turn','charge','psyshoc','psyshock','endure','curse','metal sound','encore','batonpass'
    }
    # normalize slugs
    def sluggify_set(S):
        return {slug(s) for s in S}
    return sluggify_set(top), sluggify_set(high), sluggify_set(utility)

def tier_multiplier(mvslug, top, high, utility):
    if mvslug in top: return 2.20
    if mvslug in high: return 1.60
    if mvslug in utility: return 1.25
    return 1.00

def rarity_factor(count, cmin, cmax):
    # rarer => higher. If all counts equal, factor=1.0
    if cmax == cmin:
        return 1.0
    score = 1.0 - ((count - cmin) / float(cmax - cmin))  # 0.0 (common) .. 1.0 (rarest)
    return 1.0 + 0.75 * score

def is_target_item(itemname: str):
    return itemname.startswith('ITEM_TM') or itemname.startswith('ITEM_TR')

def label_from_itemname(itemname: str):
    """
    ITEM_TM093 -> TM093
    ITEM_TR22  -> TR22
    If item has a suffix like ITEM_TM100_SV, returns None (script skips it).
    """
    m = re.fullmatch(r'ITEM_(TM\d{2,3}|TR\d{2})', itemname)
    return m.group(1) if m else None

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--items', required=True, help='Path to itemdata.csv')
    ap.add_argument('--learnsets', required=True, help='Path to learnsets.json')
    ap.add_argument('--machines', required=True, help='Path to machine_moves.c text containing sMachineMoves[]')
    ap.add_argument('--out', default='itemdata_priced.csv', help='Output CSV path')
    # knobs
    ap.add_argument('--tm-base', type=int, default=2000, help='Base price for TMs')
    ap.add_argument('--tr-base', type=int, default=2000, help='Base price for TRs')
    ap.add_argument('--tm-min', type=int, default=2000)
    ap.add_argument('--tm-max', type=int, default=9999)
    ap.add_argument('--tr-min', type=int, default=3000)
    ap.add_argument('--tr-max', type=int, default=9999)
    args = ap.parse_args()

    tmtr_to_move, move_slug_to_display = parse_machine_map(args.machines)
    dist, cmin, cmax = load_distribution(args.learnsets)
    top, high, util = build_tier_sets()

    rows = []
    with open(args.items, 'r', encoding='utf-8', newline='') as f:
        reader = csv.DictReader(f)
        fieldnames = reader.fieldnames
        if not fieldnames or 'ItemName' not in fieldnames or 'Price' not in fieldnames:
            print("ERROR: itemdata.csv must have headers including ItemName and Price", file=sys.stderr)
            sys.exit(2)
        for row in reader:
            name = row['ItemName']
            if is_target_item(name):
                label = label_from_itemname(name)
                # skip special labels not present in mapping (e.g., TM100_SV or absent)
                if label and label in tmtr_to_move:
                    mvname = tmtr_to_move[label]
                    mvslug = slug(mvname)
                    count = dist.get(mvslug, 1)
                    is_tm = label.startswith('TM')
                    base = args.tm_base if is_tm else args.tr_base
                    mult = tier_multiplier(mvslug, top, high, util)
                    rf = rarity_factor(count, cmin, cmax)
                    price = base * mult * rf
                    if is_tm:
                        price = clamp(price, args.tm_min, args.tm_max)
                    else:
                        price = clamp(price, args.tr_min, args.tr_max)
                    row['Price'] = str(round_to_100(price))
                # else: leave as-is
            rows.append(row)

    with open(args.out, 'w', encoding='utf-8', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)

    # Print a small summary
    changed = sum(1 for r in rows if (r['ItemName'].startswith('ITEM_TM') or r['ItemName'].startswith('ITEM_TR')))
    print(f"Processed {changed} TM/TR rows. Wrote {args.out}.")

if __name__ == '__main__':
    main()
