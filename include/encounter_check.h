#ifndef HG_ENGINE_ENCOUNTER_CHECK_H
#define HG_ENGINE_ENCOUNTER_CHECK_H

#include "types.h"

/**
 *  @brief add a PartyPokemon to wild battler team
 *
 *  @param pp uninitialized PartyPokemon to init and add to enemy team
 *  @param rodType rod type (255 if N/A)
 *  @param encInfo
 *  @param encArea
 *  @param encounterType
 *  @param battler battler whose team to add to
 *  @param bw battle work structure
 *  @return TRUE if PartyPokemon was successfully generated and added; FALSE otherwise
 */
u32 LONG_CALL FieldSystem_GenerateRegularEncounter(struct PartyPokemon *pp, u32 rodType, void *encInfo, void *encArea, u32 encounterType, u32 battler, void *bw);

/**
 *  @brief add a PartyPokemon to wild battler team for swarms potentially
 *
 *  @param fsys field system structure
 *  @param pp uninitialized PartyPokemon to init and add to enemy team
 *  @param rodType rod type (255 if N/A)
 *  @param encInfo
 *  @param encounterType
 *  @param battler battler whose team to add to
 *  @param bw battle work structure
 *  @return TRUE if PartyPokemon was successfully generated and added; FALSE otherwise
 */
u32 LONG_CALL FieldSystem_GenerateSafariEncounter(void *fsys, struct PartyPokemon *pp, u32 rodType, void *encInfo, u32 encounterType, u32 battler, void *bw);

#endif // HG_ENGINE_ENCOUNTER_CHECK_H
