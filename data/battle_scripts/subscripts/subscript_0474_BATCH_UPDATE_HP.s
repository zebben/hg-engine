.include "asm/include/battle_commands.inc"

.data

_000:
    // Play one hit sound for the spread move
    PlayMoveHitSound BATTLER_CATEGORY_MSG_BATTLER_TEMP

    // Flicker all battlers simultaneously
    FlickerMon BATTLER_CATEGORY_PLAYER_SLOT_1
    FlickerMon BATTLER_CATEGORY_ENEMY_SLOT_1
    FlickerMon BATTLER_CATEGORY_PLAYER_SLOT_2
    FlickerMon BATTLER_CATEGORY_ENEMY_SLOT_2

    // Wait for flicker animations to complete
    Wait

    // Command 0x10E: Trigger HP bar updates for all damaged targets
    BatchUpdateHp 0

    // Wait for all HP bar animations to complete
    Wait

    // Check for faints on all battlers
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_1
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_1
    TryFaintMon BATTLER_CATEGORY_PLAYER_SLOT_2
    TryFaintMon BATTLER_CATEGORY_ENEMY_SLOT_2

    End
