#include "../../include/randomizer.h"
#include "../../include/pokemon.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/types.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/constants/species.h"

#ifdef MEGA_EVOLUTIONS
struct RandomizerMegaEntry {
    u16 species;
    u16 item;
    u8 form;
};

static const struct RandomizerMegaEntry sRandomizerMegaTable[] =
{
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

static u16 GetMegaStoneForSpeciesAndForm(u16 species, u8 form)
{
#ifdef MEGA_EVOLUTIONS
    u32 i;
    for (i = 0; i < NELEMS(sRandomizerMegaTable); i++)
    {
        if (sRandomizerMegaTable[i].species == species && sRandomizerMegaTable[i].form == form)
        {
            return sRandomizerMegaTable[i].item;
        }
    }
#endif
    return ITEM_NONE;
}

static void SplitSpeciesToBaseAndForm(u16 species, u16 *baseSpeciesOut, u16 *formOut)
{
    if (species > MAX_MON_NUM) {
        *baseSpeciesOut = GetBaseSpeciesFromAdjustedForm(species);
        *formOut = GetFormFromAdjustedForm(species);
    } else {
        *baseSpeciesOut = species;
        *formOut = 0;
    }
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

static BOOL ShouldBanRestrictedSpecies(u16 species, BOOL isWild)
{
    if (species == SPECIES_NONE || species == SPECIES_EGG || species == SPECIES_BAD_EGG)
    {
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
    BOOL useBSTMatching;

    if (originalSpecies == 0 || originalSpecies > MAX_SPECIES_INCLUDING_FORMS) {
        return 0;
    }

    u16 bstTable[MAX_SPECIES_INCLUDING_FORMS];
    ArchiveDataLoad(bstTable, ARC_CODE_ADDONS, CODE_ADDON_SPECIES_BST);

    originalBST = bstTable[originalSpecies];

    useBSTMatching = TRUE;
    bstMin = (originalBST * (100 - RANDOMIZER_TIER1_BST_TOLERANCE)) / 100;
    bstMax = (originalBST * (100 + GetBSTToleranceForLevel(level))) / 100;

    for (species = 1; species <= MAX_SPECIES_INCLUDING_FORMS && poolCount < maxPoolSize; species++)
    {
        if (ShouldBanRestrictedSpecies(species, isWild)) {
            continue;
        }

        if (useBSTMatching) {
            speciesBST = bstTable[species];
            if (speciesBST < bstMin || speciesBST > bstMax) {
                continue;
            }
        }

        poolOut[poolCount++] = species;
    }

    if (poolCount < RANDOMIZER_MIN_POOL_SIZE)
    {
        poolCount = 0;
        for (species = 1; species <= MAX_SPECIES_INCLUDING_FORMS && poolCount < maxPoolSize; species++)
        {
            if (ShouldBanRestrictedSpecies(species, isWild)) {
                continue;
            }

            poolOut[poolCount++] = species;
        }
    }

    if (poolCount == 0)
    {
        poolOut[0] = originalSpecies;
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
    u16 pool[MAX_SPECIES_INCLUDING_FORMS];
    u16 size = Randomizer_BuildSpeciesPool(originalSpecies, level, FALSE, pool, MAX_SPECIES_INCLUDING_FORMS);
    u32 seed = (u32)originalSpecies + (u32)level + trainerID;

    u16 selectedSpecies = Randomizer_SelectFromPool(pool, size, seed);
    u16 baseSpecies, form;
    SplitSpeciesToBaseAndForm(selectedSpecies, &baseSpecies, &form);

    u16 megaStone = GetMegaStoneForSpeciesAndForm(baseSpecies, (u8)form);
    if (megaStone != ITEM_NONE) {
        *itemOut = megaStone;
        *formOut = 0;
    } else {
        *itemOut = ITEM_NONE;
        *formOut = (u8)form;
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
    u16 pool[MAX_SPECIES_INCLUDING_FORMS];
    u16 size = Randomizer_BuildSpeciesPool(original, level, TRUE, pool, MAX_SPECIES_INCLUDING_FORMS);
    u32 seed = (u32)original + (u32)level + GetMonData(pp, MON_DATA_PERSONALITY, NULL);

    u16 selectedSpecies = Randomizer_SelectFromPool(pool, size, seed);
    u16 baseSpecies, form;
    SplitSpeciesToBaseAndForm(selectedSpecies, &baseSpecies, &form);
    *formOut = form;

    return baseSpecies;
#endif
}
