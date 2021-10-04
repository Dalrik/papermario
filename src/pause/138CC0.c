#include "common.h"

// Probably only used here, but could theoretically be used in the main menu too
typedef struct {
    s32 cursorX;
    s32 cursorY;
    s32 baseMsgID;
} StatsEntryData; // size = 0xC

extern HudElementAnim* gStatsMenuElements[12];
extern MenuWindowBP gStatsMenuWindowBPs[1];
extern StatsEntryData gStatsMenuEntries[11];

// Fake "badge" for the None entry that appears on the equipped badges page when nothing is equipped
#define BADGE_NONE_STANDIN 0x7FFE
// Invalid badge ID filled in unused slots of gBadgeMenuItemIDs
#define BADGE_INVALID 0x7FFF

INCLUDE_ASM(s32, "pause/138CC0", pause_stats_draw_contents);

void pause_stats_init(MenuPanel* panel) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gStatsMenuIconIDs); i++) {
        s32 iconID = create_hud_element(gStatsMenuElements[i]);

        gStatsMenuIconIDs[i] = iconID;
        set_hud_element_flags(iconID, 0x80);
    }

    for (i = 0; i < ARRAY_COUNT(gStatsMenuWindowBPs); i++) {
        gStatsMenuWindowBPs[i].tab = panel;
    }

    setup_pause_menu_tab(gStatsMenuWindowBPs, ARRAY_COUNT(gStatsMenuWindowBPs));
    panel->initialized = TRUE;
}

void pause_stats_handle_input(MenuPanel* panel) {
    s32 initialSelection = panel->selected;
    s16 adjustedBootsLevel;
    s16 adjustedHammerLevel;
    s32 msgOffset;

    if (gPauseMenuHeldButtons & BUTTON_STICK_LEFT) {
        while (1) {
            panel->col--;
            if (panel->col < 0) {
                panel->col = 0;
                break;
            } else if (panel->selected != panel->gridData[
                                            (panel->page * panel->numCols * panel->numRows)
                                          + (panel->numCols * panel->row)
                                          + (panel->col)]) {
                break;
            }
        }
    }

    if (gPauseMenuHeldButtons & BUTTON_STICK_RIGHT) {
        while (1) {
            panel->col++;
            if (panel->col >= panel->numCols) {
                panel->col = panel->numCols - 1;
                break;
            } else if (panel->selected != panel->gridData[
                                            (panel->page * panel->numCols * panel->numRows)
                                          + (panel->numCols * panel->row)
                                          + (panel->col)]) {
                break;
            }
        }
    }

    if (gPauseMenuHeldButtons & BUTTON_STICK_UP) {
        while (1) {
            panel->row--;
            if (panel->row < 0) {
                panel->row = 0;
                break;
            } else if (panel->selected != panel->gridData[
                                            (panel->page * panel->numCols * panel->numRows)
                                          + (panel->numCols * panel->row)
                                          + (panel->col)]) {
                break;
            }
        }
    }

    if (gPauseMenuHeldButtons & BUTTON_STICK_DOWN) {
        while (1) {
            panel->row++;
            if (panel->row >= panel->numRows) {
                panel->row = panel->numRows - 1;
                break;
            } else if (panel->selected != panel->gridData[
                                            (panel->page * panel->numCols * panel->numRows)
                                          + (panel->numCols * panel->row)
                                          + (panel->col)]) {
                break;
            }
        }
    }

    panel->selected = panel->gridData[
                        (panel->page * panel->numCols * panel->numRows)
                      + (panel->numCols * panel->row)
                      + (panel->col)];
    if (panel->selected != initialSelection) {
        sfx_play_sound(SOUND_MENU_CHANGE_SELECTION);
    }

    msgOffset = 0;
    adjustedBootsLevel = gPlayerData.bootsLevel;
    adjustedHammerLevel = gPlayerData.hammerLevel;

    adjustedBootsLevel++;
    if (adjustedBootsLevel < 0) {
        adjustedBootsLevel = 0;
    }
    if (adjustedBootsLevel > 3) {
        adjustedBootsLevel = 3;
    }

    adjustedHammerLevel++;
    if (adjustedHammerLevel < 0) {
        adjustedHammerLevel = 0;
    }
    if (adjustedHammerLevel > 3) {
        adjustedHammerLevel = 3;
    }

    switch (gStatsMenuEntries[panel->selected].baseMsgID) {
        case 0x25:
            if (adjustedBootsLevel > 1) {
                msgOffset = adjustedBootsLevel - 1;
            }
            break;
        case 0x28:
            msgOffset = adjustedHammerLevel;
            break;
        case 0x2F:
            if (evt_get_variable(NULL, EVT_SAVE_FLAG_TUTORIAL_GOT_STAR_PIECE)) {
                msgOffset = 1;
            }
            break;
    }

    gPauseMenuCurrentDescMsg = pause_get_menu_msg(gStatsMenuEntries[panel->selected].baseMsgID + msgOffset);
    gPauseMenuCurrentDescIconScript = NULL;

    if (gPauseMenuPressedButtons & BUTTON_B) {
        sfx_play_sound(SOUND_MENU_BACK);
        gPauseMenuCurrentTab = 0;
    }
}

void pause_stats_cleanup(void) {
    s32* iconIDs = gStatsMenuIconIDs;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gStatsMenuIconIDs); i++) {
        free_hud_element(iconIDs[i]);
    }
}

s32 pause_badges_comparator(s16* a, s16* b) {
    s16 aVal;
    s16 bVal;

    if (*a == 0) {
        aVal = BADGE_INVALID;
    } else {
        aVal = gItemTable[*a].badgeSortPriority;
    }

    if (*b == 0) {
        bVal = BADGE_INVALID;
    } else {
        bVal = gItemTable[*b].badgeSortPriority;
    }

    if (aVal == bVal) {
        return 0;
    } else if (aVal < bVal) {
        return -1;
    } else {
        return 1;
    }
}

s32 pause_badges_count_all(void) {
    PlayerData* playerData = &gPlayerData;
    s32 i;

    pause_sort_item_list(playerData->badges, ARRAY_COUNT(playerData->badges), pause_badges_comparator);

    for (i = 0; i < ARRAY_COUNT(playerData->badges); i++) {
        if (playerData->badges[i] == 0) {
            break;
        }
    }

    return i;
}

s32 pause_badges_count_equipped(void) {
    PlayerData* playerData = &gPlayerData;
    s32 i;

    pause_sort_item_list(playerData->equippedBadges, ARRAY_COUNT(playerData->equippedBadges), &pause_badges_comparator);

    for (i = 0; i < ARRAY_COUNT(playerData->equippedBadges); i++) {
        if (playerData->equippedBadges[i] == 0) {
            break;
        }
    }

    return i;
}

s32 pause_badges_get_pos_x(s32 page, s32 itemIndex) {
    return (itemIndex % BADGE_MENU_PAGE(page)->numCols) * 141;
}

s32 pause_badges_get_pos_y(s32 page, s32 itemIndex) {
    return ((page + 1) * 11) + (BADGE_MENU_PAGE(page)->listStart * 16) + ((itemIndex / BADGE_MENU_PAGE(
                page)->numCols) * 16);
}

s32 pause_badges_get_column(s32 page, s32 itemIdx) {
    return itemIdx % BADGE_MENU_PAGE(page)->numCols;
}

s32 pause_badges_get_row(s32 page, s32 itemIdx) {
    return BADGE_MENU_PAGE(page)->listStart + (itemIdx / BADGE_MENU_PAGE(page)->numCols);
}

s32 pause_badges_is_visible(s32 y) {
    if (y < gBadgeMenuCurrentScrollPos - 32) {
        return FALSE;
    } else {
        return y < gBadgeMenuCurrentScrollPos + 128;
    }
}

s32 pause_badges_scroll_offset_y(s32 offset) {
    return offset - gBadgeMenuCurrentScrollPos;
}

s32 pause_badges_scroll_offset_x(s32 x) {
    return x;
}

s32 pause_badges_try_remove(s16 badgeID) {
    s16 *currentSlot = gPlayerData.equippedBadges;
    s16 *slotToRemove = currentSlot;
    s32 result = 0;
    s32 i;

    if (badgeID == BADGE_INVALID) {
        return 0;
    }

    for (i = 0; i < ARRAY_COUNT(gPlayerData.equippedBadges); i++, currentSlot++) {
        if (badgeID == *currentSlot) {
            slotToRemove = currentSlot;
            result = 1;
            break;
        }
    }

    // Remove and shift array contents
    for (; i < ARRAY_COUNT(gPlayerData.equippedBadges) - 1; i++, currentSlot++) {
        *currentSlot = *(currentSlot + 1);
    }
    *currentSlot = 0;

    if (*slotToRemove == 0) {
        result = 2;
    }
    return result;
}

typedef enum BadgeEquipResult {
    EQUIP_RESULT_ALREADY_EQUIPPED,
    EQUIP_RESULT_NOT_ENOUGH_BP,
    EQUIP_RESULT_TOO_MANY_BADGES,
    EQUIP_RESULT_SUCCESS,
} BadgeEquipResult;

s32 pause_badges_try_equip(s16 badgeID) {
    PlayerData* playerData = &gPlayerData;
    s16 *badgeSlot = &playerData->equippedBadges[0];
    s32 i;
    s32 totalEquippedBP;

    if (badgeID == BADGE_NONE_STANDIN) {
        badgeID = 0;
    }
    if (badgeID == BADGE_INVALID) {
        badgeID = 0;
    }
    if (badgeID == 0) {
        return EQUIP_RESULT_NOT_ENOUGH_BP;
    }

    for (i = 0; i < ARRAY_COUNT(playerData->equippedBadges); i++, badgeSlot++) {
        if (*badgeSlot == badgeID) {
            return EQUIP_RESULT_ALREADY_EQUIPPED;
        }
    }

    totalEquippedBP = pause_get_total_equipped_bp_cost();
    if (badgeID != 0) {
        u8 moveID = gItemTable[badgeID].moveID;
        s32 requiredBP = totalEquippedBP + gMoveTable[moveID].costBP;

        if (playerData->maxBP < requiredBP) {
            return EQUIP_RESULT_NOT_ENOUGH_BP;
        }
    }

    badgeSlot = &playerData->equippedBadges[0];
    for (i = 0; i < ARRAY_COUNT(playerData->equippedBadges); i++, badgeSlot++) {
        if (*badgeSlot == 0) {
            *badgeSlot = badgeID;
            break;
        }
    }
    if (i == ARRAY_COUNT(playerData->equippedBadges)) {
        return EQUIP_RESULT_TOO_MANY_BADGES;
    } else {
        return EQUIP_RESULT_SUCCESS;
    }
}

void pause_badges_draw_bp_orbs(s32 orbState, s32 x, s32 y) {
    s32 orbSize = 8;

    switch (orbState) {
        case 0:
            pause_draw_rect(x * 4, y * 4, (x + orbSize) * 4, (y + orbSize) * 4, 0, 0, 256, 1024, 1024);
            break;
        case 1:
            pause_draw_rect(x * 4, y * 4, (x + orbSize) * 4, (y + orbSize) * 4, 0, 0, 0, 1024, 1024);
            break;
        default:
            pause_draw_rect(x * 4, y * 4, (x + orbSize) * 4, (y + orbSize) * 4, 0, 0, 512, 1024, 1024);
            break;
    }
}

//#ifndef NON_MATCHING

static inline s8 getMaxBP(void) {
    return gPlayerData.maxBP;
}

typedef struct {
    s32 unk0;
    s32 unk4;
} UnknownStruct;
void func_80242BAC(s32, s32, s32); // extern
void func_80242D04(s32, s32, s32); // extern
void pause_draw_menu_label(s32, s32, s32); // extern
void pause_set_cursor_opacity(s32); // extern
extern UnknownStruct D_8008A680[];
extern s32 D_8026F348; // windowStyle
extern s32 D_8026FBD8; // windowStyle
extern s32 D_8026FC10; // WindowStyle
extern s32 D_8026FC48;
extern s32 D_802703FC;
//static const f64 D_8026FFB0[18] = {
//    0.2,
//    0.0,
//    1.4445529006418457e+214,
//    2.254782658421528e+180,
//    2.166953800075719e+233,
//    3.2299599619504684e+209,
//    2.1669538000756064e+233,
//    4.122683489336179e+257,
//    4.3458678423043337e+276,
//    2.1669538000759404e+233,
//    5.943134258412631e+247,
//    4.353961454431821e+276,
//    9.31528406e-315,
//    4.3539783270304433e+276,
//    2.166953800075148e+233,
//    9.45143238682398e+218,
//    2.1669538000751568e+233,
//    1.3567325616400228e+243,
//}; // const

// REMAINING ISSUES:
// 1. playerEquippedBadges loads its value too late, which also swaps s2 and s3 for the remainder of the badge list loop

void pause_badges_draw_contents(s32 dummy, s32 menuX, s32 menuY, s32 menuWidth, s32 menuHeight) {
    PauseItemPage* currentBadgePage = &gBadgeMenuPages[gBadgeMenuCurrentPage];

    s32 scissorULx;
    s32 scissorULy;
    s32 scissorLRx;
    s32 scissorLRy;

    s32 pageID;
    s32 layer;
    s32 iconSlot;

    s32 selectedCol;
    s32 selectedRow;

    s32 msgID;
    s32 msgPosX;
    s32 msgPosY;
    s32 msgOpacity;
    s32 msgStyle;
    s32 msgPalette;
    s32 availableBP;

    s32 scratch;

    s32 selectedBadgeCostBP = 0;
    s32 canEquipSelectedBadge = FALSE;

    PauseItemPage* page;

    msgStyle = 1;
    msgPalette = 0xA;
    availableBP = gPlayerData.maxBP - pause_get_total_equipped_bp_cost();
    selectedRow = gBadgeMenuSelectedIndex / currentBadgePage->numCols;
    selectedCol = gBadgeMenuSelectedIndex % currentBadgePage->numCols;

    // Menu background?
    draw_box(4, (s32) &D_8026FC48, menuX + 0x54, menuY, 0, menuWidth - 0x54, menuHeight, 0xFF, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, NULL, 0, NULL, 0x140, 0xF0, NULL);

    // "BP NEEDED" text?
    set_hud_element_render_pos(gBadgeMenuIconIDs[20], menuX + 0xF1, menuY + 0xB);
    draw_hud_element_3(gBadgeMenuIconIDs[20]);

    // 1ce8
    scissorULx = menuX + 1;
    scissorULy = menuY + 0xE;
    scissorLRx = (menuX + menuWidth) - 1;
    scissorLRy = (menuY + menuHeight) - 9;
    if (scissorULx < 1) {
        scissorULx = 1;
    }
    if (scissorULy < 1) {
        scissorULy = 1;
    }
    if ((scissorLRx <= 0) || (scissorLRy <= 0) || (scissorULx >= 0x13F) || (scissorULy >= 0xEF)) {
        return;
    }

    // 1d40
    if (scissorLRx >= 0x13F) {
        scissorLRx = 0x13F;
    }
    if (scissorLRy >= 0xEF) {
        scissorLRy = 0xEF;
    }
    gDPSetScissor(gMasterGfxPos++, G_SC_NON_INTERLACE, scissorULx, scissorULy, scissorLRx, scissorLRy);

    iconSlot = 0;
    for (layer = 0; layer < 3; ++layer) {
        for (pageID = 0; pageID < 0x14; ++pageID) {
            // 1e44
            s32 badgeListX = menuX + 0x77;
            s32 badgeListY = menuY + 0x11;
            s32 indexInPage;
            s32* iconIDs = gBadgeMenuIconIDs;

            page = &gBadgeMenuPages[pageID];
            if (!page->enabled) {
                break;
            }
            pause_badges_get_pos_y(pageID, 0);

            // 1e7c
            for (indexInPage = 0; indexInPage < page->count; indexInPage++) {
                s16* playerEquippedBadges = &gPlayerData.equippedBadges;
                ItemID itemID = gBadgeMenuItemIDs[page->startIndex + indexInPage];
                s32 equipped = 0;
                s32 itemInvalid;
                s32 thisBadgeIsSelected = FALSE;
                s32 canEquipThisBadge = FALSE;
                s32 badgePosX;
                s32 badgePosY;
                s32 offsetX;
                s32 offsetY;
                s32 i;

                if (itemID == 0x7FFF) {
                    continue;
                }
                // 1ee8
                badgePosX = pause_badges_get_pos_x(pageID, indexInPage);
                badgePosY = pause_badges_get_pos_y(pageID, indexInPage);
                itemInvalid = itemID == 0x7FFE;
                for (i = 0; i < ARRAY_COUNT(gPlayerData.equippedBadges); i++) {
                    if (itemID == playerEquippedBadges[i]) {
                        equipped = 1;
                        break;
                    }
                }
                // 1f34
                if ((gPauseMenuCurrentTab == 2) && (gBadgeMenuLevel == 1) && (pause_badges_get_column(pageID, indexInPage) == selectedCol) && (pause_badges_get_row(pageID, indexInPage) == selectedRow)) {
                    s32 localItemID = itemID;
                    thisBadgeIsSelected = TRUE;
                    if (!itemInvalid) {
                        selectedBadgeCostBP = gMoveTable[gItemTable[localItemID].moveID].costBP;
                        if (!equipped && (availableBP >= selectedBadgeCostBP)) {
                            canEquipSelectedBadge = TRUE;
                        }
                    }
                }
                if (!itemInvalid && (availableBP < gMoveTable[gItemTable[itemID].moveID].costBP)) {
                    // 2034
                    canEquipThisBadge = TRUE;
                }
                offsetX = 0;
                offsetY = 0;
                if (thisBadgeIsSelected) {
                    // 2048
                    offsetX = -1;
                    offsetY = -1;
                }
                if (layer == 0) {
                    // Draw highlights on equipped badges

                    // 2058
                    msgStyle = 1;
                    msgPalette = 0xA;
                    if (thisBadgeIsSelected) {
                        // 206c
                        msgStyle = 9;
                    }
                    if (equipped) {
                        // 2080
                        s32 posX = (badgeListX + pause_badges_scroll_offset_x(badgePosX)) - 0x14;
                        draw_box(4, (s32) &D_8026FC10, posX, menuY + pause_badges_scroll_offset_y(badgePosY) + 0x11, 0, 0xC8, 0xD, 0xFF, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, NULL, 0, NULL, 0x140, 0xF0, NULL);
                    } else if (canEquipThisBadge) {
                        // 212c
                        msgPalette = 0xB;
                    }
                }
                // 2134
                if (pause_badges_is_visible(badgePosY) != 0) {
                    if (layer == 0) {
                        // Draw badge row text (name and BP)

                        if (itemInvalid) {
                            // 215c
                            s32 posX;
                            s32 msgID = pause_get_menu_msg(0x45);
                            posX = badgeListX + pause_badges_scroll_offset_x(badgePosX) + offsetX;
                            draw_msg(msgID, posX, badgeListY + pause_badges_scroll_offset_y(badgePosY) + offsetY, 0xFF, msgPalette, msgStyle);
                        } else {
                            // 21b8
                            if (gItemTable[itemID].nameMsg != 0) {
                                if (gItemTable[itemID].nameMsg > 0) {
                                    // 21dc
                                    s32 posX = badgeListX + pause_badges_scroll_offset_x(badgePosX) + offsetX;
                                    draw_msg(gItemTable[itemID].nameMsg, posX, badgeListY + pause_badges_scroll_offset_y(badgePosY) + offsetY, 0xFF, msgPalette, msgStyle);
                                }
                            }
                            // 2224
                            {
                                s32 orbsPosX = 0xEB;
                                s32 orbsPosY = 0x11;
                                s32 posX = menuX + (pause_badges_scroll_offset_x(badgePosX) + orbsPosX);
                                s32 posY = menuY + (pause_badges_scroll_offset_y(badgePosY) + orbsPosY);
                                draw_number(gMoveTable[gItemTable[itemID].moveID].costBP, posX, posY, 1, msgPalette, 0xFF, 3);
                            }
                        }
                    }
                    // 22a4
                    if (layer == 1) {
                        // Draw badge icons

                        // 22b0
                        s32 posX;
                        s32 iconID;

                        iconID = iconIDs[iconSlot];
                        clear_hud_element_flags(iconID, 0x20000000);
                        set_hud_element_flags(iconID, 0x8000);
                        if (itemInvalid) {
                            // 22ec
                            iconID = D_802703FC;
                        } else {
                            HudElementAnim* badgeIcon;
                            // 22fc
                            if (thisBadgeIsSelected) {
                                set_hud_element_flags(iconID, 0x20000000);
                                gPauseMenuCurrentDescIconScript = D_8008A680[gItemTable[itemID].iconID].unk0;
                            }
                            // 2340
                            if (!equipped && canEquipThisBadge) {
                                badgeIcon = D_8008A680[gItemTable[itemID].iconID].unk4;
                            } else {
                                badgeIcon = D_8008A680[gItemTable[itemID].iconID].unk0;
                            }
                            // 23ac
                            set_hud_element_anim(iconID, badgeIcon);
                            set_hud_element_scale(iconID, 0.670816f);
                        }
                        // 23c4
                        {
                            s32 scrollOffsetX = pause_badges_scroll_offset_x(badgePosX) + 0x6B;
                            s32 posX = menuX + scrollOffsetX + offsetX;
                            s32 scrollOffsetY = pause_badges_scroll_offset_y(badgePosY) + 0x17;
                            s32 posY = menuY + scrollOffsetY + offsetY;
                            set_hud_element_render_pos(iconID, posX, posY);
                        }
                        // 2400
                        if (iconSlot == 0) {
                            // 240c
                            draw_hud_element_3(iconID);
                        } else {
                            // 241c
                            draw_hud_element_2(iconID);
                        }
                        iconSlot += 1;
                    }
                    // 2430
                    if ((layer == 2) && !itemInvalid) {
                        // Draw per-badge BP orbs
                        #define BADGE_BP_ROW(i) ((i)/5)
                        #define BADGE_BP_COL(i) ((i) - (BADGE_BP_ROW(i)*5))

                        s32 badgeCostBP = gMoveTable[gItemTable[itemID].moveID].costBP;
                        s32 orbOffsetY = badgeCostBP <= 10 ? 4 : 1;
                        s32 orbsPosX = 0xEB;
                        s32 orbsPosY = 0x11;

                        s32 orbMaskR = 0x00;
                        s32 orbMaskG = 0xFF;
                        s32 orbMaskB = 0x64;

                        // 248c
                        gSPDisplayList(gMasterGfxPos++, &D_8026F348);
                        gDPSetTextureFilter(gMasterGfxPos++, G_TF_BILERP);
                        // 24d8
                        if (!equipped) {
                            // 24e0
                            for (i = 0; i < badgeCostBP; ++i) {
                                // 24f0
                                s32 singleRow = badgeCostBP < 5;
                                s32 x, y;

                                gDPSetPrimColor(gMasterGfxPos++, 0, 0, 0xE3, 0xE3, 0xE3, 0xFF);
                                // 2518
                                x = menuX + (pause_badges_scroll_offset_x(badgePosX) + orbsPosX) + 1 + BADGE_BP_COL(i)*6;
                                y = menuY + (pause_badges_scroll_offset_y(badgePosY) + orbsPosY) + orbOffsetY;
                                if (!singleRow) {
                                    // 2580
                                    y += BADGE_BP_ROW(i)*6 - 3;
                                }
                                // 2594
                                pause_badges_draw_bp_orbs(0, x, y);
                            }
                            // 25b0
                            gDPPipeSync(gMasterGfxPos++);
                            gDPSetRenderMode(gMasterGfxPos++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
                            gDPSetPrimColor(gMasterGfxPos++, 0, 0, orbMaskR, orbMaskG, orbMaskB, 0x80);
                            // 2628
                            for (i = 0; i < badgeCostBP; i++) {
                                s32 singleRow = badgeCostBP < 5;
                                // 2630
                                if (i < availableBP) {
                                    s32 row, col, x, y;
                                    // 2644
                                    x = menuX + (pause_badges_scroll_offset_x(badgePosX) + orbsPosX) + 1 + BADGE_BP_COL(i)*6;
                                    y = menuY + (pause_badges_scroll_offset_y(badgePosY) + orbsPosY) + orbOffsetY;
                                    if (!singleRow) {
                                        // 26ac
                                        y += BADGE_BP_ROW(i)*6 - 3;
                                    }
                                    // 26c0
                                    pause_badges_draw_bp_orbs(1, x, y);
                                }
                            }
                        } else {
                            // 26e4
                            gDPSetPrimColor(gMasterGfxPos++, 0, 0, orbMaskR, orbMaskG, orbMaskB, 0xFF);
                            for (i = 0; i < badgeCostBP; ++i) {
                                // 2708
                                s32 x = menuX + (pause_badges_scroll_offset_x(badgePosX) + orbsPosX) + 1 + BADGE_BP_COL(i)*6;
                                s32 y = menuY + (pause_badges_scroll_offset_y(badgePosY) + orbsPosY) + orbOffsetY;
                                if (badgeCostBP >= 5) {
                                    // 2774
                                    y += BADGE_BP_ROW(i)*6 - 3;
                                }
                                // 2788
                                pause_badges_draw_bp_orbs(2, x, y);
                            }
                            gDPPipeSync(gMasterGfxPos++);
                        }
                    }
                }
            }
        }
    }
    gDPPipeSync(gMasterGfxPos++);
    // 2808
    scissorULx = menuX + 1;
    scissorULy = menuY + 1;
    scissorLRx = (menuX + menuWidth) - 1;
    scissorLRy = (menuY + menuHeight) - 1;
    if (scissorULx <= 0) {
        scissorULx = 1;
    }
    if (scissorULy <= 0) {
        scissorULy = 1;
    }
    if ((scissorLRx > 0) && (scissorLRy > 0) && (scissorULx < 0x13F) && (scissorULy < 0xEF)) {
        s32 posY;
        s32 offsetX;
        if (scissorLRx >= 0x13F) {
            scissorLRx = 0x13F;
        }
        if (scissorLRy >= 0xEF) {
            scissorLRy = 0xEF;
        }
        gDPSetScissor(gMasterGfxPos++, 0, scissorULx, scissorULy, scissorLRx, scissorLRy);
        // 2954
        if ((gPauseMenuCurrentTab == 2) && (gBadgeMenuLevel == 1)) {
            // 297c
            if (gBadgeMenuCurrentPage > 0) {
                // Draw upward "Z" arrow
                // 2990
                set_hud_element_render_pos(gBadgeMenuIconIDs[17], menuX + 0x116, menuY + 0xE);
                draw_hud_element_3(gBadgeMenuIconIDs[17]);
            }
            if (gBadgeMenuPages[gBadgeMenuCurrentPage + 1].enabled != 0) {
                // Draw downward "R" arrow
                // 29e4
                set_hud_element_render_pos(gBadgeMenuIconIDs[18], menuX + 0x116, menuY + 0x92);
                draw_hud_element_3(gBadgeMenuIconIDs[18]);
            }
        }
        // Draw total BP row
        // 2a10
        set_hud_element_render_pos(gBadgeMenuIconIDs[16], menuX + 0x2B, menuY + 0x51);
        draw_hud_element_3(gBadgeMenuIconIDs[16]);
        draw_msg(pause_get_menu_msg(0x46), menuX + 0x10, menuY + 0x4A, 0xFF, 0xA, 1);
        draw_number(getMaxBP(), menuX + 0x45, menuY + 0x4A, 1, 0xA, 0xFF, 3);
        // Draw available BP row
        {
            // 2aa0
            s32 totalBPCost = pause_get_total_equipped_bp_cost();
            s32 maxBP = getMaxBP();
            s32 availableBP = maxBP - totalBPCost;
            s32 offsetX = 0;
            s32 offsetY = ((maxBP-1)/ 10) * 8;
            if (availableBP < 10) {
                offsetX = -4;
            }
            pause_draw_menu_label(7, menuX + 0xC, menuY + 0x64 + offsetY);
            draw_number(availableBP, menuX + 0x49 + offsetX, menuY + 0x64 + offsetY, 1, 0xA, 0xFF, 3);
        }
        // 2b2c
        {
            s32 i;
            s32 maxBP = getMaxBP();
            u8 orbR = 0x00;
            u8 orbG = 0xFF;
            u8 orbB = 0x64;
            gSPDisplayList(gMasterGfxPos++, &D_8026F348);
            gDPSetTextureFilter(gMasterGfxPos++, G_TF_BILERP);

            for (i = 0; i < maxBP; ++i) {
                // Draw base layer of white BP orbs
                // 2b90
                s32 row;
                s32 col;
                gDPSetPrimColor(gMasterGfxPos++, 0, 0, 0xE3, 0xE3, 0xE3, 0xFF);
                row = i / 10;
                col = i - (row*10);
                pause_badges_draw_bp_orbs(0, menuX + 0xB + col*6, menuY + 0x5C + row*8);
            }
            gDPPipeSync(gMasterGfxPos++);

            if (canEquipSelectedBadge) {
                // Color unused BP orbs while an unequipped badge is selected
                f64 beatState;
                gDPSetPrimColor(gMasterGfxPos++, 0, 0, orbR, orbG, orbB, 0xFF);
                // 2c74
                for (i = 0; i < (availableBP - selectedBadgeCostBP); i++) {
                    // Color unused BP orbs orange
                    s32 row = i / 10;
                    s32 col = i - (row*10);
                    pause_badges_draw_bp_orbs(2, menuX + 0xB + col*6, menuY + 0x5C + row*8);
                }
                // 2cf8
                {
                    f64 beatState;
                    s8 beatAlpha;

                    gDPPipeSync(gMasterGfxPos++);
                    beatState = (sin_deg(gGameStatusPtr->frameCounter * 15) + 1.0f) * 0.2;
                    beatAlpha = (f32)(beatState + 0.5) * 255;
                    gDPSetRenderMode(gMasterGfxPos++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
                    gDPSetPrimColor(gMasterGfxPos++, 0, 0, orbR, orbG, orbB, beatAlpha);
                }
                // 2dec
                for (i = (availableBP - selectedBadgeCostBP); i < availableBP; i++) {
                    // Oscillate color of BP orbs that will be used
                    s32 row = i / 10;
                    s32 col = i - (row*10);
                    pause_badges_draw_bp_orbs(2, menuX + 0xB + col*6, menuY + 0x5C + row*8);
                }
                gDPPipeSync(gMasterGfxPos++);
            } else {
                gDPSetPrimColor(gMasterGfxPos++, 0, 0, orbR, orbG, orbB, 0xFF);
                // 2ea0
                for (i = 0; i < availableBP; i++) {
                    // Color unused BP orbs orange
                    s32 row = i / 10;
                    s32 col = i - (row*10);
                    pause_badges_draw_bp_orbs(2, menuX + 0xB + col*6, menuY + 0x5C + row*8);
                }
                gDPPipeSync(gMasterGfxPos++);
            }
        }

        // Draw "All Badges" box
        {
            // 2f34
            s32 posX = menuX;
            if (gBadgeMenuCurrentTab == 0) {
                posX += 9;
            }
            draw_box(
                4, // flags
                (s32) &D_8026FBD8, // windowStyle
                posX, menuY + 7, 0, // pos x, y, z
                0x5B, 0x22, // width, height
                0xFF, // opacity
                gBadgeMenuCurrentTab == 1 ? 0x80 : 0x0, // darkening
                0.0f, 0.0f, // scale x, y
                0.0f, 0.0f, 0.0f, // rot x, y, z
                NULL, 0, // fpDrawContents, arg
                NULL, // rotScaleMtx
                0x140, 0xF0, // translate x, y
                NULL // outMtx
                );
        }

        {
            // 2fc8
            s32 msgID = pause_get_menu_msg(0x47);
            s32 posX = menuX + 0xA;
            s32 posY;
            s32 opacity;
            if (gBadgeMenuCurrentTab == 0) {
                posX = menuX + 0x13;
            }
            opacity = 0xFF;
            posY = menuY + 0x11;
            if (gBadgeMenuCurrentTab == 1) {
                opacity = 0xBF;
            }
            draw_msg(msgID, posX, posY, opacity, 0, 1);
        }

        // Draw "Active Badges" box
        {
            // 3014
            s32 posX;
            s32 posY;
            posX = menuX;
            if (gBadgeMenuCurrentTab == 1) {
                posX += 9;
            }
            posY = menuY + 0x25;
            draw_box(
                4, // flags
                (s32) &D_8026FBD8, // windowStyle
                posX, posY, 0, // pos x, y, z
                0x5B, 0x22, // width, height
                0xFF, // opacity
                gBadgeMenuCurrentTab == 0 ? 0x80 : 0x0, // darkening
                0.0f, 0.0f, // scale x, y
                0.0f, 0.0f, 0.0f, // rot x, y, z
                NULL, 0, // fpDrawContents, arg
                NULL, // rotScaleMtx
                0x140, 0xF0, // translate x, y
                NULL // outMtx
                );
        }
        {
            // 30a0
            s32 msgID = pause_get_menu_msg(0x48);
            s32 posX;
            s32 posY;
            s32 opacity;

            posX = menuX + 0xC;
            if (gBadgeMenuCurrentTab == 1) {
                posX = menuX + 0x15;
            }
            opacity = 0xFF;
            posY = menuY + 0x2A;
            if (gBadgeMenuCurrentTab == 0) {
                opacity = 0xBF;
            }
            draw_msg(msgID, posX, posY, opacity, 0, 1);
        }
        {
            // 30ec
            s32 msgID = pause_get_menu_msg(0x49);
            s32 posX;
            s32 posY;
            s32 opacity;

            posX = menuX + 0x1A;
            if (gBadgeMenuCurrentTab == 1) {
                posX = menuX + 0x23;
            }
            opacity = 0xFF;
            posY = menuY + 0x34;
            if (gBadgeMenuCurrentTab == 0) {
                opacity = 0xBF;
            }
            draw_msg(msgID, posX, posY, opacity, 0, 1);
        }
        // 312c
        if (gPauseMenuCurrentTab == 2) {
            // Scrolling animations between pages?
            if (gBadgeMenuLevel == 0) {
                // 314c
                s32 offsetY = (gBadgeMenuCurrentTab * 32) + 0x1A;
                func_80242D04(0x20, 0xA + menuX, menuY + offsetY);
            } else {
                // 3170
                s32 posX = 
                    pause_badges_get_pos_x(gBadgeMenuCurrentPage, 
                        gBadgeMenuSelectedIndex - (
                            BADGE_MENU_PAGE(gBadgeMenuCurrentPage)->listStart *
                            BADGE_MENU_PAGE(gBadgeMenuCurrentPage)->numCols)
                    );
                s32 posY =
                    pause_badges_get_pos_y(gBadgeMenuCurrentPage, 
                        gBadgeMenuSelectedIndex - (
                            BADGE_MENU_PAGE(gBadgeMenuCurrentPage)->listStart *
                            BADGE_MENU_PAGE(gBadgeMenuCurrentPage)->numCols)
                    );
                s32 scrollOffsetX = pause_badges_scroll_offset_x(posX);
                s32 scrollOffsetY = pause_badges_scroll_offset_y(posY);
                if (scrollOffsetY < 0) {
                    scrollOffsetY = 0;
                } else if (scrollOffsetY >= 0x71) {
                    scrollOffsetY = 0x70;
                }
                if (gBadgeMenuCurrentScrollPos != gBadgeMenuTargetScrollPos) {
                    s32 offsetX = scrollOffsetX + 0x5D;
                    s32 offsetY = scrollOffsetY + 0x17;
                    func_80242BAC(0x20, menuX + offsetX, menuY + offsetY);
                } else {
                    s32 offsetX = scrollOffsetX + 0x5D;
                    s32 offsetY = scrollOffsetY + 0x17;
                    func_80242D04(0x20, menuX + offsetX, menuY + offsetY);
                }
            }
        }
        // 327c
        if (gBadgeMenuBShowNotEnoughBP != 0) {
            // Draw error message popups
            pause_set_cursor_opacity(0);
            if (gBadgeMenuBShowNotEnoughBP == 1) {
                draw_box(4, (s32) &D_8026FBD8, menuX + 0x43, menuY + 0x3C, 0, 0x89, 0x1A, 0xFF, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, NULL, 0, NULL, 0x140, 0xF0, NULL);
                draw_msg(pause_get_menu_msg(0x4A), menuX + 0x56, menuY + 0x42, 0xFF, 0, 1);
            } else {
                draw_box(4, (s32) &D_8026FBD8, menuX + 0x43, menuY + 0x3C, 0, 0xAD, 0x1A, 0xFF, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, NULL, 0, NULL, 0x140, 0xF0, NULL);
                draw_msg(pause_get_menu_msg(0x4B), menuX + 0x5A, menuY + 0x42, 0xFF, 0, 1);
            }
        }
    }
    
}
//#else
//INCLUDE_ASM(s32, "pause/138CC0", pause_badges_draw_contents);
//#endif

void pause_badges_load_badges(s32 onlyEquipped) {
    PlayerData* playerData = &gPlayerData;
    s32 numItems = 0;
    PauseItemPage* page;
    s32 i;

    D_80270388 = 0;
    if (!onlyEquipped) {
        for (i = 0; i < ARRAY_COUNT(playerData->badges); i++) {
            s16 badgeItemID = playerData->badges[i];

            if (badgeItemID == 0) {
                continue;
            } else if (badgeItemID > ITEM_LAST_BADGE) {
                break;
            } else {
                gBadgeMenuItemIDs[numItems] = badgeItemID;
                numItems += 1;
            }
        }
    } else {
        s16* equippedBadges;

        // This is just called to sort equippedBadges, the count is discarded
        pause_badges_count_equipped();

        equippedBadges = playerData->equippedBadges;
        for (i = 0; i < ARRAY_COUNT(playerData->equippedBadges); i++) {
            // This can be written more clearly as equippedBadges[i],
            // but that causes some instruction reordering
            s16 badgeItemID = *equippedBadges;

            if (badgeItemID != 0) {
                gBadgeMenuItemIDs[numItems] = badgeItemID;
                numItems += 1;
            }
            equippedBadges++;
        }
    }
    if (numItems == 0) {
        gBadgeMenuItemIDs[0] = BADGE_NONE_STANDIN;
        numItems = 1;
    }
    gBadgeMenuNumItems = numItems;
    for (i = numItems; i < ARRAY_COUNT(gBadgeMenuItemIDs); i++) {
        gBadgeMenuItemIDs[i] = BADGE_INVALID;
    }

    gBadgeMenuSelectedIndex = 0;
    gBadgeMenuSelectedItemID = 0;
    D_8027037C = 0;
    D_80270394 = 0;
    gBadgeMenuCurrentPage = 0;

    page = &gBadgeMenuPages[0];
    i = 0;
   
    for (i = 0; i < gBadgeMenuNumItems / 8; i++, page++) {
        page->listStart = i * 8;
        page->numCols = 1;
        page->numRows = 8;
        page->enabled = TRUE;
        page->startIndex = i * 8;
        page->count = 8;
    }

    if ((gBadgeMenuNumItems % 8) != 0) {
        s16 count;
        s32 menuNumItems;

        page->listStart = i * 8;
        page->numCols = 1;
        page->enabled = TRUE;
        page->startIndex = i * 8;

        menuNumItems = gBadgeMenuNumItems;
        count = menuNumItems - (menuNumItems / 8 * 8);
        page->count = count;
        page->numRows = page->count;
        i++;
        page++;
    }

    while (i < ARRAY_COUNT(gBadgeMenuPages)) {
        page->enabled = FALSE;

        i++;
        page++;
    }

    gBadgeMenuTargetScrollPos = gBadgeMenuCurrentScrollPos = pause_badges_get_pos_y(0, 0);
}

void pause_badges_init(MenuPanel* panel) {
    s32 i;

    // This sorts the badge list and then discards the count
    pause_badges_count_all();

    gBadgeMenuLevel = 0;
    gBadgeMenuCurrentTab = 0;
    gBadgeMenuBShowNotEnoughBP = 0;

    pause_badges_load_badges(FALSE);
    if (gBadgeMenuItemIDs[0] == BADGE_NONE_STANDIN) {
        panel->initialized = FALSE;
        return;
    }

    for (i = 0; i < ARRAY_COUNT(gBadgeMenuIconIDs); i++) {
        s32 iconID = create_hud_element(gBadgeMenuElements[i]);

        gBadgeMenuIconIDs[i] = iconID;
        set_hud_element_flags(iconID, 0x80);
    }

    for (i = 0; i < ARRAY_COUNT(gBadgeMenuWindowBPs); i++) {
        gBadgeMenuWindowBPs[i].tab = panel;
    }
    setup_pause_menu_tab(gBadgeMenuWindowBPs, ARRAY_COUNT(gBadgeMenuWindowBPs));
    panel->initialized = TRUE;
}

void pause_badges_handle_input(MenuPanel* panel) {
    s32 selectedIndex = gBadgeMenuSelectedIndex;
    s32 numCols = gBadgeMenuPages[gBadgeMenuCurrentPage].numCols;

    s32 selectedCol = selectedIndex % numCols;
    s32 selectedRow = selectedIndex / numCols;

    if (gPauseMenuPressedButtons & BUTTON_A) {
        s16 badgeID;

        if (gBadgeMenuBShowNotEnoughBP != 0) {
            gBadgeMenuBShowNotEnoughBP = 0;
        } else if (gBadgeMenuLevel == 0) {
            if (gBadgeMenuItemIDs[selectedIndex] == BADGE_NONE_STANDIN) {
                sfx_play_sound(SOUND_MENU_BADGE_ERROR);
            } else {
                gBadgeMenuLevel = 1;
                sfx_play_sound(SOUND_MENU_NEXT);
            }
        } else {
            badgeID = gBadgeMenuItemIDs[selectedIndex];
            switch (pause_badges_try_equip(badgeID)) {
                case EQUIP_RESULT_ALREADY_EQUIPPED:
                    sfx_play_sound(SOUND_MENU_BADGE_UNEQUIP);
                    pause_badges_try_remove(badgeID);
                    break;
                case EQUIP_RESULT_NOT_ENOUGH_BP:
                    sfx_play_sound(SOUND_MENU_BADGE_ERROR);
                    gBadgeMenuBShowNotEnoughBP = 1;
                    break;
                case EQUIP_RESULT_TOO_MANY_BADGES:
                    sfx_play_sound(SOUND_MENU_BADGE_ERROR);
                    gBadgeMenuBShowNotEnoughBP = 2;
                    break;
                case EQUIP_RESULT_SUCCESS:
                    sfx_play_sound(SOUND_MENU_BADGE_EQUIP);
                    break;
            }
        }
        return;
    }

    if ((gPauseMenuPressedButtons != 0) || (gPauseMenuHeldButtons != 0)) {
        gBadgeMenuBShowNotEnoughBP = 0;
    }

    if (gBadgeMenuNumItems != 0) {
        if (gBadgeMenuLevel == 0) {
            s32 oldTab = gBadgeMenuCurrentTab;

            if (gPauseMenuHeldButtons & (BUTTON_STICK_UP | BUTTON_STICK_DOWN)) {
                gBadgeMenuCurrentTab ^= 1;
            }
            if (oldTab != gBadgeMenuCurrentTab) {
                sfx_play_sound(SOUND_MENU_CHANGE_TAB);
                pause_badges_load_badges(gBadgeMenuCurrentTab);
            }
        } else {
            s32 heldButtons = gPauseMenuHeldButtons;
            s32 heldButtons2;
            u8 newPageNumCols;

            if (heldButtons & (BUTTON_STICK_UP | BUTTON_Z)) {
                if (heldButtons & BUTTON_STICK_UP) {
                    selectedRow -= 1;
                    if (selectedRow < 0) {
                        selectedRow = 0;
                    }
                    if (selectedRow < gBadgeMenuPages[gBadgeMenuCurrentPage].listStart) {
                        gBadgeMenuCurrentPage -= 1;
                    }
                } else {
                    // Z button press
                    gBadgeMenuCurrentPage -= 1;
                    if (gBadgeMenuCurrentPage < 0) {
                        gBadgeMenuCurrentPage = 0;
                    }
                    selectedRow = gBadgeMenuPages[gBadgeMenuCurrentPage].listStart;
                }
            }

            // Need to re-read button state here for strange regalloc reasons
            heldButtons2 = gPauseMenuHeldButtons;
            if (heldButtons2 & (BUTTON_STICK_DOWN | BUTTON_R)) {
                if (heldButtons2 & BUTTON_STICK_DOWN) {
                    PauseItemPage* page = &gBadgeMenuPages[gBadgeMenuCurrentPage];

                    selectedRow += 1;
                    if (selectedRow >= (page->listStart + page->numRows)) {
                        gBadgeMenuCurrentPage += 1;
                        if (!gBadgeMenuPages[gBadgeMenuCurrentPage].enabled) {
                            gBadgeMenuCurrentPage -= 1;
                            selectedRow -= 1;
                        }
                    }
                } else {
                    // R button press
                    PauseItemPage* newPage;

                    gBadgeMenuCurrentPage++;
                    newPage = &gBadgeMenuPages[gBadgeMenuCurrentPage];

                    if (!newPage->enabled) {
                        gBadgeMenuCurrentPage -= 1;
                    } else {
                        selectedRow = newPage->listStart;
                    }
                }
            }

            newPageNumCols = gBadgeMenuPages[gBadgeMenuCurrentPage].numCols;
            if (gBadgeMenuItemIDs[selectedRow * newPageNumCols] != BADGE_NONE_STANDIN) {
                if (gPauseMenuHeldButtons & BUTTON_STICK_LEFT) {
                    selectedCol -= 1;
                    if (selectedCol < 0) {
                        selectedCol = newPageNumCols - 1;
                    }
                } else if (gPauseMenuHeldButtons & BUTTON_STICK_RIGHT) {
                    selectedCol += 1;
                    if (selectedCol >= newPageNumCols) {
                        selectedCol = 0;
                    }
                }
            } else {
                selectedCol = 0;
            }
            gBadgeMenuSelectedIndex = selectedCol + (selectedRow * gBadgeMenuPages[gBadgeMenuCurrentPage].numCols);
            if (gBadgeMenuSelectedIndex != selectedIndex) {
                sfx_play_sound(SOUND_MENU_CHANGE_SELECTION);
            }
            gBadgeMenuSelectedItemID = gBadgeMenuItemIDs[gBadgeMenuSelectedIndex];
        }
    }

    if (gBadgeMenuLevel == 1) {
        s32 itemID = gBadgeMenuSelectedItemID;

        if (((itemID != BADGE_NONE_STANDIN) && (itemID != BADGE_INVALID) && (itemID != 0))) {
            gPauseMenuCurrentDescMsg = gItemTable[itemID].menuMsg;
        } else {
            gPauseMenuCurrentDescMsg = 0;
            gPauseMenuCurrentDescIconScript = NULL;
        }
    } else {
        gPauseMenuCurrentDescMsg = pause_get_menu_msg(gBadgeMenuCurrentTab == 0 ? 0x4C : 0x4D);
        gPauseMenuCurrentDescIconScript = NULL;
    }

    if (gPauseMenuPressedButtons & BUTTON_B) {
        if (gBadgeMenuLevel == 0) {
            sfx_play_sound(SOUND_MENU_BACK);
            gPauseMenuCurrentTab = 0;
        } else {
            sfx_play_sound(SOUND_MENU_BACK);
            gBadgeMenuLevel = 0;
            enforce_hpfp_limits();
            if (gBadgeMenuCurrentTab == 1) {
                pause_badges_load_badges(TRUE);
            }
        }
    }
}

void pause_badges_update(void) {
    PauseItemPage* menuPages = gBadgeMenuPages;
    PauseItemPage* currentMenuPage = &menuPages[gBadgeMenuCurrentPage];
    s32 temp = (gBadgeMenuSelectedIndex / currentMenuPage->numCols) - currentMenuPage->listStart;
    s32* currentScrollPos;

    if ((temp < 2) || currentMenuPage->numRows < 9) {
        D_80270394 = 0;
    } else if (temp >= currentMenuPage->numRows - 2) {
        D_80270394 = currentMenuPage->numRows - 8;
    } else {
        s32* unkSym = &D_80270394;

        if (temp - *unkSym >= 7) {
            *unkSym = temp - 6;
        } else if (temp - *unkSym <= 0) {
            *unkSym = temp - 1;
        }
    }

    currentScrollPos = &gBadgeMenuCurrentScrollPos;
    gBadgeMenuTargetScrollPos = pause_badges_get_pos_y(gBadgeMenuCurrentPage, D_80270394 * currentMenuPage->numCols);
    *currentScrollPos += pause_interp_vertical_scroll(gBadgeMenuTargetScrollPos - *currentScrollPos);
}

void pause_badges_cleanup(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gBadgeMenuIconIDs); i++) {
        free_hud_element(gBadgeMenuIconIDs[i]);
    }
}
