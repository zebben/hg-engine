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

// Increase this value to increase BST variance and thus variety
#define RANDOMIZER_BST_TOLERANCE 15
// Minimum species in pool before relaxing restrictions. Lowering this makes the pool more strict
#define RANDOMIZER_MIN_POOL_SIZE 5

// Enable dynamic wild species forms if randomizer is enabled
#ifdef RANDOMIZER_ENABLED
#define IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
#endif

u16 LONG_CALL Randomizer_GetRandomTrainerSpecies(u16 originalSpecies, u16 level, u32 trainerID);
u16 LONG_CALL Randomizer_GetRandomWildSpecies(struct PartyPokemon *pp);

#endif // RANDOMIZER_H
