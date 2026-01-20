#include "../../include/randomizer.h"
#include "../../include/pokemon.h"
#include "../../include/battle.h"
#include "../../include/types.h"
#include "../../include/constants/file.h"
#include "../../include/constants/species.h"

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
#ifdef RANDOMIZER_BLOCK_MEGAS_IN_WILD
        if (isMega) {
            return TRUE;
        }
#endif
    } else {
        // Trainer context
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

#ifdef RANDOMIZER_BST_TOLERANCE
    useBSTMatching = TRUE;
    bstMin = (originalBST * (100 - RANDOMIZER_BST_TOLERANCE)) / 100;
    bstMax = (originalBST * (100 + RANDOMIZER_BST_TOLERANCE)) / 100;
#endif

    for (species = 1; species <= MAX_SPECIES_INCLUDING_FORMS && poolCount < maxPoolSize; species++)
    {
        if (ShouldBanRestrictedSpecies(species, isWild)) {
            continue;
        }

        if (useBSTMatching) {
            speciesBST = bstTable[species];
            if (speciesBST < bstMin || speciesBST > bstMax)
                continue;
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

u16 LONG_CALL Randomizer_GetRandomTrainerSpecies(u16 originalSpecies, u16 level, u32 trainerID)
{
#if !defined(RANDOMIZER_ENABLED) || !defined(RANDOMIZE_TRAINERS)
    return originalSpecies;
#else
    u16 pool[MAX_SPECIES_INCLUDING_FORMS];
    u16 size = Randomizer_BuildSpeciesPool(originalSpecies, level, FALSE, pool, MAX_SPECIES_INCLUDING_FORMS);
    u32 seed = (u32)originalSpecies + (u32)level + trainerID;

    return Randomizer_SelectFromPool(pool, size, seed);
#endif
}

u16 LONG_CALL Randomizer_GetRandomWildSpecies(struct PartyPokemon *pp)
{
    u16 original = GetMonData(pp, MON_DATA_SPECIES, NULL);
#if !defined(RANDOMIZER_ENABLED) || !defined(RANDOMIZE_WILD)
    return original;
#else
    u16 level = GetMonData(pp, MON_DATA_LEVEL, NULL);
    u16 pool[MAX_SPECIES_INCLUDING_FORMS];
    u16 size = Randomizer_BuildSpeciesPool(original, level, TRUE, pool, MAX_SPECIES_INCLUDING_FORMS);
    u32 seed = (u32)original + (u32)level + GetMonData(pp, MON_DATA_PERSONALITY, NULL);

    return Randomizer_SelectFromPool(pool, size, seed);
#endif
}
