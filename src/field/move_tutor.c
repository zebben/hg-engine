#include "../../include/bag.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/generated/learnsets.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"
#include "../../include/debug.h"
#include "../../include/message.h"
#include "../../include/party_menu.h"
#include "../../include/pokemon.h"
#include "../../include/randomizer.h"
#include "../../include/rtc.h"
#include "../../include/save.h"
#include "../../include/script.h"
#include "../../include/types.h"
#include "../../include/window.h"

u16 LONG_CALL *MoveRelearner_GetEligibleLevelUpMoves(struct PartyPokemon *mon, u32 heapId)
{
#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_LEARNSETS)
    u16 generatedMoves[5];
#else
    u32 levelUpLearnset[MAX_LEVELUP_MOVES];
#endif
    u16 *eligibleMoves = sys_AllocMemory(heapId, MAX_LEVELUP_MOVES * sizeof(u16));
    GF_ASSERT(eligibleMoves != NULL);
    if (eligibleMoves == NULL) {
        return NULL;
    }

    u16 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    u8 form = GetMonData(mon, MON_DATA_FORM, NULL);
    u8 eligibleCount = 0;

#if defined(RANDOMIZER_ENABLED) && defined(RANDOMIZE_LEARNSETS)
    u32 pid = GetMonData(mon, MON_DATA_PERSONALITY, NULL);
    Randomizer_GenerateRelearnerMoves(species, form, pid, generatedMoves);
    for (u8 i = 0; i < 5; i++) {
        BOOL alreadyKnown = FALSE;
        for (u8 slot = 0; slot < 4; slot++) {
            if (generatedMoves[i] == GetMonData(mon, MON_DATA_MOVE1 + slot, NULL)) {
                alreadyKnown = TRUE;
                break;
            }
        }
        if (!alreadyKnown) {
            eligibleMoves[eligibleCount++] = generatedMoves[i];
        }
    }
#else
    u8 level = GetMonData(mon, MON_DATA_LEVEL, NULL);
    LoadLevelUpLearnset_HandleAlternateForm(species, form, levelUpLearnset);

    for (u8 i = 0; i < MAX_LEVELUP_MOVES && levelUpLearnset[i] != LEVEL_UP_LEARNSET_END; i++) {
        u16 move;
        BOOL alreadyKnown = FALSE;

        if (LEVEL_UP_LEARNSET_LEVEL(levelUpLearnset[i]) > level) {
            continue;
        }

        move = LEVEL_UP_LEARNSET_MOVE(levelUpLearnset[i]);
        for (u8 slot = 0; slot < MAX_MON_MOVES; slot++) {
            if (move == GetMonData(mon, MON_DATA_MOVE1 + slot, NULL)) {
                alreadyKnown = TRUE;
                break;
            }
        }
        if (alreadyKnown) {
            continue;
        }

        for (u8 j = 0; j < eligibleCount; j++) {
            if (move == eligibleMoves[j]) {
                alreadyKnown = TRUE;
                break;
            }
        }
        if (!alreadyKnown) {
            eligibleMoves[eligibleCount++] = move;
        }
    }
#endif

    eligibleMoves[eligibleCount] = LEVEL_UP_LEARNSET_END;
    return eligibleMoves;
}

#define MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     0
#define MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    1
#define MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT 2
#define MOVE_TUTOR_NPC_HEADBUTT              3

typedef struct TutorMove {
    u16 move;
    u8 cost;
    u8 tutorNpc;
} TutorMove;

TutorMove sTutorMoves[] = {
    { MOVE_DIVE, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_MUD_SLAP, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_FURY_CUTTER, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_ICY_WIND, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_ROLLOUT, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_THUNDER_PUNCH, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_FIRE_PUNCH, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_SUPERPOWER, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_ICE_PUNCH, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_IRON_HEAD, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_AQUA_TAIL, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_OMINOUS_WIND, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_GASTRO_ACID, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_SNORE, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SPITE, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_AIR_CUTTER, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_HELPING_HAND, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_ENDEAVOR, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_OUTRAGE, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_ANCIENT_POWER, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_SYNTHESIS, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SIGNAL_BEAM, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_ZEN_HEADBUTT, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_VACUUM_WAVE, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_EARTH_POWER, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_GUNK_SHOT, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_TWISTER, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_SEED_BOMB, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_IRON_DEFENSE, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_MAGNET_RISE, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_LAST_RESORT, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_BOUNCE, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_TRICK, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_HEAT_WAVE, 48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_KNOCK_OFF, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_SUCKER_PUNCH, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_SWIFT, 40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_UPROAR, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SUPER_FANG, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_PAIN_SPLIT, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_STRING_SHOT, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_TAILWIND, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_GRAVITY, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_WORRY_SEED, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_MAGIC_COAT, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_ROLE_PLAY, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_HEAL_BELL, 48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_LOW_KICK, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_SKY_ATTACK, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT },
    { MOVE_BLOCK, 32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_BUG_BITE, 32, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT },
    { MOVE_HEADBUTT, 0, MOVE_TUTOR_NPC_HEADBUTT },
};

u16 LONG_CALL GetLearnableTutorMoves(struct PartyPokemon *mon, u32 moveTutorNpc, u8 dest[])
{
    int i;
    u16 currentMoves[MAX_MON_MOVES];
    for (i = 0; i < MAX_MON_MOVES; i++) {
        currentMoves[i] = GetMonData(mon, MON_DATA_MOVE1 + i, NULL);
    }

    u32 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    u32 form = GetMonData(mon, MON_DATA_FORM, NULL);
    u32 tutorLearnset[TUTOR_LEARNSETS_BITFIELD_COUNT];

    ReadFromNarcMemberByIdPair(tutorLearnset, ARC_CODE_ADDONS, CODE_ADDON_TUTOR_LEARNSETS, PokeOtherFormMonsNoGet(species, form) * TUTOR_LEARNSETS_BITFIELD_COUNT * sizeof(u32), TUTOR_LEARNSETS_BITFIELD_COUNT * sizeof(u32));

    u16 numLearnableMoves = 0;
    for (u32 j = 0; j < NELEMS(sTutorMoves); j++) {
        BOOL canLearnMove = (tutorLearnset[j / 32] >> (j % 32)) & 1;
        if (canLearnMove && moveTutorNpc == sTutorMoves[j].tutorNpc) {
            for (i = 0; i < MAX_MON_MOVES; i++) {
                if (currentMoves[i] == sTutorMoves[j].move) {
                    break;
                }
            }
            if (i < MAX_MON_MOVES) {
                continue;
            }
            if (dest != NULL) {
                dest[numLearnableMoves] = j;
            }
            numLearnableMoves++;
        }
    }

    return numLearnableMoves;
}
