.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SNOW_TEMP
    // The snow stopped.
    PrintMessage 1440, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
