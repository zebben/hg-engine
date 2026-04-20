#include "../include/randomizer.h"

#include "../include/battle.h"
#include "../include/config.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"
#include "../include/message.h"
#include "../include/pokemon.h"
#include "../include/sprite.h"
#include "../include/types.h"

extern u32 sStarterSpecies[3];

#define STARTER_CHOICE_MSG_BANK          190
#define STARTER_CHOICE_DYNAMIC_MSG_FIRST 1
#define STARTER_CHOICE_DYNAMIC_MSG_LAST  6
static u16 sStarterChoiceSpecies[3] = {
    SPECIES_CHIKORITA,
    SPECIES_CYNDAQUIL,
    SPECIES_TOTODILE,
};

#ifdef MEGA_EVOLUTIONS
struct RandomizerMegaEntry {
    u16 species;
    u16 item;
    u8 form;
};

static const struct RandomizerMegaEntry sRandomizerMegaTable[] = {
    { SPECIES_VENUSAUR, ITEM_VENUSAURITE, 1 },
    { SPECIES_CHARIZARD, ITEM_CHARIZARDITE_X, 1 },
    { SPECIES_CHARIZARD, ITEM_CHARIZARDITE_Y, 2 },
    { SPECIES_BLASTOISE, ITEM_BLASTOISINITE, 1 },
    { SPECIES_BEEDRILL, ITEM_BEEDRILLITE, 1 },
    { SPECIES_PIDGEOT, ITEM_PIDGEOTITE, 1 },
    { SPECIES_ALAKAZAM, ITEM_ALAKAZITE, 1 },
    { SPECIES_SLOWBRO, ITEM_SLOWBRONITE, 1 },
    { SPECIES_GENGAR, ITEM_GENGARITE, 1 },
    { SPECIES_KANGASKHAN, ITEM_KANGASKHANITE, 1 },
    { SPECIES_PINSIR, ITEM_PINSIRITE, 1 },
    { SPECIES_GYARADOS, ITEM_GYARADOSITE, 1 },
    { SPECIES_AERODACTYL, ITEM_AERODACTYLITE, 1 },
    { SPECIES_MEWTWO, ITEM_MEWTWONITE_X, 1 },
    { SPECIES_MEWTWO, ITEM_MEWTWONITE_Y, 2 },
    { SPECIES_AMPHAROS, ITEM_AMPHAROSITE, 1 },
    { SPECIES_STEELIX, ITEM_STEELIXITE, 1 },
    { SPECIES_SCIZOR, ITEM_SCIZORITE, 1 },
    { SPECIES_HERACROSS, ITEM_HERACRONITE, 1 },
    { SPECIES_HOUNDOOM, ITEM_HOUNDOOMINITE, 1 },
    { SPECIES_TYRANITAR, ITEM_TYRANITARITE, 1 },
    { SPECIES_SCEPTILE, ITEM_SCEPTILITE, 1 },
    { SPECIES_BLAZIKEN, ITEM_BLAZIKENITE, 1 },
    { SPECIES_SWAMPERT, ITEM_SWAMPERTITE, 1 },
    { SPECIES_GARDEVOIR, ITEM_GARDEVOIRITE, 1 },
    { SPECIES_SABLEYE, ITEM_SABLENITE, 1 },
    { SPECIES_MAWILE, ITEM_MAWILITE, 1 },
    { SPECIES_AGGRON, ITEM_AGGRONITE, 1 },
    { SPECIES_MEDICHAM, ITEM_MEDICHAMITE, 1 },
    { SPECIES_MANECTRIC, ITEM_MANECTITE, 1 },
    { SPECIES_SHARPEDO, ITEM_SHARPEDONITE, 1 },
    { SPECIES_CAMERUPT, ITEM_CAMERUPTITE, 1 },
    { SPECIES_ALTARIA, ITEM_ALTARIANITE, 1 },
    { SPECIES_BANETTE, ITEM_BANETTITE, 1 },
    { SPECIES_ABSOL, ITEM_ABSOLITE, 1 },
    { SPECIES_GLALIE, ITEM_GLALITITE, 1 },
    { SPECIES_SALAMENCE, ITEM_SALAMENCITE, 1 },
    { SPECIES_METAGROSS, ITEM_METAGROSSITE, 1 },
    { SPECIES_LATIAS, ITEM_LATIASITE, 1 },
    { SPECIES_LATIOS, ITEM_LATIOSITE, 1 },
    { SPECIES_LOPUNNY, ITEM_LOPUNNITE, 1 },
    { SPECIES_GARCHOMP, ITEM_GARCHOMPITE, 1 },
    { SPECIES_LUCARIO, ITEM_LUCARIONITE, 1 },
    { SPECIES_ABOMASNOW, ITEM_ABOMASITE, 1 },
    { SPECIES_GALLADE, ITEM_GALLADITE, 1 },
    { SPECIES_AUDINO, ITEM_AUDINITE, 1 },
    { SPECIES_DIANCIE, ITEM_DIANCITE, 1 },
};
#endif

struct RandomizerSpeciesRange {
    u16 start;
    u16 end;
};

#ifdef RANDOMIZER_BLOCK_INCOMPLETE_SPRITES
static const struct RandomizerSpeciesRange sRandomizerIncompleteSpriteRanges[] = {
    // Derived from .scratch/sprite-list.txt rows with any FALSE, filtered to species constants that exist in this repo.
    { SPECIES_AEGISLASH, SPECIES_SPRITZEE },
    { SPECIES_SWIRLIX, SPECIES_SWIRLIX },
    { SPECIES_BINACLE, SPECIES_BARBARACLE },
    { SPECIES_TYRUNT, SPECIES_TYRUNT },
    { SPECIES_PUMPKABOO, SPECIES_PUMPKABOO },
    { SPECIES_BERGMITE, SPECIES_AVALUGG },
    { SPECIES_YVELTAL, SPECIES_YVELTAL },
    { SPECIES_HOOPA, SPECIES_VOLCANION },
    { SPECIES_LITTEN, SPECIES_CRABOMINABLE },
    { SPECIES_CUTIEFLY, SPECIES_RIBOMBEE },
    { SPECIES_TOXAPEX, SPECIES_ARAQUANID },
    { SPECIES_MORELULL, SPECIES_SALANDIT },
    { SPECIES_STUFFUL, SPECIES_BEWEAR },
    { SPECIES_COMFEY, SPECIES_COMFEY },
    { SPECIES_WIMPOD, SPECIES_WIMPOD },
    { SPECIES_SANDYGAST, SPECIES_PYUKUMUKU },
    { SPECIES_SILVALLY, SPECIES_SILVALLY },
    { SPECIES_TOGEDEMARU, SPECIES_MIMIKYU },
    { SPECIES_DHELMISE, SPECIES_KOMMO_O },
    { SPECIES_COSMOG, SPECIES_COSMOEM },
    { SPECIES_NIHILEGO, SPECIES_NIHILEGO },
    { SPECIES_PHEROMOSA, SPECIES_CELESTEELA },
    { SPECIES_GUZZLORD, SPECIES_NECROZMA },
    { SPECIES_POIPOLE, SPECIES_BLACEPHALON },
    { SPECIES_MELTAN, SPECIES_RABOOT },
    { SPECIES_SOBBLE, SPECIES_CORVISQUIRE },
    { SPECIES_BLIPBUG, SPECIES_ORBEETLE },
    { SPECIES_GOSSIFLEUR, SPECIES_ELDEGOSS },
    { SPECIES_DUBWOOL, SPECIES_DUBWOOL },
    { SPECIES_DREDNAW, SPECIES_DREDNAW },
    { SPECIES_ROLYCOLY, SPECIES_COALOSSAL },
    { SPECIES_SILICOBRA, SPECIES_SANDACONDA },
    { SPECIES_TOXTRICITY, SPECIES_CENTISKORCH },
    { SPECIES_GRAPPLOCT, SPECIES_POLTEAGEIST },
    { SPECIES_IMPIDIMP, SPECIES_GRIMMSNARL },
    { SPECIES_CURSOLA, SPECIES_SIRFETCHD },
    { SPECIES_FALINKS, SPECIES_FALINKS },
    { SPECIES_FROSMOTH, SPECIES_STONJOURNER },
    { SPECIES_COPPERAJAH, SPECIES_COPPERAJAH },
    { SPECIES_ARCTOZOLT, SPECIES_ARCTOZOLT },
    { SPECIES_ARCTOVISH, SPECIES_ARCTOVISH },
    { SPECIES_DREEPY, SPECIES_URSHIFU },
    { SPECIES_OVERQWIL, SPECIES_OVERQWIL },
    { SPECIES_FLORAGATO, SPECIES_FLORAGATO },
    { SPECIES_TAROUNTULA, SPECIES_SPIDOPS },
    { SPECIES_PAWMI, SPECIES_PAWMOT },
    { SPECIES_DOLLIV, SPECIES_DOLLIV },
    { SPECIES_NACLSTACK, SPECIES_NACLSTACK },
    { SPECIES_CHARCADET, SPECIES_CERULEDGE },
    { SPECIES_BELLIBOLT, SPECIES_MABOSSTIFF },
    { SPECIES_GRAFAIAI, SPECIES_BRAMBLEGHAST },
    { SPECIES_SCOVILLAIN, SPECIES_SCOVILLAIN },
    { SPECIES_WIGLETT, SPECIES_WUGTRIO },
    { SPECIES_VAROOM, SPECIES_CYCLIZAR },
    { SPECIES_GLIMMET, SPECIES_GLIMMET },
    { SPECIES_CETODDLE, SPECIES_VELUZA },
    { SPECIES_TATSUGIRI, SPECIES_TATSUGIRI },
    { SPECIES_FARIGIRAF, SPECIES_DUDUNSPARCE },
    { SPECIES_GREAT_TUSK, SPECIES_BRUTE_BONNET },
    { SPECIES_SLITHER_WING, SPECIES_IRON_MOTH },
    { SPECIES_FRIGIBAX, SPECIES_BAXCALIBUR },
    { SPECIES_WO_CHIEN, SPECIES_CHI_YU },
    { SPECIES_IRON_VALIANT, SPECIES_IRON_LEAVES },
    { SPECIES_POLTCHAGEIST, SPECIES_ARCHALUDON },
    { SPECIES_GOUGING_FIRE, SPECIES_TERAPAGOS },
    { SPECIES_MEGA_VENUSAUR, SPECIES_MEGA_AMPHAROS },
    { SPECIES_MEGA_SCIZOR, SPECIES_MEGA_SCIZOR },
    { SPECIES_MEGA_HOUNDOOM, SPECIES_MEGA_MANECTRIC },
    { SPECIES_MEGA_CAMERUPT, SPECIES_KYOGRE_PRIMAL },
    { SPECIES_RATICATE_ALOLAN, SPECIES_VULPIX_ALOLAN },
    { SPECIES_DIGLETT_ALOLAN, SPECIES_DIGLETT_ALOLAN },
    { SPECIES_PERSIAN_ALOLAN, SPECIES_PERSIAN_ALOLAN },
    { SPECIES_EXEGGUTOR_ALOLAN, SPECIES_MAROWAK_ALOLAN },
    { SPECIES_MEOWTH_GALARIAN, SPECIES_MEOWTH_GALARIAN },
    { SPECIES_SLOWBRO_GALARIAN, SPECIES_MOLTRES_GALARIAN },
    { SPECIES_CORSOLA_GALARIAN, SPECIES_PIKACHU_COSPLAY },
    { SPECIES_PIKACHU_ORIGINAL_CAP, SPECIES_CASTFORM_SNOWY },
    { SPECIES_DIALGA_ORIGIN, SPECIES_PALKIA_ORIGIN },
    { SPECIES_DARMANITAN_ZEN_MODE, SPECIES_DARMANITAN_ZEN_MODE_GALARIAN },
    { SPECIES_LANDORUS_THERIAN, SPECIES_GENESECT_CHILL_DRIVE },
    { SPECIES_GRENINJA_ASH, SPECIES_GRENINJA_ASH },
    { SPECIES_ZYGARDE_10, SPECIES_ROCKRUFF_OWN_TEMPO },
    { SPECIES_MINIOR_CORE_RED, SPECIES_MAGEARNA_ORIGINAL },
    { SPECIES_CRAMORANT_GULPING, SPECIES_CRAMORANT_GORGING },
    { SPECIES_SINISTEA_ANTIQUE, SPECIES_POLTEAGEIST_ANTIQUE },
    { SPECIES_ALCREMIE_FILLER_1, SPECIES_ALCREMIE_FILLER_2 },
    { SPECIES_ZACIAN_CROWNED, SPECIES_CALYREX_SHADOW_RIDER },
    { SPECIES_GROWLITHE_HISUIAN, SPECIES_GROWLITHE_HISUIAN },
    { SPECIES_TYPHLOSION_HISUIAN, SPECIES_QWILFISH_HISUIAN },
    { SPECIES_SAMUROTT_HISUIAN, SPECIES_SAMUROTT_HISUIAN },
    { SPECIES_AVALUGG_HISUIAN, SPECIES_DECIDUEYE_HISUIAN },
    { SPECIES_UNFEZANT_FEMALE, SPECIES_JELLICENT_FEMALE },
    { SPECIES_TATSUGIRI_DROOPY, SPECIES_REVAVROOM_CAPH },
    { SPECIES_POLTCHAGEIST_MASTERPIECE, SPECIES_OGERPON_CORNERSTONE_MASK },
    { SPECIES_URSALUNA_BLOODMOON, SPECIES_TERAPAGOS_STELLAR },
};
#endif

static u16 GetMegaStoneForSpeciesAndForm(u16 species, u8 form)
{
#ifdef MEGA_EVOLUTIONS
    u32 i;
    for (i = 0; i < NELEMS(sRandomizerMegaTable); i++) {
        if (sRandomizerMegaTable[i].species == species && sRandomizerMegaTable[i].form == form) {
            return sRandomizerMegaTable[i].item;
        }
    }
#endif
    return ITEM_NONE;
}

static BOOL Randomizer_IsMegaAdjustedSpecies(u16 adjustedSpecies)
{
    return adjustedSpecies >= SPECIES_MEGA_START && adjustedSpecies <= MAX_MEGA_NUM;
}

static BOOL Randomizer_HasIncompleteSprites(u16 species)
{
#ifdef RANDOMIZER_BLOCK_INCOMPLETE_SPRITES
    u32 i;

    for (i = 0; i < NELEMS(sRandomizerIncompleteSpriteRanges); i++) {
        if (species >= sRandomizerIncompleteSpriteRanges[i].start && species <= sRandomizerIncompleteSpriteRanges[i].end) {
            return TRUE;
        }
    }

    return FALSE;
#else
    return FALSE;
#endif
}

static u8 Randomizer_GetRandomFormForSpecies(u16 baseSpecies, u32 seed, BOOL allowTrainerMegas)
{
    u16 formTable[32];
    u8 validForms[32];
    u8 validFormCount = 0;
    u8 i;

    validForms[validFormCount++] = 0;

    ArchiveDataLoadOfs(formTable, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16) * (baseSpecies * 32), sizeof(u16) * 32);

    for (i = 0; i < 32; i++) {
        u16 adjustedSpecies;

        if (formTable[i] == 0) {
            break;
        }
        adjustedSpecies = formTable[i] & ~NEEDS_REVERSION;
        if (Randomizer_HasIncompleteSprites(adjustedSpecies)) {
            continue;
        }
        if (formTable[i] & NEEDS_REVERSION) {
#ifdef RANDOMIZER_BLOCK_MEGAS_IN_TRAINERS
            if (allowTrainerMegas) {
                continue;
            }
#endif
            if (!allowTrainerMegas || !Randomizer_IsMegaAdjustedSpecies(adjustedSpecies) || GetMegaStoneForSpeciesAndForm(baseSpecies, i + 1) == ITEM_NONE) {
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

static u16 GetBSTToleranceForLevel(u16 level)
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
static BOOL TypesHaveAffinity(u8 type1, u8 type2)
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

static BOOL IsTypeCompatible(u16 originalSpecies, u16 candidateSpecies, u16 *typesTable)
{
    // Types table is packed as (type2 << 8) | type1
    u16 origPacked = typesTable[originalSpecies];
    u16 candPacked = typesTable[candidateSpecies];

    u8 origType1 = origPacked & 0xFF;
    u8 origType2 = (origPacked >> 8) & 0xFF;
    u8 candType1 = candPacked & 0xFF;
    u8 candType2 = (candPacked >> 8) & 0xFF;

    if (origType1 == candType1 || origType1 == candType2 || origType2 == candType1 || origType2 == candType2) {
        return TRUE;
    }

    if (TypesHaveAffinity(origType1, candType1) || TypesHaveAffinity(origType1, candType2) || TypesHaveAffinity(origType2, candType1) || TypesHaveAffinity(origType2, candType2)) {
        return TRUE;
    }

    return FALSE;
}
#endif

static BOOL ShouldBanRestrictedSpecies(u16 species, BOOL isWild)
{
    if (species == SPECIES_NONE || species == SPECIES_EGG || species == SPECIES_BAD_EGG) {
        return TRUE;
    }
    if (Randomizer_HasIncompleteSprites(species)) {
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
    u16 originalBST, speciesBST;
    u16 bstMin, bstMax;
    u16 baseOriginal;
    BOOL useBSTMatching;

    if (originalSpecies == 0 || originalSpecies > MAX_SPECIES_INCLUDING_FORMS) {
        return 0;
    }

    if (originalSpecies > MAX_MON_NUM) {
        baseOriginal = GetBaseSpeciesFromAdjustedForm(originalSpecies);
    } else {
        baseOriginal = originalSpecies;
    }

    u16 bstTable[MAX_MON_NUM + 1];
    ArchiveDataLoadOfs(bstTable, ARC_CODE_ADDONS, CODE_ADDON_SPECIES_BST, 0, sizeof(u16) * (MAX_MON_NUM + 1));

#ifdef RANDOMIZER_TYPE_MATCHING
    u16 typesTable[MAX_MON_NUM + 1];
    ArchiveDataLoadOfs(typesTable, ARC_CODE_ADDONS, CODE_ADDON_SPECIES_TYPES, 0, sizeof(u16) * (MAX_MON_NUM + 1));
#endif

    originalBST = bstTable[baseOriginal];

    useBSTMatching = TRUE;
    bstMin = (originalBST * (100 - RANDOMIZER_TIER1_BST_TOLERANCE)) / 100;
    bstMax = (originalBST * (100 + GetBSTToleranceForLevel(level))) / 100;

    for (species = 1; species <= MAX_MON_NUM && poolCount < maxPoolSize; species++) {
        if (ShouldBanRestrictedSpecies(species, isWild)) {
            continue;
        }

        if (useBSTMatching) {
            speciesBST = bstTable[species];
            if (speciesBST < bstMin || speciesBST > bstMax) {
                continue;
            }
        }

#ifdef RANDOMIZER_TYPE_MATCHING
        if (!IsTypeCompatible(baseOriginal, species, typesTable)) {
            continue;
        }
#endif

        poolOut[poolCount++] = species;
    }

    if (poolCount < RANDOMIZER_MIN_POOL_SIZE) {
        poolCount = 0;
        for (species = 1; species <= MAX_MON_NUM && poolCount < maxPoolSize; species++) {
            if (ShouldBanRestrictedSpecies(species, isWild)) {
                continue;
            }

#ifdef RANDOMIZER_TYPE_MATCHING
            if (!IsTypeCompatible(baseOriginal, species, typesTable)) {
                continue;
            }
#endif

            poolOut[poolCount++] = species;
        }
    }

    if (poolCount < RANDOMIZER_MIN_POOL_SIZE) {
        poolCount = 0;
        for (species = 1; species <= MAX_MON_NUM && poolCount < maxPoolSize; species++) {
            if (ShouldBanRestrictedSpecies(species, isWild)) {
                continue;
            }

            poolOut[poolCount++] = species;
        }
    }

    if (poolCount == 0) {
        poolOut[0] = baseOriginal;
        poolCount = 1;
    }

    return poolCount;
}

static u16 Randomizer_SelectFromPool(u16 *pool, u16 poolSize, u32 seed)
{
    u32 savedSeed;
    u16 randomIndex;
    u16 selectedSpecies;

    if (poolSize == 0) {
        return SPECIES_NONE;
    }

    if (poolSize == 1) {
        return pool[0];
    }

    // save current random seed to avoid affecting other stuff
    savedSeed = gf_get_seed();

    gf_srand(seed);
    randomIndex = gf_rand() % poolSize;
    selectedSpecies = pool[randomIndex];

    gf_srand(savedSeed);

    return selectedSpecies;
}

u16 LONG_CALL Randomizer_GetRandomTrainerSpecies(u16 originalSpecies, u16 level, u32 trainerID, u8 *formOut, u16 *itemOut)
{
#if !defined(RANDOMIZER_ENABLED) || !defined(RANDOMIZE_TRAINERS)
    *itemOut = ITEM_NONE;
    return originalSpecies;
#else
    u16 pool[MAX_MON_NUM];
    u16 size = Randomizer_BuildSpeciesPool(originalSpecies, level, FALSE, pool, MAX_MON_NUM);
    u32 seed = (u32)originalSpecies + (u32)level + trainerID;

    u16 baseSpecies = Randomizer_SelectFromPool(pool, size, seed);
    u8 form = Randomizer_GetRandomFormForSpecies(baseSpecies, seed ^ 0xF0F0F0F0, TRUE);

    u16 megaStone = GetMegaStoneForSpeciesAndForm(baseSpecies, form);
    if (megaStone != ITEM_NONE) {
        *itemOut = megaStone;
        *formOut = 0;
    } else {
        *itemOut = ITEM_NONE;
        *formOut = form;
    }

    return baseSpecies;
#endif
}

u16 LONG_CALL Randomizer_GetRandomWildSpecies(struct PartyPokemon *pp, u8 *formOut)
{
    u16 original = GetMonData(pp, MON_DATA_SPECIES, NULL);
#if !defined(RANDOMIZER_ENABLED) || !defined(RANDOMIZE_WILD)
    return original;
#else
    u16 level = GetMonData(pp, MON_DATA_LEVEL, NULL);
    u16 pool[MAX_MON_NUM];
    u16 size = Randomizer_BuildSpeciesPool(original, level, TRUE, pool, MAX_MON_NUM);
    u32 seed = (u32)original + (u32)level + GetMonData(pp, MON_DATA_PERSONALITY, NULL);

    u16 baseSpecies = Randomizer_SelectFromPool(pool, size, seed);
    *formOut = Randomizer_GetRandomFormForSpecies(baseSpecies, seed ^ 0xF0F0F0F0, FALSE);

    return baseSpecies;
#endif
}

void LONG_CALL Randomizer_RandomizeStarters(int *species)
{
    for (int i = 0; i < 3; i++) {
        u16 pool[MAX_MON_NUM];
        u16 size = Randomizer_BuildSpeciesPool(species[i], 5, FALSE, pool, 200);
        species[i] = Randomizer_SelectFromPool(pool, size, gf_rand());
        // forms[i] = Randomizer_GetRandomFormForSpecies(species[i], seed ^ 0xF0F0F0F0);
    }
}

void LONG_CALL SyncStarterCries(u8 *work)
{
    struct PartyPokemon **choices = (struct PartyPokemon **)(work + 0x578);
    u32 *sSpeciesCries = sStarterSpecies;

    for (int i = 0; i < 3; i++) {
        u16 species = GetMonData(choices[i], MON_DATA_SPECIES, NULL);

        if (species != SPECIES_NONE) {
            sSpeciesCries[i] = species;
            sStarterChoiceSpecies[i] = species;
        }
    }
}

u8 LONG_CALL StarterChoice_PrintMsgOnWinEx(void *window, u32 heapID, BOOL makeFrame, s32 msgBank, int msgno, u32 color, u32 speed, String **out)
{
    MsgData *msgData;
    MessageFormat *msgFmt = NULL;
    u8 ret;

    GF_ASSERT(*out == NULL);

    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, ARC_MSG_DATA, msgBank, heapID);
    GF_ASSERT(msgData != NULL);

    if (msgBank == STARTER_CHOICE_MSG_BANK && msgno >= STARTER_CHOICE_DYNAMIC_MSG_FIRST && msgno <= STARTER_CHOICE_DYNAMIC_MSG_LAST) {
        u32 slot = (u32)(msgno - STARTER_CHOICE_DYNAMIC_MSG_FIRST) % 3;

        if (sStarterChoiceSpecies[slot] != SPECIES_NONE) {
            msgFmt = MessageFormat_New(heapID);

            if (msgFmt != NULL) {
                BufferSpeciesName(msgFmt, 0, sStarterChoiceSpecies[slot]);
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
