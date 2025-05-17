.nds
.thumb

.open "base/arm9.bin", 0x02000000

// 1. Patch double battle check to always branch
.org 0x02000000 + 0x51779  // 0x51779 is byte offset (from debug output)
.byte 0xE0  // Overwrite with 'B' opcode in THUMB (unsafe write)

// 2. DoubleBattleFlagReturnPrefix
.org 0x02000000 + 0x40508  // 0x40508 = 263432 (from debug output)
.hword 0xBD08  // unsafe word write: pop {r3, r4, pc}

// 3. DoubleBattleWalkingPrefix1
// Change to: cmp r0, #2; beq (unsafe modification)
.org 0x02000000 + 0x640EE  // 0x640EE = 409830 (from debug output)
.byte 0x02  // cmp r0, #2
.org 0x02000000 + 0x640EE + 3  // adjusting for offset + 3
.byte 0xD0  // beq (branch to double trainer walk)

// 4. DoubleBattleWalkingPrefix2
// Change cmp immediate to #2 again (unsafe modification)
.org 0x02000000 + 0x64172  // 0x64172 = 409842 (from debug output)
.byte 0x02  // cmp r0, #2 (direct modification)

// 5. DoubleBattleTextBoxPrefix
// Overwrite with instructions: mov r0, r8; cmp r0, #2; beq (unsafe write)
.org 0x02000000 + 0x497A4  // 0x497A4 = 300964 (from debug output)
.hword 0x46C0  // mov r8 -> r0 (unsafe write)
.hword 0x2802  // cmp r0, #2 (unsafe write)
.org 0x02000000 + 0x497A4 + 5
.byte 0xD0  // beq (unsafe write)

.close
