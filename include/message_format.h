#ifndef POKEHEARTGOLD_MESSAGE_FORMAT_H
#define POKEHEARTGOLD_MESSAGE_FORMAT_H

#include "types.h"
#include "msgdata.h"

typedef struct MessageFormatAttrs {
    u8 data[4];
} MessageFormatAttrs;

typedef struct MessageFormatFields {
    MessageFormatAttrs attrs;
    String *msg;
} MessageFormatFields;

typedef struct MessageFormat {
    u32 count;
    u16 heapId;
    MessageFormatFields *fields;
    String *buffer;
} MessageFormat;

void LONG_CALL SetStringAsPlaceholder(MessageFormat *msgFmt, u32 fieldno, const String *string, const MessageFormatAttrs *attrs);

#endif //POKEHEARTGOLD_MESSAGE_FORMAT_H