#include "../include/randomizer.h"

#include "../include/battle.h"
#include "../include/config.h"
#include "../include/constants/ability.h"
#include "../include/constants/file.h"
#include "../include/constants/generated/learnsets.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/message.h"
#include "../include/pokemon.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/sprite.h"
#include "../include/types.h"

extern u32 sStarterSpecies[3];

#define STARTER_CHOICE_MSG_BANK          190
#define STARTER_CHOICE_DYNAMIC_MSG_FIRST 1
#define STARTER_CHOICE_DYNAMIC_MSG_LAST  6

#ifdef MEGA_EVOLUTIONS
struct MegaStruct {
    u16 monindex;
    u16 itemindex : 11;
    u16 form : 5;
};

static const struct MegaStruct sRandomizerMegaTable[] = {
    {
        .monindex = SPECIES_VENUSAUR,
        .itemindex = ITEM_VENUSAURITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_CHARIZARD,
        .itemindex = ITEM_CHARIZARDITE_X,
        .form = 1,
    }, // x
    {
        .monindex = SPECIES_CHARIZARD,
        .itemindex = ITEM_CHARIZARDITE_Y,
        .form = 2,
    }, // y
    {
        .monindex = SPECIES_BLASTOISE,
        .itemindex = ITEM_BLASTOISINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BEEDRILL,
        .itemindex = ITEM_BEEDRILLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_PIDGEOT,
        .itemindex = ITEM_PIDGEOTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ALAKAZAM,
        .itemindex = ITEM_ALAKAZITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SLOWBRO,
        .itemindex = ITEM_SLOWBRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GENGAR,
        .itemindex = ITEM_GENGARITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_KANGASKHAN,
        .itemindex = ITEM_KANGASKHANITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_PINSIR,
        .itemindex = ITEM_PINSIRITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GYARADOS,
        .itemindex = ITEM_GYARADOSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AERODACTYL,
        .itemindex = ITEM_AERODACTYLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MEWTWO,
        .itemindex = ITEM_MEWTWONITE_X,
        .form = 1,
    }, // x
    {
        .monindex = SPECIES_MEWTWO,
        .itemindex = ITEM_MEWTWONITE_Y,
        .form = 2,
    }, // y
    {
        .monindex = SPECIES_AMPHAROS,
        .itemindex = ITEM_AMPHAROSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_STEELIX,
        .itemindex = ITEM_STEELIXITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SCIZOR,
        .itemindex = ITEM_SCIZORITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_HERACROSS,
        .itemindex = ITEM_HERACRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_HOUNDOOM,
        .itemindex = ITEM_HOUNDOOMINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_TYRANITAR,
        .itemindex = ITEM_TYRANITARITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SCEPTILE,
        .itemindex = ITEM_SCEPTILITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BLAZIKEN,
        .itemindex = ITEM_BLAZIKENITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SWAMPERT,
        .itemindex = ITEM_SWAMPERTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GARDEVOIR,
        .itemindex = ITEM_GARDEVOIRITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SABLEYE,
        .itemindex = ITEM_SABLENITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MAWILE,
        .itemindex = ITEM_MAWILITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AGGRON,
        .itemindex = ITEM_AGGRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MEDICHAM,
        .itemindex = ITEM_MEDICHAMITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MANECTRIC,
        .itemindex = ITEM_MANECTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SHARPEDO,
        .itemindex = ITEM_SHARPEDONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_CAMERUPT,
        .itemindex = ITEM_CAMERUPTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ALTARIA,
        .itemindex = ITEM_ALTARIANITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BANETTE,
        .itemindex = ITEM_BANETTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ABSOL,
        .itemindex = ITEM_ABSOLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GLALIE,
        .itemindex = ITEM_GLALITITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SALAMENCE,
        .itemindex = ITEM_SALAMENCITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_METAGROSS,
        .itemindex = ITEM_METAGROSSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LATIAS,
        .itemindex = ITEM_LATIASITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LATIOS,
        .itemindex = ITEM_LATIOSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LOPUNNY,
        .itemindex = ITEM_LOPUNNITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GARCHOMP,
        .itemindex = ITEM_GARCHOMPITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LUCARIO,
        .itemindex = ITEM_LUCARIONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ABOMASNOW,
        .itemindex = ITEM_ABOMASITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GALLADE,
        .itemindex = ITEM_GALLADITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AUDINO,
        .itemindex = ITEM_AUDINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_DIANCIE,
        .itemindex = ITEM_DIANCITE,
        .form = 1,
    },
};
#endif

MessageFormat LONG_CALL *MessageFormat_New(int heapID);
void LONG_CALL BufferSpeciesName(MessageFormat *messageFormat, u32 idx, u16 species);
String LONG_CALL *ReadMsgData_ExpandPlaceholders(MessageFormat *messageFormat, MsgData *msgData, u32 msgno, int heapID);
void LONG_CALL MessageFormat_Delete(MessageFormat *messageFormat);

static u16 Randomizer_GetMegaStone(u16 species, u8 form)
{
#ifdef MEGA_EVOLUTIONS
    for (u32 i = 0; i < NELEMS(sRandomizerMegaTable); i++) {
        if (sRandomizerMegaTable[i].monindex == species && sRandomizerMegaTable[i].form == form) {
            return sRandomizerMegaTable[i].itemindex;
        }
    }
#endif
    return ITEM_NONE;
}

static BOOL Randomizer_IsMegaAdjustedSpecies(u16 adjustedSpecies)
{
    return adjustedSpecies >= SPECIES_MEGA_START && adjustedSpecies <= MAX_MEGA_NUM;
}

static BOOL Randomizer_IsValidBaseSpecies(u16 species)
{
    return species > SPECIES_NONE && species <= MAX_MON_NUM
        && (species < SPECIES_EGG || species >= SPECIES_VICTINI);
}

u8 LONG_CALL Randomizer_GetRandomForm(u16 baseSpecies, u32 seed)
{
    u16 formTable[32];
    u8 validForms[32];
    u8 validFormCount = 0;
    BOOL allowTrainerMegas = FALSE;
#ifndef RANDOMIZER_BLOCK_MEGAS_IN_TRAINERS
    allowTrainerMegas = TRUE;
#endif

    if (!Randomizer_IsValidBaseSpecies(baseSpecies)) {
        return 0;
    }

    validForms[validFormCount++] = 0;

    ReadFromNarcMemberByIdPair(formTable, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16) * (baseSpecies * 32), sizeof(u16) * 32);

    for (u8 i = 0; i < 32; i++) {
        if (formTable[i] == 0) {
            break;
        }
        u16 adjusted_species = formTable[i] & ~NEEDS_REVERSION;

        if (formTable[i] & NEEDS_REVERSION) {
#ifdef RANDOMIZER_BLOCK_MEGAS_IN_TRAINERS
            if (allowTrainerMegas) {
                continue;
            }
#endif
            if (!allowTrainerMegas || !Randomizer_IsMegaAdjustedSpecies(adjusted_species) || Randomizer_GetMegaStone(baseSpecies, i + 1) == ITEM_NONE) {
                continue;
            }
        }
        validForms[validFormCount++] = i + 1;
    }

    if (validFormCount <= 1) {
        return 0;
    }

    u32 savedSeed = gf_get_seed();
    gf_srand(seed);
    u8 selectedIndex = gf_rand() % validFormCount;
    gf_srand(savedSeed);

    return validForms[selectedIndex];
}

static u16 Randomizer_GetBSTToleranceForLevel(u16 level)
{
    if (level <= RANDOMIZER_TIER1_MAX_LEVEL) {
        return RANDOMIZER_TIER1_BST_TOLERANCE;
    } else if (level <= RANDOMIZER_TIER2_MAX_LEVEL) {
        return RANDOMIZER_TIER2_BST_TOLERANCE;
    } else if (level <= RANDOMIZER_TIER3_MAX_LEVEL) {
        return RANDOMIZER_TIER3_BST_TOLERANCE;
    } else {
        return RANDOMIZER_TIER4_BST_TOLERANCE;
    }
}

#ifdef RANDOMIZER_TYPE_MATCHING
static BOOL Randomizer_TypesHaveAffinity(u8 type1, u8 type2)
{
    // Fairy ↔ Normal, Fairy ↔ Psychic
    if ((type1 == TYPE_FAIRY && (type2 == TYPE_NORMAL || type2 == TYPE_PSYCHIC)) || (type2 == TYPE_FAIRY && (type1 == TYPE_NORMAL || type1 == TYPE_PSYCHIC))) {
        return TRUE;
    }
    // Fire ↔ Ground, Fire ↔ Rock
    if ((type1 == TYPE_FIRE && (type2 == TYPE_GROUND || type2 == TYPE_ROCK)) || (type2 == TYPE_FIRE && (type1 == TYPE_GROUND || type1 == TYPE_ROCK))) {
        return TRUE;
    }
    // Electric ↔ Flying
    if ((type1 == TYPE_ELECTRIC && type2 == TYPE_FLYING) || (type2 == TYPE_ELECTRIC && type1 == TYPE_FLYING)) {
        return TRUE;
    }
    // Ice ↔ Water
    if ((type1 == TYPE_ICE && type2 == TYPE_WATER) || (type2 == TYPE_ICE && type1 == TYPE_WATER)) {
        return TRUE;
    }

    return FALSE;
}

static BOOL Randomizer_IsTypeCompatible(u16 originalSpecies, u16 candidateSpecies, u16 *typesTable)
{
    // Types table is packed as (type2 << 8) | type1
    u16 originalPacked = typesTable[originalSpecies];
    u16 candidatePacked = typesTable[candidateSpecies];

    u8 originalType1 = originalPacked & 0xFF;
    u8 originalType2 = (originalPacked >> 8) & 0xFF;
    u8 candidateType1 = candidatePacked & 0xFF;
    u8 candidateType2 = (candidatePacked >> 8) & 0xFF;

    if (originalType1 == candidateType1 || originalType1 == candidateType2 || originalType2 == candidateType1 || originalType2 == candidateType2) {
        return TRUE;
    }

    return Randomizer_TypesHaveAffinity(originalType1, candidateType1) || Randomizer_TypesHaveAffinity(originalType1, candidateType2)
        || Randomizer_TypesHaveAffinity(originalType2, candidateType1) || Randomizer_TypesHaveAffinity(originalType2, candidateType2);
}
#endif

static BOOL Randomizer_ShouldBanSpecies(u16 species, BOOL isWild)
{
    if (!Randomizer_IsValidBaseSpecies(species)) {
        return TRUE;
    }

    BOOL isLegendary = IS_SPECIES_LEGENDARY(species);
    BOOL isMythical = IS_SPECIES_MYTHICAL(species);
    BOOL isSublegend = IS_SPECIES_SUBLEGEND(species);
    BOOL isMega = (species >= SPECIES_MEGA_START && species <= MAX_MEGA_NUM);

    if (isWild) {
#ifdef RANDOMIZER_BLOCK_LEGENDARIES_IN_WILD
        if (isLegendary) {
            return TRUE;
        }
#endif

#ifdef RANDOMIZER_BLOCK_MYTHICALS_IN_WILD
        if (isMythical) {
            return TRUE;
        }
#endif

#ifdef RANDOMIZER_BLOCK_SUBLEGENDS_IN_WILD
        if (isSublegend) {
            return TRUE;
        }
#endif
        if (isMega) {
            return TRUE;
        }
    } else {
        // Trainer
#ifdef RANDOMIZER_BLOCK_LEGENDARIES_IN_TRAINERS
        if (isLegendary) {
            return TRUE;
        }
#endif

#ifdef RANDOMIZER_BLOCK_MYTHICALS_IN_TRAINERS
        if (isMythical) {
            return TRUE;
        }
#endif

#ifdef RANDOMIZER_BLOCK_SUBLEGENDS_IN_TRAINERS
        if (isSublegend) {
            return TRUE;
        }
#endif
#ifdef RANDOMIZER_BLOCK_MEGAS_IN_TRAINERS
        if (isMega) {
            return TRUE;
        }
#endif
    }

    return FALSE;
}

static u16 Randomizer_BuildSpeciesPool(u16 originalSpecies, u16 level, BOOL isWild, u16 *poolOut, u16 maxPoolSize)
{
    u16 poolCount = 0;
    u16 species;
    u16 originalBst;
    u16 speciesBst;
    u16 minBst;
    u16 maxBst;
    u16 baseOriginal;
    u16 lowerTolerance;
    u16 upperTolerance;

    if (originalSpecies == SPECIES_NONE || originalSpecies == SPECIES_BAD_EGG || originalSpecies == SPECIES_EGG || originalSpecies > MAX_SPECIES_INCLUDING_FORMS) {
        return 0;
    }

    if (originalSpecies > MAX_MON_NUM) {
        baseOriginal = GetBaseSpeciesFromAdjustedForm(originalSpecies);
    } else {
        baseOriginal = originalSpecies;
    }

    if (!Randomizer_IsValidBaseSpecies(baseOriginal)) {
        return 0;
    }

    u16 bstTable[MAX_MON_NUM + 1];
    ReadFromNarcMemberByIdPair(bstTable, ARC_CODE_ADDONS, CODE_ADDON_SPECIES_BST, 0, sizeof(u16) * (MAX_MON_NUM + 1));

#ifdef RANDOMIZER_TYPE_MATCHING
    u16 typesTable[MAX_MON_NUM + 1];
    ReadFromNarcMemberByIdPair(typesTable, ARC_CODE_ADDONS, CODE_ADDON_SPECIES_TYPES, 0, sizeof(u16) * (MAX_MON_NUM + 1));
#endif

    originalBst = bstTable[baseOriginal];

    lowerTolerance = RANDOMIZER_TIER1_BST_TOLERANCE;
    upperTolerance = Randomizer_GetBSTToleranceForLevel(level);

    for (u8 attempt = 0; attempt < 2; attempt++) {
        poolCount = 0;
        minBst = (originalBst * (100 - lowerTolerance)) / 100;
        maxBst = (originalBst * (100 + upperTolerance)) / 100;

        for (species = 1; species <= MAX_MON_NUM && poolCount < maxPoolSize; species++) {
            if (Randomizer_ShouldBanSpecies(species, isWild)) {
                continue;
            }

            speciesBst = bstTable[species];
            if (speciesBst < minBst || speciesBst > maxBst) {
                continue;
            }

#ifdef RANDOMIZER_TYPE_MATCHING
            if (!Randomizer_IsTypeCompatible(baseOriginal, species, typesTable)) {
                continue;
            }
#endif

            poolOut[poolCount++] = species;
        }

        if (poolCount >= RANDOMIZER_MIN_POOL_SIZE) {
            break;
        }

        lowerTolerance += RANDOMIZER_FALLBACK_BST_TOLERANCE;
        upperTolerance += RANDOMIZER_FALLBACK_BST_TOLERANCE;
    }

    if (poolCount == 0) {
        poolOut[0] = baseOriginal;
        poolCount = 1;
    }

    return poolCount;
}

static u16 Randomizer_SelectFromPool(u16 *pool, u16 poolSize, u32 seed)
{
    if (poolSize == 0) {
        return SPECIES_BULBASAUR;
    }

    if (poolSize == 1) {
        return pool[0];
    }

    // save current random seed to avoid affecting other stuff
    u32 savedSeed = gf_get_seed();

    gf_srand(seed);
    u16 randomIndex = gf_rand() % poolSize;
    u16 selectedSpecies = pool[randomIndex];

    // restore previous random seed
    gf_srand(savedSeed);

    return selectedSpecies;
}

static u32 HashPlayerName(const u16 *name)
{
    u32 hash = 2166136261u;

    while (*name != 0xFFFF) {
        u16 ch = *name++;

        hash ^= ch & 0xFF;
        hash *= 16777619u;
        hash ^= ch >> 8;
        hash *= 16777619u;
    }

    return hash;
}

static u32 Randomizer_MixSeed(u32 value)
{
    value ^= value >> 16;
    value *= 0x7FEB352Du;
    value ^= value >> 15;
    value *= 0x846CA68Bu;
    value ^= value >> 16;
    return value;
}

static BOOL Randomizer_IsOrdinaryLearnableMove(u16 move)
{
    if (move == MOVE_NONE || move == MOVE_STRUGGLE || move >= NUM_OF_MOVES || IsMoveUnimplemented(move)) {
        return FALSE;
    }

    if ((move >= MOVE_BREAKNECK_BLITZ_PHYSICAL && move <= MOVE_CATASTROPIKA)
        || (move >= MOVE_SINISTER_ARROW_RAID && move <= MOVE_GENESIS_SUPERNOVA)
        || move == MOVE_10_000_000_VOLT_THUNDERBOLT
        || (move >= MOVE_LIGHT_THAT_BURNS_THE_SKY && move <= MOVE_CLANGOROUS_SOULBLAZE)
        || move == MOVE_MAX_GUARD
        || (move >= MOVE_MAX_FLARE && move <= MOVE_MAX_STEELSPIKE)) {
        return FALSE;
    }

    return TRUE;
}

static BOOL Randomizer_IsDamagingMove(u16 move)
{
    return GetMoveData(move, MOVE_DATA_BASE_POWER) != 0;
}

static BOOL Randomizer_MoveAlreadySelected(const u16 *moves, u16 count, u16 move)
{
    for (u16 i = 0; i < count; i++) {
        if (moves[i] == move) {
            return TRUE;
        }
    }
    return FALSE;
}

static u16 Randomizer_SelectMove(u32 seed, BOOL requireDamage, const u16 *selectedMoves, u16 selectedCount)
{
    for (u32 attempt = 0; attempt < NUM_OF_MOVES * 2; attempt++) {
        u16 move = 1 + (Randomizer_MixSeed(seed + attempt * 0x9E3779B9u) % (NUM_OF_MOVES - 1));
        if (!Randomizer_IsOrdinaryLearnableMove(move)
            || Randomizer_MoveAlreadySelected(selectedMoves, selectedCount, move)
            || (requireDamage && !Randomizer_IsDamagingMove(move))) {
            continue;
        }
        return move;
    }

    return MOVE_TACKLE;
}

static u32 Randomizer_GetLearnsetSeed(u16 species, u8 form, u32 pid, u32 salt)
{
    const u16 *name = PlayerProfile_GetNamePtr(Sav2_PlayerData_GetProfileAddr(SaveBlock2_get()));
    return HashPlayerName(name)
        ^ Randomizer_MixSeed(species ^ 0x3C6EF372u)
        ^ Randomizer_MixSeed(form ^ 0xDAA66D2Bu)
        ^ Randomizer_MixSeed(pid ^ 0x78DDE6E4u)
        ^ salt;
}

void LONG_CALL Randomizer_GenerateLevelUpLearnset(u16 species, u8 form, u32 pid, u32 *learnset)
{
    u16 selectedMoves[33];
    u32 baseSeed = Randomizer_GetLearnsetSeed(species, form, pid, 0xBB67AE85u);

    for (u16 i = 0; i < 33; i++) {
        u16 level = (i + 1) * 3;
        u32 moveSeed = baseSeed ^ Randomizer_MixSeed(level ^ 0x6A09E667u);
        BOOL requireDamage = (i == 0) || (Randomizer_MixSeed(moveSeed ^ 0x510E527Fu) % 100 < 70);
        u16 move = Randomizer_SelectMove(moveSeed, requireDamage, selectedMoves, i);
        selectedMoves[i] = move;
        learnset[i] = ((u32)level << LEVEL_UP_LEARNSET_LEVEL_SHIFT) | move;
    }
    learnset[33] = LEVEL_UP_LEARNSET_END;
}

void LONG_CALL Randomizer_GenerateRelearnerMoves(u16 species, u8 form, u32 pid, u16 *moves)
{
    u32 baseSeed = Randomizer_GetLearnsetSeed(species, form, pid, 0x1F83D9ABu);

    for (u16 i = 0; i < 5; i++) {
        u32 moveSeed = baseSeed ^ Randomizer_MixSeed(i ^ 0x5BE0CD19u);
        BOOL requireDamage = Randomizer_MixSeed(moveSeed ^ 0xA54FF53Au) % 100 < 65;
        moves[i] = Randomizer_SelectMove(moveSeed, requireDamage, moves, i);
    }
}

void LONG_CALL Randomizer_InitBoxMonMoveset(struct BoxPokemon *boxMon)
{
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_LEARNSETS)
    u32 learnset[MAX_LEVELUP_MOVES];
    u16 currentMoves[4] = { MOVE_NONE, MOVE_NONE, MOVE_NONE, MOVE_NONE };
    u8 moveCount = 0;
    u16 species = GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL);
    u8 form = GetBoxMonData(boxMon, MON_DATA_FORM, NULL);
    u8 level = GetBoxMonData(boxMon, MON_DATA_LEVEL, NULL);
    u32 pid = GetBoxMonData(boxMon, MON_DATA_PERSONALITY, NULL);

    Randomizer_GenerateLevelUpLearnset(species, form, pid, learnset);
    for (u16 i = 0; i < 33 && LEVEL_UP_LEARNSET_LEVEL(learnset[i]) <= level; i++) {
        u16 move = LEVEL_UP_LEARNSET_MOVE(learnset[i]);
        if (moveCount < 4) {
            currentMoves[moveCount++] = move;
        } else {
            currentMoves[0] = currentMoves[1];
            currentMoves[1] = currentMoves[2];
            currentMoves[2] = currentMoves[3];
            currentMoves[3] = move;
        }
    }

    for (u16 i = 0; i < 4; i++) {
        u16 move = currentMoves[i];
        u8 ppUps = 0;
        u8 pp = move == MOVE_NONE ? 0 : GetMoveMaxPP(move, 0);
        SetBoxMonData(boxMon, MON_DATA_MOVE1 + i, &move);
        SetBoxMonData(boxMon, MON_DATA_MOVE1PPUP + i, &ppUps);
        SetBoxMonData(boxMon, MON_DATA_MOVE1PP + i, &pp);
    }
#else
    InitBoxMonMoveset(boxMon);
#endif
}

static BOOL Randomizer_IsAbilityAllowed(u16 ability)
{
    switch (ability) {
    // invalid
    case ABILITY_NONE:
    case ABILITY_TEMP2:
    case ABILITY_TEMP4:
    // unimplemented
    case ABILITY_AROMA_VEIL:
    case ABILITY_SWEET_VEIL:
    case ABILITY_SYMBIOSIS:
    case ABILITY_SHIELDS_DOWN:
    case ABILITY_RECEIVER:
    case ABILITY_POWER_OF_ALCHEMY:
    case ABILITY_RKS_SYSTEM:
    case ABILITY_BALL_FETCH:
    case ABILITY_MIRROR_ARMOR:
    case ABILITY_GULP_MISSILE:
    case ABILITY_RIPEN:
    case ABILITY_MIMICRY:
    case ABILITY_SCREEN_CLEANER:
    case ABILITY_PERISH_BODY:
    case ABILITY_WANDERING_SPIRIT:
    case ABILITY_NEUTRALIZING_GAS:
    case ABILITY_HUNGER_SWITCH:
    case ABILITY_QUICK_DRAW:
    case ABILITY_CURIOUS_MEDICINE:
    case ABILITY_GUARD_DOG:
    case ABILITY_ZERO_TO_HERO:
    case ABILITY_COMMANDER:
    case ABILITY_GOOD_AS_GOLD:
    case ABILITY_OPPORTUNIST:
    case ABILITY_CUD_CHEW:
    case ABILITY_COSTAR:
    case ABILITY_MYCELIUM_MIGHT:
    case ABILITY_EMBODY_ASPECT:
    case ABILITY_EMBODY_ASPECT_2:
    case ABILITY_EMBODY_ASPECT_3:
    case ABILITY_EMBODY_ASPECT_4:
    case ABILITY_TOXIC_CHAIN:
    case ABILITY_SUPERSWEET_SYRUP:
    case ABILITY_TERA_SHIFT:
    case ABILITY_TERAFORM_ZERO:
    case ABILITY_POISON_PUPPETEER:
    // banned
    case ABILITY_WONDER_GUARD:
        return FALSE;
    default:
        return TRUE;
    }
}

static u16 Randomizer_SelectAbility(u32 seed)
{
    u16 allowedCount = 0;

    for (u16 ability = 1; ability < NUM_ABILITIES; ability++) {
        if (Randomizer_IsAbilityAllowed(ability)) {
            allowedCount++;
        }
    }

    if (allowedCount == 0) {
        return ABILITY_NONE;
    }

    u16 selected = Randomizer_MixSeed(seed) % allowedCount;
    for (u16 ability = 1; ability < NUM_ABILITIES; ability++) {
        if (Randomizer_IsAbilityAllowed(ability) && selected-- == 0) {
            return ability;
        }
    }

    return ABILITY_NONE;
}

static u32 Randomizer_GetMonAbilitySeed(struct PartyPokemon *mon)
{
    if (gFieldSysPtr == NULL) {
        return 0;
    }
    const u16 *name = PlayerProfile_GetNamePtr(Sav2_PlayerData_GetProfileAddr(SaveBlock2_get()));
    if (name == NULL) {
        return 0;
    }
    u32 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    u32 form = GetMonData(mon, MON_DATA_FORM, NULL);
    u32 pid = GetMonData(mon, MON_DATA_PERSONALITY, NULL);

    return HashPlayerName(name)
        ^ Randomizer_MixSeed(species ^ 0xA341316Cu)
        ^ Randomizer_MixSeed(form ^ 0xC8013EA4u)
        ^ Randomizer_MixSeed(pid ^ 0xAD90777Du)
        ^ 0x7E95761Eu;
}

void LONG_CALL Randomizer_SetMonAbility(struct PartyPokemon *mon)
{
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_ABILITIES)
    u16 ability = Randomizer_SelectAbility(Randomizer_GetMonAbilitySeed(mon));
    SetMonData(mon, MON_DATA_ABILITY, &ability);
#else
    ResetPartyPokemonAbility(mon);
#endif
}

void LONG_CALL Randomizer_SetTrainerMonAbility(struct PartyPokemon *mon, u16 originalSpecies, u32 trainer, u8 partySlot)
{
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_ABILITIES) && defined(RANDOMIZE_TRAINERS)
    u32 seed = Randomizer_GetMonAbilitySeed(mon)
        ^ Randomizer_MixSeed(originalSpecies ^ 0x9E3779B9u)
        ^ Randomizer_MixSeed(trainer ^ 0x85EBCA6Bu)
        ^ Randomizer_MixSeed(partySlot ^ 0xC2B2AE35u)
        ^ 0xD1B54A35u;
    u16 ability = Randomizer_SelectAbility(seed);
    SetMonData(mon, MON_DATA_ABILITY, &ability);
#else
    (void)originalSpecies;
    (void)trainer;
    (void)partySlot;
#endif
}

static const u16 sRandomizerTrainerHeldItems[] = {
    ITEM_LUM_BERRY,
    ITEM_SITRUS_BERRY,
    ITEM_WHITE_HERB,
    // ITEM_CHOICE_BAND,
    ITEM_LEFTOVERS,
    ITEM_WIDE_LENS,
    ITEM_EXPERT_BELT,
    ITEM_LIFE_ORB,
    ITEM_FOCUS_SASH,
    // ITEM_CHOICE_SCARF,
    // ITEM_CHOICE_SPECS,
    ITEM_EVIOLITE,
    ITEM_ROCKY_HELMET,
    ITEM_AIR_BALLOON,
    ITEM_WEAKNESS_POLICY,
    ITEM_ASSAULT_VEST,
    ITEM_SAFETY_GOGGLES,
    ITEM_FOCUS_BAND,
    ITEM_BRIGHT_POWDER,
    ITEM_QUICK_CLAW,
    ITEM_AIR_BALLOON,
};

u16 LONG_CALL Randomizer_GetRandomTrainerHeldItem(struct PartyPokemon *mon, u16 originalSpecies, u16 originalItem, u32 trainer, u8 partySlot)
{
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_TRAINERS) && defined(RANDOMIZE_TRAINER_HELD_ITEMS)
    if (originalItem == ITEM_NONE) {
        return ITEM_NONE;
    }

    u32 seed = Randomizer_GetMonAbilitySeed(mon)
        ^ Randomizer_MixSeed(originalSpecies ^ 0x243F6A88u)
        ^ Randomizer_MixSeed(originalItem ^ 0xB7E15162u)
        ^ Randomizer_MixSeed(trainer ^ 0x8AED2A6Bu)
        ^ Randomizer_MixSeed(partySlot ^ 0x9E3779B9u)
        ^ 0xA4093822u;

    return sRandomizerTrainerHeldItems[Randomizer_MixSeed(seed) % NELEMS(sRandomizerTrainerHeldItems)];
#else
    (void)mon;
    (void)originalSpecies;
    (void)trainer;
    (void)partySlot;
    return originalItem;
#endif
}

u16 LONG_CALL Randomizer_GetRandomTrainerSpecies(u16 originalSpecies, u16 level, u32 trainer, u8 partySlot, u8 *formOut, u16 *itemOut)
{
#if !defined(RANDOMIZER_ENABLED) || !defined(RANDOMIZE_TRAINERS)
    *itemOut = ITEM_NONE;
    return originalSpecies;
#else
    u16 pool[MAX_MON_NUM];
    u16 size = Randomizer_BuildSpeciesPool(originalSpecies, level, FALSE, pool, MAX_MON_NUM);
    if (gFieldSysPtr == NULL) {
        *itemOut = ITEM_NONE;
        *formOut = 0;
        return originalSpecies;
    }
    const u16 *name = PlayerProfile_GetNamePtr(Sav2_PlayerData_GetProfileAddr(gFieldSysPtr->savedata));
    if (name == NULL) {
        *itemOut = ITEM_NONE;
        *formOut = 0;
        return originalSpecies;
    }
    u32 seed = (u32)HashPlayerName(name) + (u32)originalSpecies + (u32)trainer + (u32)partySlot;

    u16 baseSpecies = Randomizer_SelectFromPool(pool, size, seed);
    u8 form = Randomizer_GetRandomForm(baseSpecies, seed ^ 0xF0F0F0F0);

#ifdef MEGA_EVOLUTIONS
    u16 megaStone = Randomizer_GetMegaStone(baseSpecies, form);
    if (megaStone != ITEM_NONE) {
        *itemOut = megaStone;
        *formOut = 0;
        return baseSpecies;
    }
#endif
    *itemOut = ITEM_NONE;
    *formOut = form;

    return baseSpecies;
#endif
}

u16 LONG_CALL Randomizer_GetRandomWildSpecies(struct PartyPokemon *party_pokemon, u8 *formOut)
{
    u16 original = GetMonData(party_pokemon, MON_DATA_SPECIES, NULL);
#if !defined(RANDOMIZER_ENABLED) || !defined(RANDOMIZE_WILD)
    *formOut = 0;
    return original;
#else
    u16 level = GetMonData(party_pokemon, MON_DATA_LEVEL, NULL);
    u16 pool[MAX_MON_NUM];
    u16 size = Randomizer_BuildSpeciesPool(original, level, TRUE, pool, MAX_MON_NUM);
    u32 seed = (u32)original + (u32)level + GetMonData(party_pokemon, MON_DATA_PERSONALITY, NULL);

    u16 baseSpecies = Randomizer_SelectFromPool(pool, size, seed);
    *formOut = Randomizer_GetRandomForm(baseSpecies, seed ^ 0xF0F0F0F0);

    return baseSpecies;
#endif
}

void LONG_CALL Randomizer_RandomizeStarters(int *species)
{
    for (int i = 0; i < 3; i++) {
        u16 pool[MAX_MON_NUM];
        u16 size = Randomizer_BuildSpeciesPool(species[i], 5, FALSE, pool, 200);
        u16 uniqueSize = 0;

        for (u16 j = 0; j < size; j++) {
            BOOL duplicate = FALSE;
            for (int previous = 0; previous < i; previous++) {
                if (pool[j] == (species[previous] & 0x7FF)) {
                    duplicate = TRUE;
                    break;
                }
            }
            if (!duplicate) {
                pool[uniqueSize++] = pool[j];
            }
        }

        if (uniqueSize != 0) {
            size = uniqueSize;
        }
        u16 baseSpecies = Randomizer_SelectFromPool(pool, size, gf_rand());
        u32 formSeed = (u32)baseSpecies + 5;
        u8 form = Randomizer_GetRandomForm(baseSpecies, formSeed ^ 0xF0F0F0F0);
        species[i] = MON_WITH_FORM(baseSpecies, form);
    }
}

// printMsgOnWinEx
u8 LONG_CALL StarterChoice_PrintMsgOnWinEx(void *window, u32 heapID, BOOL makeFrame, s32 msgBank, int msgno, u32 color, u32 speed, String **out)
{
    MsgData *msgData;
    MessageFormat *msgFmt = NULL;
    u8 ret;
    GF_ASSERT(*out == NULL);
    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, ARC_MSG_DATA, msgBank, heapID);
    GF_ASSERT(msgData != NULL);

    // buffer species name into the starter choice menu messages
    if (msgBank == STARTER_CHOICE_MSG_BANK && msgno >= STARTER_CHOICE_DYNAMIC_MSG_FIRST && msgno <= STARTER_CHOICE_DYNAMIC_MSG_LAST) {
        u32 slot = (u32)(msgno - STARTER_CHOICE_DYNAMIC_MSG_FIRST) % 3;

        if (sStarterSpecies[slot] != SPECIES_NONE) {
            msgFmt = MessageFormat_New(heapID);

            if (msgFmt != NULL) {
                BufferSpeciesName(msgFmt, 0, sStarterSpecies[slot] & 0x7FF);
                *out = ReadMsgData_ExpandPlaceholders(msgFmt, msgData, msgno, heapID);
                MessageFormat_Delete(msgFmt);
            }
        }
    }

    if (*out == NULL) {
        *out = NewString_ReadMsgData(msgData, msgno);
    }

    FillWindowPixelBuffer(window, color);
    ret = AddTextPrinterParameterizedWithColor(window, 1, *out, 0, 0, speed, color, NULL);
    if (makeFrame) {
        DrawFrameAndWindow2(window, FALSE, 0x200, 0);
    } else {
        CopyWindowToVram(window);
    }
    DestroyMsgData(msgData);
    return ret;
}
