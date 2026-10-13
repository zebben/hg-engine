#include "config.h"
#include "debug.h"
#include "types.h"

#include "daycare.h"

#include "constants/ability.h"
#include "constants/file.h"
#include "constants/game.h"
#include "constants/generated/learnsets.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/weather_numbers.h"

#include "bag.h"
#include "battle.h"
#include "message.h"
#include "pokemon.h"
#include "rtc.h"
#include "save.h"
#include "script.h"

u8 LONG_CALL LoadEggMoves(struct PartyPokemon *pokemon, u16 *dest)
{
    u16 species = PokeOtherFormMonsNoGet(GetMonData(pokemon, MON_DATA_SPECIES, NULL), GetMonData(pokemon, MON_DATA_FORM, NULL));
    ReadFromNarcMemberByIdPair(dest, ARC_EGG_MOVES, 0, species * MAX_EGG_MOVES * sizeof(u16), MAX_EGG_MOVES * sizeof(u16));

    u8 count = 0;
    while (count < MAX_EGG_MOVES && dest[count] != 0xFFFF) {
        count++;
    }

    return count;
}
