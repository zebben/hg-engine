#ifndef HG_ENGINE_DAYCARE_H
#define HG_ENGINE_DAYCARE_H

#include "types.h"

#include "pokemon.h"

/**
 *  @brief load egg moves to dest and return amount of egg moves. reads from data/generated/EggLearnsets.c
 *
 *  @param pokemon PartyPokemon to grab egg moves for
 *  @param dest destination for the array of egg moves
 *  @return number of egg moves in dest
 */
u8 LONG_CALL LoadEggMoves(struct PartyPokemon *pokemon, u16 *dest);

#endif // HG_ENGINE_DAYCARE_H
