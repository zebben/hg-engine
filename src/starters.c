#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/pokemon.h"
#include "../include/randomizer.h"
#include "../include/types.h"

extern u32 space_for_setmondata;
extern u32 sStarterChoiceCries[];

void LONG_CALL GetMonSpriteCharAndPlttNarcIdsEx(MON_PIC *picdata, u16 mons_no, u8 dir, u8 col, u8 form_no, u8 a5, u32 personality);

// Use MON_WITH_FORM(SPECIES_NAME, form) to specify a starter
// with a form.
//
// Keep in mind that these choices will impact Rival team
// determination in the appropriate trigger-scripts.
//
// This will NOT update the text during the starter-selection
// sequence. To update that text, modify text archive 190 in
// DSPRE.
static const u16 sStarterChoices[3] = {
    SPECIES_CHIKORITA,
    SPECIES_CYNDAQUIL,
    SPECIES_TOTODILE,
};

/**
 *  @brief fills the given array with the species ids of the starter choices
 *
 *  @param species pointer to the species array
 */
void LONG_CALL CreateStarter_SetStarterSpecies(int *species)
{
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_STARTERS)
    Randomizer_RandomizeStarters(species);
    return;
#endif
    for (int i = 0; i < 3; i++) {
        // strip off form
        species[i] = sStarterChoices[i] & 0x7FF;
    }
}

/**
 *  @brief wrap the CreateMon call within CreateStarter to allow for starter forms
 *
 *  @param mon the PartyPokemon pointer
 *  @param species the species id
 *  @param slot starter choice (0-2)
 */
void LONG_CALL CreateStarter_CreateMon(struct PartyPokemon *mon, int species, int slot)
{
    u32 form = 0;

#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_STARTERS)
    (void)slot;
    form = species >> 11;
    species &= 0x7FF;
#else
    if (slot >= 0 && slot < 3) {
        form = sStarterChoices[slot] >> 11;
    }
#endif

    space_for_setmondata = form;
    PokeParaSet(mon, species, 5, 32, FALSE, 0, 0, 0);
    space_for_setmondata = 0;

    if (form != 0) {
        SetMonData(mon, MON_DATA_FORM, &form);
    }
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_LEARNSETS)
    TryAppendMonMove(mon, MOVE_TACKLE);
#endif
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_ABILITIES)
    Randomizer_SetMonAbility(mon);
#endif
    RecalcPartyPokemonStats(mon);
}

/**
 *  @brief wrap the GetMonSpriteCharAndPlttNarcIdsEx call within createMonSprites to handle starter forms
 *
 *  @param pic MON_PIC pointer
 *  @param species species id
 */
void LONG_CALL CreateMonSprites_HandleForm(MON_PIC *pic, u16 species, u8 gender, u8 shiny, int slot)
{
    u32 form = 0;

    if (slot >= 0 && slot < 3) {
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_STARTERS)
        form = species >> 11;
        species &= 0x7FF;
#else
        form = sStarterChoices[slot] >> 11;
#endif
        sStarterChoiceCries[slot] = (form == 0) ? species : PokeOtherFormMonsNoGet(species, form);
    }

    GetMonSpriteCharAndPlttNarcIdsEx(pic, species, gender, 2, shiny, 0, 0);

    if (form != 0) {
        GetOtherFormPic(pic, species, 2, shiny, form);
    }
}
