#ifndef HG_ENGINE_LEVEL_CAP_H
#define HG_ENGINE_LEVEL_CAP_H

#include "types.h"

/**
 *  @brief get level cap from the script variable defined by LEVEL_CAP_VARIABLE
 *
 *  @return level cap from LEVEL_CAP_VARIABLE script variable
 */
u32 LONG_CALL GetLevelCap(void);

/**
 *  @brief check if the level is at or above the level cap defined in LEVEL_CAP_VARIABLE
 *
 *  @param level level to check
 *  @return TRUE if level >= level cap; FALSE otherwise
 */
u32 LONG_CALL IsLevelAtLevelCap(u32 level);

#endif // HG_ENGINE_LEVEL_CAP_H
