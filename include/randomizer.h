#ifndef RANDOMIZER_H
#define RANDOMIZER_H

#include "pokemon.h"
#include "types.h"

// Comment out to disable randomization
#define RANDOMIZER_ENABLED

// Randomize starter species. Comment out to disable
#define RANDOMIZE_STARTERS

// Randomize trainer Pokemon species. Comment out to disable
#define RANDOMIZE_TRAINERS

// Randomize wild encounter species. Comment out to disable
#define RANDOMIZE_WILD

// Randomize abilities for generated Pokemon and after species/form changes. Comment out to disable
#define RANDOMIZE_ABILITIES

// Give each individual Pokemon a PID-specific randomized level-up learnset
#define RANDOMIZE_LEARNSETS

// Replace existing trainer held items with a deterministic item from the curated competitive pool
#define RANDOMIZE_TRAINER_HELD_ITEMS

// Comment out to enable wild legendary pokemon
#define RANDOMIZER_BLOCK_LEGENDARIES_IN_WILD
// Comment out to enable wild mythic pokemon
#define RANDOMIZER_BLOCK_MYTHICALS_IN_WILD
// Comment out to enable wild sublegendary pokemon
#define RANDOMIZER_BLOCK_SUBLEGENDS_IN_WILD

// Comment out to disable loose encounter type matching
// #define RANDOMIZER_TYPE_MATCHING

// Comment out to enable legendary pokemon in trainer teams
// #define RANDOMIZER_BLOCK_LEGENDARIES_IN_TRAINERS
// Comment out to enable mythic pokemon in trainer teams
// #define RANDOMIZER_BLOCK_MYTHICALS_IN_TRAINERS
// Comment out to enable sublegendary pokemon in trainer teams
// #define RANDOMIZER_BLOCK_SUBLEGENDS_IN_TRAINERS
// Comment out to enable mega pokemon in trainer teams
// #define RANDOMIZER_BLOCK_MEGAS_IN_TRAINERS

// Level tiers for randomization. Tied to BST tolerance below. Tier 4 is for levels above tier 3
// Upper bound level range for tier 1
#define RANDOMIZER_TIER1_MAX_LEVEL 15
// Upper bound level range for tier 2
#define RANDOMIZER_TIER2_MAX_LEVEL 25
// Upper bound level range for tier 3
#define RANDOMIZER_TIER3_MAX_LEVEL 40

// BST tolerance percentages for randomization. Higher values offer more species variance.
// Tier 1 sets a strict lower bound BST floor to avoid swapping early encounters into too-weak alternatives
// BST difference allowed for tier 1
#define RANDOMIZER_TIER1_BST_TOLERANCE 10
// BST difference allowed for tier 2
#define RANDOMIZER_TIER2_BST_TOLERANCE 15
// BST difference allowed for tier 3
#define RANDOMIZER_TIER3_BST_TOLERANCE 25
// BST difference allowed for tier 4
#define RANDOMIZER_TIER4_BST_TOLERANCE 35

// Minimum species in pool before relaxing restrictions. Lowering this makes the pool more strict
#define RANDOMIZER_MIN_POOL_SIZE 5
// Additional BST tolerance used for one retry when the initial pool is too small
#define RANDOMIZER_FALLBACK_BST_TOLERANCE 15

// Enable dynamic wild species forms if randomizer is enabled
#ifdef RANDOMIZER_ENABLED
#define IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
#endif

u16 LONG_CALL Randomizer_GetRandomTrainerSpecies(u16 originalSpecies, u16 level, u32 trainer, u8 partySlot, u8 *formOut, u16 *itemOut);
u16 LONG_CALL Randomizer_GetRandomWildSpecies(struct PartyPokemon *party_pokemon, u8 *formOut);
void LONG_CALL Randomizer_RandomizeStarters(int *species);
u8 LONG_CALL Randomizer_GetRandomForm(u16 baseSpecies, u32 seed);
void LONG_CALL Randomizer_SetMonAbility(struct PartyPokemon *mon);
void LONG_CALL Randomizer_SetTrainerMonAbility(struct PartyPokemon *mon, u16 originalSpecies, u32 trainer, u8 partySlot);
u16 LONG_CALL Randomizer_GetRandomTrainerHeldItem(struct PartyPokemon *mon, u16 originalSpecies, u16 originalItem, u32 trainer, u8 partySlot);
void LONG_CALL Randomizer_GenerateLevelUpLearnset(u16 species, u8 form, u32 pid, u32 *learnset);
void LONG_CALL Randomizer_GenerateRelearnerMoves(u16 species, u8 form, u32 pid, u16 *moves);
void LONG_CALL Randomizer_InitBoxMonMoveset(struct BoxPokemon *boxMon);

const u16 LONG_CALL *PlayerProfile_GetNamePtr(void *profile);

#endif // RANDOMIZER_H
