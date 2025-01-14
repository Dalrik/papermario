#include "sam_01.h"

#define UNK_ALPHA_FUNC_NPC 14

#include "world/common/GetNpcCollisionHeight.inc.c"

#include "world/common/AddPlayerHandsOffset.inc.c"

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_8024053C_CF80AC);
/*
ApiStatus N(func_8024053C_CF80AC)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    if (isInitialCall) {
        N(D_802432D0_CFAE40) = FALSE;
    }

    if (N(D_802432D0_CFAE40)) {
        N(D_802432D0_CFAE40) = FALSE;
        evt_set_variable(script, *args, N(D_802432D4_CFAE44));
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80240590_CF8100);
/*
ApiStatus N(func_80240590_CF8100)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    N(D_802432D4_CFAE44) = evt_get_variable(script, *args);
    N(D_802432D0_CFAE40) = TRUE;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_802405C8_CF8138);
/*
ApiStatus N(func_802405C8_CF8138)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptr = evt_get_variable(script, *args);
    s32 i;

    if (ptr != NULL) {
        for (i = 0; ptr[i] != 0; i++) {
            N(D_80244A20)[i] = ptr[i];
        }
        N(D_80244A20)[i] = 0;
    } else {
        for (i = 0; i < 0x70; i++) {
            N(D_80244A20)[i] = i + 16;
            N(D_80244A20)[112] = 0;
        }
    }
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80240664_CF81D4);
/*
ApiStatus N(func_80240664_CF81D4)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptr = evt_get_variable(script, *args);
    s32 i;

    if (ptr != NULL) {
        for (i = 0; ptr[i] != 0; i++) {
            N(D_80244A20)[i] = ptr[i];
        }
        N(D_80244A20)[i] = 0;
    } else {
        for (i = 0; i < 0x70; i++) {
            N(D_80244A20)[i] = i + 16;
            N(D_80244A20)[112] = 0;
        }
    }
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80240700_CF8270);
/*
ApiStatus N(func_80240700_CF8270)(Evt* script, s32 isInitialCall) {
    s32 i;

    if (N(D_802435F0_CFB160) == NULL) {
        N(D_802435F0_CFB160) = heap_malloc(16 * sizeof(s32));
        for (i = 0; i < 16; i++) {
            N(D_802435F0_CFB160)[i] = script->varTable[i];
        }
    } else {
        for (i = 0; i < 16; i++) {
            script->varTable[i] = N(D_802435F0_CFB160)[i];
        }
        heap_free(N(D_802435F0_CFB160));
        N(D_802435F0_CFB160) = NULL;
    }
    return ApiStatus_DONE2;
}
*/

#include "world/common/GetItemName.inc.c"

#include "world/common/Set80151310.inc.c"

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_8024083C_CF83AC);
/*
ApiStatus N(func_8024083C_CF83AC)(Evt *script, s32 isInitialCall) {
    Enemy* enemy = script->owner1.enemyID;
    u16 phi_s0 = evt_get_variable(script, EVT_SAVE_FLAG(1768));
    u16 phi_s7 = evt_get_variable(script, EVT_SAVE_FLAG(1769));
    u16 temp_s6 = evt_get_variable(script, EVT_SAVE_VAR(350));
    u16 phi_s5 = evt_get_variable(script, EVT_SAVE_VAR(351));
    s32 var;
    s32 i;

    s32 test2;
    u16 temp_s3 = (enemy->varTable[0] & 0xFF0000) >> 16;
    u16 sp_10 = (enemy->varTable[0] & 0xFF0000) >> 16;
    u16 temp_s2 = (enemy->varTable[0] & 0xFF00) >> 8;
    u16 sp_1e = (enemy->varTable[0] & 0xFF) >> 0;
    s32 temp_v0;
    s32 temp_s0_2;

    if (temp_s3 != temp_s6) {
        phi_s7 = 0;
        phi_s0 = 0;
    }

    if (phi_s0 == 0) {
        if (rand_int(100) < 30) {
            phi_s5 = rand_int(temp_s2 - 1);
            temp_s6 = temp_s3;
            evt_set_variable(script, EVT_SAVE_VAR(350), temp_s6);
            evt_set_variable(script, EVT_SAVE_VAR(351), phi_s5);
            phi_s0 = 1;
        }
    }

    evt_set_variable(script, EVT_SAVE_FLAG(1768), phi_s0);
    evt_set_variable(script, EVT_SAVE_FLAG(1769), phi_s7);
    temp_s0_2 = evt_get_variable(NULL, EVT_SAVE_VAR(352));
    temp_v0 = evt_get_variable(NULL, EVT_STORY_PROGRESS);

    for (i = 0; i < 8; i++) {
        if (temp_v0 < (*(N(quizRequirements) + i)).unk_00) {
            break;
        }
    }

    temp_v0 = temp_s0_2 < (*(N(quizRequirements) + i)).unk_04;
    test2 = var = temp_v0;

    if ((((sp_10 == temp_s6) && (sp_1e == phi_s5) && (phi_s7 == 0) && test2)) ||
        ((gGameStatusPtr->unk_75 != 0) && var)) {
        script->varTable[0] = 1;
    } else {
        kill_enemy(enemy);
        script->varTable[0] = 0;
    }

    return ApiStatus_DONE2;
}
*/

#include "world/common/UnkFunc31.inc.c"

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80240DEC_CF895C);
/*
ApiStatus N(func_80240DEC_CF895C)(Evt *script, s32 isInitialCall) {
    PlayerData* playerData = &gPlayerData;
    u16 quizzesAnswered = gPlayerData.quizzesAnswered;

    if (quizzesAnswered < 0x3E7) {
        playerData->quizzesAnswered++;
    }

    if (script->varTable[0] == N(quizAnswers)[evt_get_variable(NULL, EVT_SAVE_VAR(352))]) {
        script->varTable[0] = 1;
        playerData->quizzesCorrect++;
    } else {
        script->varTable[0] = 0;
    }

    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80240E70_CF89E0);
/*
ApiStatus N(func_80240E70_CF89E0)(Evt *script, s32 isInitialCall) {
    EffectInstanceDataThing* effectPtr;

    if (isInitialCall) {
        Effect** effect = &D_8024DFE0;

        *effect = playFX_4E(0, evt_get_variable(script, EVT_ARRAY(1)), evt_get_variable(script, EVT_ARRAY(2)), evt_get_variable(script, EVT_ARRAY(3)));
        D_8024DFE4 = playFX_54(0, evt_get_variable(script, EVT_ARRAY(1)), evt_get_variable(script, EVT_ARRAY(2)), evt_get_variable(script, EVT_ARRAY(3)));
        D_8024DFE8 = playFX_80(0, evt_get_variable(script, EVT_ARRAY(1)), evt_get_variable(script, EVT_ARRAY(2)), evt_get_variable(script, EVT_ARRAY(3)), 1.0f, 0);

        effectPtr = (*effect)->unk_0C;
        effectPtr->unk_18 = 0;
        effectPtr->unk_20 = 0;
        effectPtr->unk_24.s = 0;
        effectPtr->unk_28 = 0;
        effectPtr->unk_1C = 0;
    }

    effectPtr = D_8024DFE0->unk_0C;

    effectPtr->unk_20 += 10;
    effectPtr->unk_28 += 10;
    effectPtr->unk_24.s += 10;
    effectPtr->unk_18 += 10;
    effectPtr->unk_1C += 10;
    if (effectPtr->unk_18 >= 255) {
        effectPtr->unk_18 = 255;
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241088_CF8BF8);
/*
ApiStatus N(func_80241088_CF8BF8)(Evt *script, s32 isInitialCall) {
    EffectInstanceDataThing* effectPtr;

    if (isInitialCall) {
        D_8024DFE4->flags |= 0x10;
        D_8024DFE8->flags |= 0x10;
    }

    effectPtr = D_8024DFE0->unk_0C;
    effectPtr->unk_18 -= 10;
    effectPtr->unk_20 -= 10;
    effectPtr->unk_24.s -= 10;
    effectPtr->unk_28 -= 10;
    effectPtr->unk_1C -= 10;

    if (effectPtr->unk_18 <= 0) {
        effectPtr->unk_18 = 0;
        remove_effect(D_8024DFE0, effectPtr);
        free_generic_entity(D_8024DFC0);
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_8024113C_CF8CAC);
/*
ApiStatus N(func_8024113C_CF8CAC)(Evt *script, s32 isInitialCall) {
    D_8024DFE0->unk_0C->unk_34 = evt_get_variable(script, *script->ptrReadPos);
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241170_CF8CE0);
/*
ApiStatus N(func_80241170_CF8CE0)(Evt *script, s32 isInitialCall) {
    s32 var = evt_get_variable(script, *script->ptrReadPos);
    EffectInstanceDataThing* effectPtr = D_8024DFE0->unk_0C;

    switch (var) {
        case 0:
            effectPtr->unk_38 = 0xC0;
            break;
        case 1:
            effectPtr->unk_38 = 0x80;
            break;
        case 2:
            effectPtr->unk_38 = 0x40;
            break;
        default:
            effectPtr->unk_38 = 0;
            break;
    }

    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_802411F0_CF8D60);
/*
ApiStatus N(func_802411F0_CF8D60)(Evt *script, s32 isInitialCall) {
    D_8024DFE8->unk_0C->unk_1C = 0;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241208_CF8D78);
/*
ApiStatus N(func_80241208_CF8D78)(Evt *script, s32 isInitialCall) {
    D_8024DFE8->unk_0C->unk_1C = 1;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241224_CF8D94);
/*
ApiStatus N(func_80241224_CF8D94)(Evt *script, s32 isInitialCall) {
    D_8024DFE8->unk_0C->unk_1C = 2;
    return ApiStatus_DONE2;
}
*/

#include "world/common/GetGameStatus75.inc.c"

#include "world/common/SetCamVfov.inc.c"

#include "world/common/GetCamVfov.inc.c"

#include "world/common/UnkCameraFunc.inc.c"

#include "world/common/UnkRotatePlayer.inc.c"

#include "world/common/UnkPartnerFuncs.inc.c"

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_802416F8_CF9268);
/*
void N(func_802416F8_CF9268)(void) {
    s32 var = evt_get_variable(NULL, D_8024DFD8);

    if (var == 1) {
        playFX_50(0, 0, 0, 0);
    } else if (var == 2) {
        playFX_50(1, 0, 0, 0);
    }
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241764_CF92D4);
/*
ApiStatus N(func_80241764_CF92D4)(Evt *script, s32 isInitialCall) {
    D_8024DFC0 = create_generic_entity_frontUI(NULL, N(func_80242468_95D668));
    return ApiStatus_DONE2;
}
*/

#include "world/common/SetManyVars.inc.c"

#include "world/common/UnkYawFunc.inc.c"

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241A10_CF9580);
/*
ApiStatus N(func_80241A10_CF9580)(Evt *script, s32 isInitialCall) {
    Npc *npc = get_npc_unsafe(script->varTable[2]);

    D_8024E1B4 = npc->currentAnim;
    npc->currentAnim = script->varTable[4];
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241A54_CF95C4);
/*
ApiStatus N(func_80241A54_CF95C4)(Evt *script, s32 isInitialCall) {
    get_npc_unsafe(script->varTable[2])->currentAnim = D_8024E1B4;
    return ApiStatus_DONE2;
}
*/

#include "common/GetItemEntityPosition.inc.c"

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241B20_CF9690);

INCLUDE_ASM(s32, "world/area_sam/sam_01/CF7E80", func_80241C90_CF9800);
/*
ApiStatus N(func_80241C90_CF9800)(Evt* script, s32 isInitialCall) {
    s32 i;

    if (N(D_8024D8F0_D05460) == NULL) {
        N(D_8024D8F0_D05460) = heap_malloc(16 * sizeof(s32));
        for (i = 0; i < 16; i++) {
            N(D_8024D8F0_D05460)[i] = script->varTable[i];
        }
    } else {
        for (i = 0; i < 16; i++) {
            script->varTable[i] = N(D_8024D8F0_D05460)[i];
        }
        heap_free(N(D_8024D8F0_D05460));
        N(D_8024D8F0_D05460) = NULL;
    }
    return ApiStatus_DONE2;
}
*/

#define NAMESPACE dup_sam_01
#include "world/common/GetItemName.inc.c"
#define NAMESPACE sam_01

#include "world/common/SomeItemEntityFunc.inc.c"

#include "world/common/CheckItemFlags40.inc.c"
