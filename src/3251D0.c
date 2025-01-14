#include "common.h"
#include "effects.h"

ApiStatus func_802BD100_3251D0(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 a = evt_get_variable(script, *args++);
    s32 b = evt_get_variable(script, *args++);
    s32 c = evt_get_variable(script, *args++);

    playFX_11(0, a, b, c, 60.0f);
    return ApiStatus_DONE2;
}

ApiStatus func_802BD1AC_32527C(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 a = evt_get_variable(script, *args++);
    s32 b = evt_get_variable(script, *args++);
    s32 c = evt_get_variable(script, *args++);
    s32 d = evt_get_variable(script, *args++);

    playFX_40(0, a, b, c, d);
    return ApiStatus_DONE2;
}

ApiStatus func_802BD26C(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 a = evt_get_variable(script, *args++);
    s32 b = evt_get_variable(script, *args++);
    s32 c = evt_get_variable(script, *args++);
    s32 d = evt_get_variable(script, *args++);

    playFX_40(1, a, b, c, d);
    return ApiStatus_DONE2;
}

ApiStatus func_802BD32C(Evt* script, s32 isInitialCall) {
    PlayerData* playerData = &gPlayerData;

    s32 newHP = playerData->curHP + evt_get_variable(script, *script->ptrReadPos);

    if (newHP > playerData->curMaxHP) {
        newHP = playerData->curMaxHP;
    }

    if (newHP <= 0) {
        newHP = 1;
    }

    playerData->curHP = newHP;
    return ApiStatus_DONE2;
}

ApiStatus func_802BD388(Evt* script, s32 isInitialCall) {
    PlayerData* playerData = &gPlayerData;

    s32 newFP = playerData->curFP + evt_get_variable(script, *script->ptrReadPos);

    if (newFP > playerData->curMaxFP) {
        newFP = playerData->curMaxFP;
    }

    if (newFP <= 0) {
        newFP = 1;
    }

    playerData->curFP = newFP;
    return ApiStatus_DONE2;
}

ApiStatus func_802BD3E4(Evt* script, s32 isInitialCall) {
    set_time_freeze_mode(TIME_FREEZE_FULL);
    gOverrideFlags |= 0x200000;
    return ApiStatus_DONE2;
}

ApiStatus func_802BD41C(Evt* script, s32 isInitialCall) {
    set_time_freeze_mode(TIME_FREEZE_NORMAL);
    gOverrideFlags &= ~0x200000;
    return ApiStatus_DONE2;
}

ApiStatus func_802BD458(Evt* script, s32 isInitialCall) {
    s32 itemIdx = evt_get_variable(script, *script->ptrReadPos);
    s32 var15;

    script->varTable[11] = (&gItemTable[itemIdx])->potencyA;
    script->varTable[12] = (&gItemTable[itemIdx])->potencyB;
    script->varTable[13] = 0;

    if ((&gItemTable[itemIdx])->typeFlags & 0x100) {
        script->varTable[13] = 1;
    }

    var15 = 0;
    if (script->varTable[11] < 0 || (script->varTable[11] <= 0 && script->varTable[12] < 0)) {
        var15 = 1;
    }
    script->varTable[15] = var15;

    return ApiStatus_DONE2;
}

ApiStatus func_802BD4E8(Evt* script, s32 isInitialCall) {
    remove_consumable();
    return ApiStatus_DONE2;
}
