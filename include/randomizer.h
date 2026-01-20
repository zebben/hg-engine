#ifndef RANDOMIZER_H
#define RANDOMIZER_H

#include "types.h"
#include "pokemon.h"

// Comment out to disable randomization
#define RANDOMIZER_ENABLED

// Randomize trainer Pokemon species. Comment out to disable
#define RANDOMIZE_TRAINERS

// Randomize wild encounter species. Comment out to disable
#define RANDOMIZE_WILD

// Comment out to enable wild legendary pokemon
#define RANDOMIZER_BLOCK_LEGENDARIES_IN_WILD
// Comment out to enable wild mythic pokemon
#define RANDOMIZER_BLOCK_MYTHICALS_IN_WILD
// Comment out to enable wild sublegendary pokemon
#define RANDOMIZER_BLOCK_SUBLEGENDS_IN_WILD
// Comment out to enable wild mega pokemon
// TODO not yet functional
#define RANDOMIZER_BLOCK_MEGAS_IN_WILD

// Comment out to enable legendary pokemon in trainer teams
// #define RANDOMIZER_BLOCK_LEGENDARIES_IN_TRAINERS
// Comment out to enable mythic pokemon in trainer teams
#define RANDOMIZER_BLOCK_MYTHICALS_IN_TRAINERS
// Comment out to enable sublegendary pokemon in trainer teams
// #define RANDOMIZER_BLOCK_SUBLEGENDS_IN_TRAINERS
// Comment out to enable mega pokemon in trainer teams
// TODO not yet functional
#define RANDOMIZER_BLOCK_MEGAS_IN_TRAINERS

// Level tiers for randomization. Tied to BST tolerance below. Tier 4 is for levels above tier 3
// Upper bound level range for tier 1
#define RANDOMIZER_TIER1_MAX_LEVEL 15
// Upper bound level range for tier 2
#define RANDOMIZER_TIER2_MAX_LEVEL 25
// Upper bound level range for tier 3
#define RANDOMIZER_TIER3_MAX_LEVEL 40

// BST tolerance percentages for randomization. Higher values offer more species variance.
// The tier 1 tolerance value is as the BST floor value meaning more higher BST species later on
// BST difference allowed for tier 1
#define RANDOMIZER_TIER1_BST_TOLERANCE 15
// BST difference allowed for tier 2
#define RANDOMIZER_TIER2_BST_TOLERANCE 20
// BST difference allowed for tier 3
#define RANDOMIZER_TIER3_BST_TOLERANCE 25
// BST difference allowed for tier 4
#define RANDOMIZER_TIER4_BST_TOLERANCE 35

// Minimum species in pool before relaxing restrictions. Lowering this makes the pool more strict
#define RANDOMIZER_MIN_POOL_SIZE 5

// Enable dynamic wild species forms if randomizer is enabled
#ifdef RANDOMIZER_ENABLED
#define IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
#endif

u16 LONG_CALL Randomizer_GetRandomTrainerSpecies(u16 originalSpecies, u16 level, u32 trainerID, u8 *formOut);
u16 LONG_CALL Randomizer_GetRandomWildSpecies(struct PartyPokemon *pp, u8 *formOut);

#endif // RANDOMIZER_H
