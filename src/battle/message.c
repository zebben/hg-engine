#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/message_format.h"
#include "../../include/types.h"

/*
 * @brief an impl of BufferItemNameWithIndefArticle which loads msgdata 829
 */
void BattleSystem_BufferItemNameWithIndefArticle(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    debug_printf("[BattleSystem_BufferItemNameWithIndefArticle] called\n");
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, 27, 829, msgFmt->heapId); // NARC_msgdata_msg
    if (msgData != NULL) {
        ReadMsgDataIntoString(msgData, itemId, msgFmt->buffer);
        SetStringAsPlaceholder(msgFmt, fieldno, msgFmt->buffer, NULL);
        DestroyMsgData(msgData);
    }
}