.include "macro.inc"

.section .data

glabel D_80241350_919F00
.word 0x41600000, 0xC1900000, 0x40E00000, 0x43870000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x80241428, D_80241350_919F00, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, func_80200000, 0x0019005D, 0x0000004D, 0x00000001, 0x0000001B, 0x00000043, 0x00000003, UseExitHeading, 0x0000003C, 0x00000000, 0x00000044, 0x00000001, ExitWalk, 0x00000043, 0x00000003, GotoMap, 0x80242C20, 0x00000001, 0x00000008, 0x00000001, 0x00000064, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, 0x802413A0, 0x00080000, 0x00000018, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF5DE0329, 0x00000008, 0x00000043, 0x00000002, SetSpriteShading, 0xFFFFFFFF, 0x00000043, 0x00000006, SetCamPerspective, 0x00000000, 0x00000003, 0x00000019, 0x00000010, 0x00001000, 0x00000043, 0x00000005, SetCamBGColor, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, SetCamEnabled, 0x00000000, 0x00000001, 0x00000043, 0x00000003, MakeNpcs, 0x00000001, 0x80242920, 0x00000046, 0x00000001, 0x8024183C, 0x00000044, 0x00000001, 0x80242BB8, 0x00000043, 0x00000005, SetMusicTrack, 0x00000000, 0x00000016, 0x00000000, 0x00000008, 0x00000024, 0x00000002, 0xFE363C80, 0x802413FC, 0x00000044, 0x00000001, EnterWalk, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, ModifyColliderFlags, 0x00000000, 0x00000012, 0x7FFFFE00, 0x00000002, 0x00000000, 0x00000001, 0x00000000

glabel D_80241530_91A0E0
.word 0x00000000, 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000002, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000004, ShowGotItem, 0xFE363C80, 0x00000000, 0x00000000, 0x00000043, 0x00000002, func_802D5830, 0x00000000, 0x00000002, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8A, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000046, 0x00000001, 0x80241534, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xFE363C8B, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, AddItem, 0xFE363C8A, 0xFE363C80, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000002, AddKeyItem, 0xFE363C8A, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, AddBadge, 0xFE363C8A, 0xFE363C80, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000005, 0x00000001, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, SetCamTarget, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000006, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000006, 0x00000008, 0x00000001, 0x00000001, 0x00000045, 0x00000002, 0x8024167C, 0xFE363C8A, 0x0000000A, 0x00000002, 0xFD050F89, 0x00000000, 0x00000043, 0x00000002, SetPlayerJumpscale, 0xF24A801A, 0x00000043, 0x00000005, PlayerJump, 0xFFFFF9D2, 0x00000017, 0x0000003C, 0x0000000F, 0x00000012, 0x00000000, 0x00000043, 0x00000002, SetPlayerJumpscale, 0xF24A7D4D, 0x00000043, 0x00000005, PlayerJump, 0xFFFFF9D2, 0x00000198, 0xFFFFFFC4, 0x00000028, 0x00000013, 0x00000000, 0x00000049, 0x00000001, 0xFE363C8A, 0x00000043, 0x00000002, SetPlayerActionState, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xFE363C8A, 0x0000013A, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000002, 0x00000024, 0x00000002, 0xF8405E31, 0x00000001, 0x00000046, 0x00000001, 0x8024159C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000043, 0x00000001, func_802402BC_918E6C, 0x00000057, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802EAA30, 0xFFFFF9D4, 0x00000017, 0x00000014, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignScript, 0x802416E0, 0x00000043, 0x00000008, MakeEntity, 0x802EA564, 0xFFFFF911, 0x00000198, 0xFFFFFF88, 0x00000000, 0x00000157, D_80000000, 0x00000043, 0x00000002, AssignBlockFlag, 0xF8405E3E, 0x00000043, 0x00000008, MakeEntity, 0x802EA564, 0xFFFFFD94, 0xFFFFFFF1, 0xFFFFFFBB, 0x00000000, 0x0000008A, D_80000000, 0x00000043, 0x00000002, AssignBlockFlag, 0xF8405E3F, 0x00000043, 0x00000008, MakeEntity, 0x802EA564, 0xFFFFFBBE, 0x00000198, 0xFFFFFF7E, 0x00000000, 0x000000A4, D_80000000, 0x00000043, 0x00000002, AssignBlockFlag, 0xF8405E40, 0x00000043, 0x00000007, MakeItemEntity, 0x00000054, 0xFFFFFFEC, 0x0000005F, 0xFFFFFFAB, 0x00000011, 0xF8405E42, 0x00000043, 0x00000007, MakeItemEntity, 0x0000015C, 0xFFFFF8B7, 0x00000017, 0x00000014, 0x00000011, 0xF8405E30, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFF8E9, 0x00000017, 0x00000014, 0x00000011, 0xF8405E38, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFF885, 0x00000017, 0x00000014, 0x00000011, 0xF8405E39, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFF8D0, 0x00000017, 0x0000003F, 0x00000011, 0xF8405E3A, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFF89E, 0x00000017, 0x0000003F, 0x00000011, 0xF8405E3B, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFF8D0, 0x00000017, 0xFFFFFFE9, 0x00000011, 0xF8405E3C, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFF89E, 0x00000017, 0xFFFFFFE9, 0x00000011, 0xF8405E3D, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFF955, 0xFFFFFFC4, 0x00000000, 0x00000011, 0xF8405E36, 0x00000043, 0x00000007, MakeItemEntity, 0x00000157, 0xFFFFF955, 0xFFFFFFC4, 0x0000003C, 0x00000011, 0xF8405E37, 0x00000043, 0x00000008, MakeEntity, 0x802EAE30, 0xFFFFF94B, 0x0000005D, 0xFFFFFF81, 0x00000000, 0x00000000, D_80000000, 0x00000043, 0x00000002, AssignFlag, 0xF8405E31, 0x00000043, 0x00000002, AssignScript, 0x802417F0, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000