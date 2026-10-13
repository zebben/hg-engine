#include "config.h"
#include "debug.h"
#include "types.h"

#include "encounter_check.h"

#include "constants/file.h"
#include "constants/maps.h"

#include "map_events_internal.h"
#include "pokemon.h"
#include "save.h"

extern u32 gTriggerDouble;

/**
 *  @brief add the PartyPokemon to the wild "Party"
 *
 *  @param fsys field system structure
 *  @param pp PartyPokemon array to manipulate (is fully overwritten)
 *  @param bw battle work structure
 *  @param encData
 *  @param encArea
 *  @param encInfo
 *  @return TRUE if both were successful; FALSE otherwise
 */
u32 LONG_CALL FieldSystem_GenerateLandRegularEncounter(FieldSystem *fsys UNUSED, struct PartyPokemon *pp, void *bw, void *encData UNUSED, void *encArea, void *encInfo)
{
    u32 ret;
    ret = FieldSystem_GenerateRegularEncounter(pp, 255, encInfo, encArea, 0, 1, bw);

#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

    if (gTriggerDouble) {
        ret = FieldSystem_GenerateRegularEncounter(pp, 255, encInfo, encArea, 0, 1, bw); // add another mon to the enemy party
    }

#endif

    return ret;
}

/**
 *  @brief add PartyPokemon to the wild "Party" in surfing contexts
 *
 *  @param fsys field system structure
 *  @param pp PartyPokemon array to manipulate (is fully overwritten)
 *  @param bw battle work structure
 *  @param encArea
 *  @param encInfo
 *  @param isSafari
 *  @return TRUE if both were successful; FALSE otherwise
 */
u32 LONG_CALL FieldSystem_GenerateSurfingEncounter(FieldSystem *fsys, struct PartyPokemon *pp, void *bw, void *encArea, void *encInfo, BOOL isSafari)
{
    u32 ret;
    if (isSafari) {
        ret = FieldSystem_GenerateSafariEncounter(fsys, pp, 255, encInfo, 1, 1, bw);

#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

        if (gTriggerDouble) {
            ret = FieldSystem_GenerateSafariEncounter(fsys, pp, 255, encInfo, 1, 1, bw); // add another mon to the enemy party
        }

#endif
    } else {
        ret = FieldSystem_GenerateRegularEncounter(pp, 255, encInfo, encArea, 1, 1, bw);

#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

        if (gTriggerDouble) {
            ret = FieldSystem_GenerateRegularEncounter(pp, 255, encInfo, encArea, 1, 1, bw); // add another mon to the enemy party
        }

#endif
    }

    return ret;
}
