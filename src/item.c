#include "../include/types.h"
#include "../include/item.h"
#include "../include/message.h"
#include "../include/script.h"
#include "../include/config.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"

#define ITEM_DATA_MAX (ITEM_BRIARS_BOOK)
#define GFX_ITEM_DUMMY_ID ((MAX_TOTAL_ITEM_NUM) * 2 + 2)
#define GFX_ITEM_RETURN_ID ((MAX_TOTAL_ITEM_NUM+1) * 2 + 4)
#define NEW_ITEM_GFX (797)

static const u16 sMachineMoves[] = {
    // vanilla TMs
    MOVE_FOCUS_PUNCH,      // TM001
    MOVE_DRAGON_CLAW,      // TM002
    MOVE_WATER_PULSE,      // TM003
    MOVE_CALM_MIND,        // TM004
    MOVE_ROAR,             // TM005
    MOVE_SCALD,            // TM006
    MOVE_HAIL,             // TM007
    MOVE_BULK_UP,          // TM008
    MOVE_BULLET_SEED,      // TM009
    MOVE_HIDDEN_POWER,     // TM010
    MOVE_SUNNY_DAY,        // TM011
    MOVE_TAUNT,            // TM012
    MOVE_ICE_BEAM,         // TM013
    MOVE_PLAY_ROUGH,       // TM014
    MOVE_LOW_KICK,         // TM015
    MOVE_LIGHT_SCREEN,     // TM016
    MOVE_PROTECT,          // TM017
    MOVE_RAIN_DANCE,       // TM018
    MOVE_GIGA_DRAIN,       // TM019
    MOVE_SAFEGUARD,        // TM020
    MOVE_FRUSTRATION,      // TM021
    MOVE_LEECH_LIFE,       // TM022
    MOVE_IRON_TAIL,        // TM023
    MOVE_THUNDERBOLT,      // TM024
    MOVE_TRI_ATTACK,       // TM025
    MOVE_PSYSHOCK,         // TM026
    MOVE_RETURN,           // TM027
    MOVE_DIG,              // TM028
    MOVE_PSYCHIC,          // TM029
    MOVE_SHADOW_BALL,      // TM030
    MOVE_BRICK_BREAK,      // TM031
    MOVE_BODY_SLAM,        // TM032
    MOVE_REFLECT,          // TM033
    MOVE_SHOCK_WAVE,       // TM034
    MOVE_FLAMETHROWER,     // TM035
    MOVE_SLUDGE_BOMB,      // TM036
    MOVE_SANDSTORM,        // TM037
    MOVE_HELPING_HAND,     // TM038
    MOVE_ROCK_TOMB,        // TM039
    MOVE_AERIAL_ACE,       // TM040
    MOVE_TORMENT,          // TM041
    MOVE_FACADE,           // TM042
    MOVE_SECRET_POWER,     // TM043
    MOVE_REST,             // TM044
    MOVE_ATTRACT,          // TM045
    MOVE_THIEF,            // TM046
    MOVE_STEEL_WING,       // TM047
    MOVE_SKILL_SWAP,       // TM048
    MOVE_SNATCH,           // TM049
    MOVE_OVERHEAT,         // TM050
    MOVE_ROOST,            // TM051
    MOVE_CRUNCH,           // TM052
    MOVE_ENERGY_BALL,      // TM053
    MOVE_FALSE_SWIPE,      // TM054
    MOVE_BRINE,            // TM055
    MOVE_FLING,            // TM056
    MOVE_CHARGE_BEAM,      // TM057
    MOVE_ENDURE,           // TM058
    MOVE_DRAGON_PULSE,     // TM059
    MOVE_DRAIN_PUNCH,      // TM060
    MOVE_WILL_O_WISP,      // TM061
    MOVE_SILVER_WIND,      // TM062
    MOVE_EMBARGO,          // TM063
    MOVE_EXPLOSION,        // TM064
    MOVE_SHADOW_CLAW,      // TM065
    MOVE_PAYBACK,          // TM066
    MOVE_RECYCLE,          // TM067
    MOVE_FUTURE_SIGHT,     // TM068
    MOVE_ROCK_POLISH,      // TM069
    MOVE_FLASH,            // TM070
    MOVE_FAIRY_WIND,       // TM071
    MOVE_AVALANCHE,        // TM072
    MOVE_THUNDER_WAVE,     // TM073
    MOVE_GYRO_BALL,        // TM074
    MOVE_SWORDS_DANCE,     // TM075
    MOVE_STEALTH_ROCK,     // TM076
    MOVE_PSYCH_UP,         // TM077
    MOVE_CAPTIVATE,        // TM078
    MOVE_DARK_PULSE,       // TM079
    MOVE_ROCK_SLIDE,       // TM080
    MOVE_X_SCISSOR,        // TM081
    MOVE_SLEEP_TALK,       // TM082
    MOVE_NATURAL_GIFT,     // TM083
    MOVE_POISON_JAB,       // TM084
    MOVE_DREAM_EATER,      // TM085
    MOVE_GRASS_KNOT,       // TM086
    MOVE_SWAGGER,          // TM087
    MOVE_PLUCK,            // TM088
    MOVE_U_TURN,           // TM089
    MOVE_SUBSTITUTE,       // TM090
    MOVE_FLASH_CANNON,     // TM091
    MOVE_TRICK_ROOM,       // TM092

    // vanilla HMs
    MOVE_CUT,              // HM01
    MOVE_FLY,              // HM02
    MOVE_SURF,             // HM03
    MOVE_STRENGTH,         // HM04
    MOVE_WHIRLPOOL,        // HM05
    MOVE_ROCK_SMASH,       // HM06
    MOVE_WATERFALL,        // HM07
    MOVE_ROCK_CLIMB,       // HM08

    // HM07 (ORAS)
    MOVE_DIVE,             // HM07_ORAS

    // expansion TMs
    MOVE_MEGA_PUNCH,       // TM00
    MOVE_LEAF_BLADE,       // TM093
    MOVE_SEED_BOMB,        // TM094
    MOVE_DARKEST_LARIAT,   // TM095
    MOVE_EERIE_IMPULSE,    // TM096
    MOVE_PSYCHIC_FANGS,    // TM097
    MOVE_BREAKING_SWIPE,   // TM098
    MOVE_IRON_HEAD,        // TM099
    MOVE_DRAGON_DANCE,     // TM100

    MOVE_TACKLE,    // TM100_SV

    MOVE_POWER_GEM,        // TM101
    MOVE_BUG_BUZZ,         // TM102
    MOVE_TRIPLE_AXEL,      // TM103
    MOVE_IRON_DEFENSE,     // TM104
    MOVE_EARTH_POWER,      // TM105
    MOVE_DRILL_RUN,        // TM106
    MOVE_HEAVY_SLAM,       // TM107
    MOVE_HEAT_WAVE,        // TM108
    MOVE_TRICK,            // TM109
    MOVE_LIQUIDATION,      // TM110
    MOVE_GIGA_DRAIN,       // TM111
    MOVE_AURA_SPHERE,      // TM112
    MOVE_TAILWIND,         // TM113
    MOVE_CURSE,            // TM114
    MOVE_ZEN_HEADBUTT,     // TM115
    MOVE_DAZZLING_GLEAM,   // TM116
    MOVE_ELECTRO_BALL,     // TM117
    MOVE_ENCORE,           // TM118
    MOVE_METAL_SOUND,      // TM119
    MOVE_BLAZE_KICK,       // TM120
    MOVE_BATON_PASS,       // TM121
    MOVE_ELECTRIC_TERRAIN, // TM122
    MOVE_GRASSY_TERRAIN,   // TM123
    MOVE_PSYCHIC_TERRAIN,  // TM124
    MOVE_MISTY_TERRAIN,    // TM125
    MOVE_WILD_CHARGE,      // TM126
    MOVE_PHANTOM_FORCE,    // TM127
    MOVE_BLAST_BURN,       // TM128
    MOVE_HYDRO_CANNON,     // TM129
    MOVE_FRENZY_PLANT,     // TM130
    MOVE_CHARGE,           // TM131
    MOVE_HAZE,             // TM132
    MOVE_TOXIC,            // TM133
    MOVE_SAND_TOMB,        // TM134
    MOVE_SPITE,            // TM135
    MOVE_GRAVITY,          // TM136
    MOVE_SMACK_DOWN,       // TM137
    MOVE_SCORCHING_SANDS,  // TM138
    MOVE_KNOCK_OFF,        // TM139
    MOVE_BUG_BITE,         // TM140
    MOVE_SUPER_FANG,       // TM141
    MOVE_VACUUM_WAVE,      // TM142
    MOVE_LUNGE,            // TM143
    MOVE_HIGH_HORSEPOWER,  // TM144
    MOVE_ICICLE_SPEAR,     // TM145
    MOVE_HEAT_CRASH,       // TM146
    MOVE_SOLAR_BLADE,      // TM147
    MOVE_WEATHER_BALL,     // TM148
    MOVE_GRASSY_GLIDE,     // TM149
    MOVE_BURNING_JEALOUSY, // TM150
    MOVE_FLIP_TURN,        // TM151
    MOVE_DUAL_WINGBEAT,    // TM152
    MOVE_MISTY_EXPLOSION,  // TM153
    MOVE_PAIN_SPLIT,       // TM154
    MOVE_SLUDGE_WAVE,      // TM155
    MOVE_DOUBLE_EDGE,      // TM156
    MOVE_SUPERCELL_SLAM,   // TM157
    MOVE_TACKLE,   // TM158
    MOVE_TACKLE,   // TM159
    MOVE_TACKLE,      // TM160
    MOVE_TACKLE,      // TM161
    MOVE_TACKLE,  // TM162
    MOVE_TACKLE,    // TM163
    MOVE_TACKLE,  // TM164
    MOVE_TACKLE,   // TM165
    MOVE_TACKLE,      // TM166
    MOVE_TACKLE,           // TM167
    MOVE_TACKLE,       // TM168
    MOVE_TACKLE,     // TM169
    MOVE_TACKLE,       // TM170
    MOVE_TACKLE,       // TM171
    MOVE_TACKLE,             // TM172
    MOVE_TACKLE,           // TM173
    MOVE_TACKLE,             // TM174
    MOVE_TACKLE,            // TM175
    MOVE_TACKLE,        // TM176
    MOVE_TACKLE,            // TM177
    MOVE_TACKLE,          // TM178
    MOVE_TACKLE,       // TM179
    MOVE_TACKLE,        // TM180
    MOVE_TACKLE,        // TM181
    MOVE_TACKLE,         // TM182
    MOVE_TACKLE,       // TM183
    MOVE_TACKLE,      // TM184
    MOVE_TACKLE,            // TM185
    MOVE_TACKLE,  // TM186
    MOVE_TACKLE,     // TM187
    MOVE_TACKLE,            // TM188
    MOVE_TACKLE,       // TM189
    MOVE_TACKLE,      // TM190
    MOVE_TACKLE,           // TM191
    MOVE_TACKLE,      // TM192
    MOVE_TACKLE,     // TM193
    MOVE_TACKLE,     // TM194
    MOVE_TACKLE, // TM195
    MOVE_TACKLE,        // TM196
    MOVE_TACKLE,    // TM197
    MOVE_TACKLE,      // TM198
    MOVE_TACKLE,         // TM199
    MOVE_TACKLE,       // TM200
    MOVE_TACKLE,  // TM201
    MOVE_TACKLE,       // TM202
    MOVE_TACKLE,         // TM203
    MOVE_TACKLE,      // TM204
    MOVE_TACKLE,         // TM205
    MOVE_TACKLE,   // TM206
    MOVE_TACKLE,     // TM207
    MOVE_TACKLE,        // TM208
    MOVE_TACKLE,      // TM209
    MOVE_TACKLE,   // TM210
    MOVE_TACKLE,       // TM211
    MOVE_TACKLE,      // TM212
    MOVE_TACKLE,         // TM213
    MOVE_TACKLE,      // TM214
    MOVE_TACKLE,  // TM215
    MOVE_TACKLE,    // TM216
    MOVE_TACKLE,     // TM217
    MOVE_TACKLE,  // TM218
    MOVE_TACKLE,    // TM219
    MOVE_TACKLE,      // TM220
    MOVE_TACKLE,      // TM221
    MOVE_TACKLE,   // TM222
    MOVE_TACKLE,      // TM223
    MOVE_TACKLE,            // TM224
    MOVE_TACKLE,       // TM225
    MOVE_TACKLE,     // TM226
    MOVE_TACKLE,   // TM227
    MOVE_TACKLE,    // TM228
    MOVE_TACKLE,       // TM229

    // TRs
    MOVE_SWORDS_DANCE,     // TR00
    MOVE_EXTREME_SPEED,    // TR01
    MOVE_TOXIC,            // TR02
    MOVE_HYDRO_PUMP,       // TR03
    MOVE_SOLAR_BEAM,       // TR04
    MOVE_HYPER_BEAM,       // TR05
    MOVE_BLIZZARD,         // TR06
    MOVE_THUNDER,          // TR07
    MOVE_GIGA_IMPACT,      // TR08 
    MOVE_PETAL_BLIZZARD,   // TR09
    MOVE_EARTHQUAKE,       // TR10
    MOVE_ROCK_SLIDE,       // TR11
    MOVE_AGILITY,          // TR12
    MOVE_THUNDER_WAVE,     // TR13 
    MOVE_WATER_PULSE,      // TR14 
    MOVE_FIRE_BLAST,       // TR15
    MOVE_GIGA_DRAIN,       // TR16 
    MOVE_AMNESIA,          // TR17
    MOVE_SHOCK_WAVE,       // TR18
    MOVE_FEATHER_DANCE,    // TR19
    MOVE_ENDEAVOR,         // TR20
    MOVE_REVERSAL,         // TR21
    MOVE_OVERHEAT,         // TR22
    MOVE_SPIKES,           // TR23
    MOVE_OUTRAGE,          // TR24
    MOVE_RAZOR_WIND,       // TR25
    MOVE_ENDURE,           // TR26
    MOVE_ELECTRO_BALL,     // TR27
    MOVE_MEGAHORN,         // TR28
    MOVE_GUNK_SHOT,        // TR29
    MOVE_STONE_EDGE,       // TR30
    MOVE_IRON_TAIL,        // TR31
    MOVE_UPROAR,           // TR32 
    MOVE_HYPER_VOICE,      // TR33
    MOVE_COSMIC_POWER,     // TR34
    MOVE_MUDDY_WATER,      // TR35
    MOVE_IRON_DEFENSE,     // TR36
    MOVE_TAUNT,            // TR37
    MOVE_FOUL_PLAY,        // TR38
    MOVE_SUPERPOWER,       // TR39
    MOVE_EXPANDING_FORCE,  // TR40
    MOVE_WORK_UP,          // TR41
    MOVE_CLOSE_COMBAT,     // TR42
    MOVE_TOXIC_SPIKES,     // TR43
    MOVE_FLARE_BLITZ,      // TR44
    MOVE_FOCUS_BLAST,      // TR45
    MOVE_BRAVE_BIRD,       // TR46
    MOVE_NASTY_PLOT,       // TR47
    MOVE_LEAF_STORM,       // TR48
    MOVE_POWER_WHIP,       // TR49
    MOVE_TRICK_ROOM,       // TR50 
    MOVE_TACKLE,       // TR51
    MOVE_TACKLE,     // TR52
    MOVE_TACKLE,        // TR53
    MOVE_TACKLE,          // TR54
    MOVE_TACKLE,     // TR55
    MOVE_TACKLE,      // TR56
    MOVE_TACKLE,       // TR57
    MOVE_TACKLE,       // TR58
    MOVE_TACKLE,        // TR59
    MOVE_TACKLE,        // TR60
    MOVE_TACKLE,         // TR61
    MOVE_TACKLE,     // TR62
    MOVE_TACKLE,        // TR63
    MOVE_TACKLE,      // TR64
    MOVE_TACKLE,      // TR65
    MOVE_TACKLE,       // TR66
    MOVE_TACKLE,      // TR67
    MOVE_TACKLE,       // TR68
    MOVE_TACKLE,     // TR69
    MOVE_TACKLE,     // TR70
    MOVE_TACKLE,       // TR71
    MOVE_TACKLE,       // TR72
    MOVE_TACKLE,        // TR73
    MOVE_TACKLE,        // TR74
    MOVE_TACKLE,       // TR75
    MOVE_TACKLE,     // TR76
    MOVE_TACKLE,       // TR77
    MOVE_TACKLE,      // TR78
    MOVE_TACKLE,       // TR79
    MOVE_TACKLE,     // TR80
    MOVE_TACKLE,        // TR81
    MOVE_TACKLE,     // TR82
    MOVE_TACKLE,      // TR83
    MOVE_TACKLE,            // TR84
    MOVE_TACKLE,          // TR85
    MOVE_TACKLE,      // TR86
    MOVE_TACKLE,        // TR87
    MOVE_TACKLE,       // TR88
    MOVE_TACKLE,        // TR89
    MOVE_TACKLE,       // TR90
    MOVE_TACKLE,     // TR91
    MOVE_TACKLE,   // TR92
    MOVE_TACKLE,   // TR93
    MOVE_TACKLE,  // TR94
    MOVE_TACKLE,      // TR95
    MOVE_TACKLE,      // TR96
    MOVE_TACKLE,    // TR97
    MOVE_TACKLE,      // TR98
    MOVE_TACKLE,       // TR99
};

u16 GetItemIndex(u16 item, u16 type);
void *GetItemArcData(u16 item, u16 type, u32 heap_id);
u16 ItemToMachineMove(u16 itemId);
//void *LONG_CALL ItemDataTableLoad(int heapID);
void ItemMenuUseFunc_RevealGlass(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL ItemFieldUseFunc_RevealGlass(struct ItemFieldUseData *data);
void *_CreateRevealGlassWork(FieldSystem *fieldSystem);
void ItemMenuUseFunc_DNASplicers(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL ItemFieldUseFunc_DNASplicers(struct ItemFieldUseData *data);
void *_CreateDNASplicersWork(FieldSystem *fieldSystem);
void ItemMenuUseFunc_AbilityCapsule(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
void ItemMenuUseFunc_Mint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_Nectar(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);
void ItemMenuUseFunc_RotomCatalog(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED);

// menu / field / check
const struct ItemUseFuncDat sItemFieldUseFuncs[] = {
    { NULL, ItemFieldUseFunc_Generic, NULL },
    { ItemMenuUseFunc_HealingItem, NULL, NULL },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_Bicycle, ItemFieldUseFunc_Bicycle, ItemCheckUseFunc_Bicycle },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_TMHM, NULL, NULL },
    { ItemMenuUseFunc_Mail, NULL, NULL },
    { ItemMenuUseFunc_Berry, NULL, ItemCheckUseFunc_Berry },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_PalPad, ItemFieldUseFunc_PalPad, NULL },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_Honey, NULL, NULL },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_OldRod, ItemFieldUseFunc_OldRod, ItemCheckUseFunc_FishingRod },
    { ItemMenuUseFunc_GoodRod, ItemFieldUseFunc_GoodRod, ItemCheckUseFunc_FishingRod },
    { ItemMenuUseFunc_SuperRod, ItemFieldUseFunc_SuperRod, ItemCheckUseFunc_FishingRod },
    { NULL, ItemFieldUseFunc_Generic, NULL },
    { ItemMenuUseFunc_EvoStone, NULL, NULL },
    { ItemMenuUseFunc_EscapeRope, NULL, ItemCheckUseFunc_EscapeRope },
    { NULL, NULL, ItemCheckUseFunc_Dummy },
    { ItemMenuUseFunc_ApricornBox, ItemFieldUseFunc_ApricornBox, NULL },
    { ItemMenuUseFunc_BerryPots, ItemFieldUseFunc_BerryPots, NULL },
    { ItemMenuUseFunc_UnownReport, ItemFieldUseFunc_UnownReport, NULL },
    { ItemMenuUseFunc_DowsingMchn, ItemFieldUseFunc_DowsingMchn, NULL },
    { NULL, ItemFieldUseFunc_GbSounds, NULL },
    { ItemMenuUseFunc_Gracidea, ItemFieldUseFunc_Gracidea, NULL },
    { ItemMenuUseFunc_VSRecorder, ItemFieldUseFunc_VSRecorder, NULL },
    // new item use entries
    { ItemMenuUseFunc_RevealGlass, ItemFieldUseFunc_RevealGlass, NULL },
    { ItemMenuUseFunc_DNASplicers, ItemFieldUseFunc_DNASplicers, NULL },
    { ItemMenuUseFunc_AbilityCapsule, NULL, NULL },
    { ItemMenuUseFunc_Mint, NULL, NULL },
    { ItemMenuUseFunc_Nectar, NULL, NULL },
    { ItemMenuUseFunc_RotomCatalog, NULL, NULL },
    { ItemFieldUseFunc_Generic, NULL, NULL },
};

u16 GetItemIndex(u16 item, u16 type)
{
    u16 ret = 0;
    switch (type)
    {
    case ITEM_GET_DATA:
        if (item == ITEM_DUMMY_ID || item == ITEM_RETURN_ID)
        {
            break;
        }
        ret = item;
        //if (item > ITEM_DATA_MAX)
        //    ret = ITEM_DATA_ENTRIES + (item - ITEM_DATA_MAX); // each new item gets a new data entry--537 maps to 514 + (537-536) = 515+
        //else
        //    ret = ItemDataIndex[item].arc_data;
        return ret;

    case ITEM_GET_ICON_CGX:
        if (item == ITEM_DUMMY_ID)
        {
            return (GFX_ITEM_DUMMY_ID);
        }
        if (item == ITEM_RETURN_ID)
        {
            return (GFX_ITEM_RETURN_ID);
        }
        ret = item * 2 + 2;
        //if (item > ITEM_DATA_MAX)
        //    ret = NEW_ITEM_GFX + (item - ITEM_DATA_MAX - 1) * 2;
        //else
        //    ret = ItemDataIndex[item].arc_cgx;
        return ret;

    case ITEM_GET_ICON_PAL:
        if (item == ITEM_DUMMY_ID)
        {
            return (GFX_ITEM_DUMMY_ID+1);
        }
        if (item == ITEM_RETURN_ID)
        {
            return (GFX_ITEM_RETURN_ID+1);
        }
        ret = item * 2 + 3;
        //if (item > ITEM_DATA_MAX)
        //    ret = NEW_ITEM_GFX+1 + (item - ITEM_DATA_MAX - 1) * 2;
        //else
        //    ret = ItemDataIndex[item].arc_pal;
        return ret;

    case ITEM_GET_AGB_NUM: // for pal park purposes
        if (item == ITEM_DUMMY_ID || item == ITEM_RETURN_ID)
        {
            break;
        }
        if (item > ITEM_DATA_MAX)
            ret = 0;
        else
            ret = ItemDataIndex[item].agb_id;
        return ret;
    }
    return 0;
}

void *GetItemArcData(u16 item, u16 type, u32 heap_id)
{
    int dataid, picid,palid;

    //if (item > ITEM_DATA_MAX)
    //{
        dataid = item;
        picid = item * 2 + 2;
        palid = item * 2 + 3;
    //}
    //else
    //{
    //    dataid = ItemDataIndex[item].arc_data;
    //    picid = ItemDataIndex[item].arc_cgx;
    //    palid = ItemDataIndex[item].arc_pal;
    //}

    switch (type)
    {
    case ITEM_GET_DATA:
        return ArchiveDataLoadMalloc(ARC_ITEM_DATA, dataid, heap_id);
    case ITEM_GET_ICON_CGX:
        return ArchiveDataLoadMalloc(ARC_ITEM_GFX_DATA, picid, heap_id);
    case ITEM_GET_ICON_PAL:
        return ArchiveDataLoadMalloc(ARC_ITEM_GFX_DATA, palid, heap_id);
    }
    return NULL;
}

void LONG_CALL GetItemDescIntoString(String *dest, u16 itemId, u16 heapId) {
    enum ItemGeneration gen = ITEM_GENERATION(itemId);
    u32 fileId = (gen == CUSTOM)
        ? MSG_DATA_ITEM_DESCRIPTION_CUSTOM
        : MSG_DATA_ITEM_FILE(MSG_DATA_ITEM_DESCRIPTION_GEN4, gen);
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, fileId, heapId);
    u32 offset = ITEM_MSG_OFFSET(itemId);
    ReadMsgDataIntoString(msgData, offset, dest);
    DestroyMsgData(msgData);
}

void *LONG_CALL ItemDataTableLoad(int heapID)
{
    int max;

    max = GetItemIndex(NEW_ITEM_MAX, ITEM_GET_DATA);

    return ArchiveDataLoadMallocOfs(ARC_ITEM_DATA, 0, heapID, 0, sizeof(ITEMDATA) * max);//800757Ch
}

/**
 * @brief converts an item id to its corresponding TM/HM/TR index within sMachineMoves
 * @see   pret/pokeheartgold ItemToTMHMId
 */
u16 ItemToMachineMoveIndex(u16 itemId) {
    if (itemId >= ITEM_TM001 && itemId <= ITEM_HM08) {
        return (itemId - ITEM_TM001);
    }
    if (itemId == ITEM_HM07_ORAS) {
        return 100;
    }
    if (itemId == ITEM_TM00) {
        return 101;
    }
    if (itemId >= ITEM_TM093 && itemId <= ITEM_TM095) {
        return itemId - ITEM_TM093 + 102;
    }
    if (itemId >= ITEM_TM096 && itemId <= ITEM_TM100) {
        return itemId - ITEM_TM096 + 105;
    }
    if (itemId >= ITEM_TM100_SV && itemId <= ITEM_TM229) {
        return itemId - ITEM_TM100_SV + 110;
    }
    if (itemId >= ITEM_TR00 && itemId <= ITEM_TR99) {
        return itemId - ITEM_TR00 + 240;
    }

    return 0;
}

/**
 * @brief converts an item id to its corresponding TM/HM/TR move id
 * @see   pret/pokeheartgold TMHMGetMove
 */
u16 ItemToMachineMove(u16 itemId) {
    if (itemId < ITEM_TM001) {
        return MOVE_NONE;
    }

    u16 index = ItemToMachineMoveIndex(itemId);
    if (index >= sizeof(sMachineMoves) + 1) {
        return MOVE_NONE;
    }
    return sMachineMoves[index];
}

BOOL MoveIsHM(u16 moveId) {
    for (u8 i = 0; i < NUM_HMS; i++) {
        if (sMachineMoves[i + ITEM_HM01 - ITEM_TM001] == moveId) {
#if defined(REUSABLE_TMS) && defined(DELETABLE_HMS)
            return FALSE;
#else
            return TRUE;
#endif
        }
    }
    return FALSE;
}

void ItemMenuUseFunc_RevealGlass(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; //TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_REVEAL_GLASS);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

BOOL ItemFieldUseFunc_RevealGlass(struct ItemFieldUseData *data)
{
    RegisteredItem_CreateGoToAppTask(data, (FieldApplicationWorkCtor)_CreateRevealGlassWork, FALSE);
    return TRUE;
}

void *_CreateRevealGlassWork(FieldSystem *fieldSystem)
{
    return sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_REVEAL_GLASS);
}

void ItemMenuUseFunc_DNASplicers(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_DNA_SPLICERS_FUSE); // TODO: handle correct item
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

BOOL ItemFieldUseFunc_DNASplicers(struct ItemFieldUseData *data)
{
    RegisteredItem_CreateGoToAppTask(data, (FieldApplicationWorkCtor)_CreateDNASplicersWork, FALSE);
    return TRUE;
}

void *_CreateDNASplicersWork(FieldSystem *fieldSystem)
{
    return sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_DNA_SPLICERS_FUSE); // TODO: handle correct item
}

void ItemMenuUseFunc_AbilityCapsule(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_ABILITY_CAPSULE);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_Mint(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; // TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, data->itemId);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_Nectar(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; //TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, data->itemId);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}

void ItemMenuUseFunc_RotomCatalog(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2 UNUSED)
{
    FieldSystem *fieldSystem = data->taskManager->fieldSystem; //TaskManager_GetFieldSystem(data->taskManager);
    struct BagViewAppWork *env = data->taskManager->env; //TaskManager_GetEnvironment(data->taskManager);
    env->atexit_TaskEnv = sub_0203FAE8(fieldSystem, HEAPID_WORLD, ITEM_ROTOM_CATALOG);
    // debug_printf("HAHAGAGA\n");
    // EventSet_Script(fieldSystem, 675, NULL);
    sub_0203C8F0(env, 0x0203CA9C | 1);
}