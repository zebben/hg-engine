#include "config.h"
#include "debug.h"
#include "types.h"

#include "constants/ability.h"
#include "constants/file.h"
#include "constants/game.h"
#include "constants/generated/learnsets.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/moves.h"
#include "constants/sndseq.h"
#include "constants/species.h"
#include "constants/weather_numbers.h"

#include "bag.h"
#include "battle.h"
#include "overlay.h"
#include "pokemon.h"
#include "rtc.h"
#include "save.h"
#include "script.h"
#include "sound.h"

u32 LONG_CALL GetLevelCap(void)
{
#ifdef DEBUG_BATTLE_SCENARIOS
    return 0;
#else
#ifdef IMPLEMENT_LEVEL_CAP
    u32 levelCap = GetScriptVar(LEVEL_CAP_VARIABLE);
    if (levelCap > 100 || levelCap == 0) {
        levelCap = 100;
    }
    return levelCap;
#else
    return 100;
#endif // IMPLEMENT_LEVEL_CAP
#endif // DEBUG_BATTLE_SCENARIOS
}

u32 LONG_CALL IsLevelAtLevelCap(u32 level)
{
    return level >= GetLevelCap();
}

#ifdef IMPLEMENT_LEVEL_CAP

/**
 *  @brief try leveling up a PartyPokemon
 *
 *  @param mon PartyPokemon to level up
 *  @return TRUE if PartyPokemon should level up and level has been augmented
 */
BOOL LONG_CALL Pokemon_TryLevelUp(struct PartyPokemon *mon)
{
    u16 species = (u16)GetMonData(mon, MON_DATA_SPECIES, NULL);
    u8 level = (u8)(GetMonData(mon, MON_DATA_LEVEL, NULL) + 1);
    u32 exp = GetMonData(mon, MON_DATA_EXPERIENCE, NULL);
    u32 growthrate = (u32)PokePersonalParaGet(species, PERSONAL_EXP_GROUP);
    u32 maxexp = GetExpByGrowthRateAndLevel((int)growthrate, GetLevelCap());
    if (exp > maxexp) {
        exp = maxexp;
        SetMonData(mon, MON_DATA_EXPERIENCE, &exp);
    }
    if (level > GetLevelCap()) {
        return FALSE;
    }
    if (exp >= GetExpByGrowthRateAndLevel((int)growthrate, level)) {
        SetMonData(mon, MON_DATA_LEVEL, &level);
        return TRUE;
    }
    return FALSE;
}

#endif
