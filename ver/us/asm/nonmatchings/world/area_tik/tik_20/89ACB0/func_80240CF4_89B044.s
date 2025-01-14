.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_802433F8_89D748
.word L80241100_89B450, L8024110C_89B45C, L8024110C_89B45C, L8024110C_89B45C, L8024110C_89B45C, L8024110C_89B45C, L8024110C_89B45C, L8024110C_89B45C, L80241100_89B450, L8024110C_89B45C, L80241100_89B450, L8024110C_89B45C, L80241100_89B450, L8024110C_89B45C, L80241100_89B450, L8024110C_89B45C, L8024110C_89B45C, L8024110C_89B45C, L80241100_89B450, L8024110C_89B45C, L80241100_89B450, 0

.section .text

glabel func_80240CF4_89B044
/* 89B044 80240CF4 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 89B048 80240CF8 AFB3005C */  sw        $s3, 0x5c($sp)
/* 89B04C 80240CFC 0080982D */  daddu     $s3, $a0, $zero
/* 89B050 80240D00 AFBF0068 */  sw        $ra, 0x68($sp)
/* 89B054 80240D04 AFB50064 */  sw        $s5, 0x64($sp)
/* 89B058 80240D08 AFB40060 */  sw        $s4, 0x60($sp)
/* 89B05C 80240D0C AFB20058 */  sw        $s2, 0x58($sp)
/* 89B060 80240D10 AFB10054 */  sw        $s1, 0x54($sp)
/* 89B064 80240D14 AFB00050 */  sw        $s0, 0x50($sp)
/* 89B068 80240D18 8E710148 */  lw        $s1, 0x148($s3)
/* 89B06C 80240D1C 86240008 */  lh        $a0, 8($s1)
/* 89B070 80240D20 0C00EABB */  jal       get_npc_unsafe
/* 89B074 80240D24 00A0802D */   daddu    $s0, $a1, $zero
/* 89B078 80240D28 8E63000C */  lw        $v1, 0xc($s3)
/* 89B07C 80240D2C 0260202D */  daddu     $a0, $s3, $zero
/* 89B080 80240D30 8C650000 */  lw        $a1, ($v1)
/* 89B084 80240D34 0C0B1EAF */  jal       evt_get_variable
/* 89B088 80240D38 0040902D */   daddu    $s2, $v0, $zero
/* 89B08C 80240D3C AFA00028 */  sw        $zero, 0x28($sp)
/* 89B090 80240D40 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 89B094 80240D44 8C630030 */  lw        $v1, 0x30($v1)
/* 89B098 80240D48 AFA3002C */  sw        $v1, 0x2c($sp)
/* 89B09C 80240D4C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 89B0A0 80240D50 8C63001C */  lw        $v1, 0x1c($v1)
/* 89B0A4 80240D54 AFA30030 */  sw        $v1, 0x30($sp)
/* 89B0A8 80240D58 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 89B0AC 80240D5C 8C630024 */  lw        $v1, 0x24($v1)
/* 89B0B0 80240D60 AFA30034 */  sw        $v1, 0x34($sp)
/* 89B0B4 80240D64 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 89B0B8 80240D68 8C630028 */  lw        $v1, 0x28($v1)
/* 89B0BC 80240D6C 27B50028 */  addiu     $s5, $sp, 0x28
/* 89B0C0 80240D70 AFA30038 */  sw        $v1, 0x38($sp)
/* 89B0C4 80240D74 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 89B0C8 80240D78 3C0142C8 */  lui       $at, 0x42c8
/* 89B0CC 80240D7C 44810000 */  mtc1      $at, $f0
/* 89B0D0 80240D80 8C63002C */  lw        $v1, 0x2c($v1)
/* 89B0D4 80240D84 0040A02D */  daddu     $s4, $v0, $zero
/* 89B0D8 80240D88 E7A00040 */  swc1      $f0, 0x40($sp)
/* 89B0DC 80240D8C A7A00044 */  sh        $zero, 0x44($sp)
/* 89B0E0 80240D90 12000009 */  beqz      $s0, .L80240DB8
/* 89B0E4 80240D94 AFA3003C */   sw       $v1, 0x3c($sp)
/* 89B0E8 80240D98 864300A8 */  lh        $v1, 0xa8($s2)
/* 89B0EC 80240D9C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 89B0F0 80240DA0 AE20008C */  sw        $zero, 0x8c($s1)
/* 89B0F4 80240DA4 A22000B5 */  sb        $zero, 0xb5($s1)
/* 89B0F8 80240DA8 34420008 */  ori       $v0, $v0, 8
/* 89B0FC 80240DAC AE230084 */  sw        $v1, 0x84($s1)
/* 89B100 80240DB0 08090372 */  j         .L80240DC8
/* 89B104 80240DB4 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240DB8:
/* 89B108 80240DB8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 89B10C 80240DBC 30420004 */  andi      $v0, $v0, 4
/* 89B110 80240DC0 10400047 */  beqz      $v0, .L80240EE0
/* 89B114 80240DC4 00000000 */   nop
.L80240DC8:
/* 89B118 80240DC8 AE600070 */  sw        $zero, 0x70($s3)
/* 89B11C 80240DCC A640008E */  sh        $zero, 0x8e($s2)
/* 89B120 80240DD0 8E2300CC */  lw        $v1, 0xcc($s1)
/* 89B124 80240DD4 2404F7FF */  addiu     $a0, $zero, -0x801
/* 89B128 80240DD8 A2200007 */  sb        $zero, 7($s1)
/* 89B12C 80240DDC 8E420000 */  lw        $v0, ($s2)
/* 89B130 80240DE0 8C630000 */  lw        $v1, ($v1)
/* 89B134 80240DE4 00441024 */  and       $v0, $v0, $a0
/* 89B138 80240DE8 AE420000 */  sw        $v0, ($s2)
/* 89B13C 80240DEC AE430028 */  sw        $v1, 0x28($s2)
/* 89B140 80240DF0 96220086 */  lhu       $v0, 0x86($s1)
/* 89B144 80240DF4 A64200A8 */  sh        $v0, 0xa8($s2)
/* 89B148 80240DF8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 89B14C 80240DFC AE200090 */  sw        $zero, 0x90($s1)
/* 89B150 80240E00 8C420034 */  lw        $v0, 0x34($v0)
/* 89B154 80240E04 14400006 */  bnez      $v0, .L80240E20
/* 89B158 80240E08 2403FDFF */   addiu    $v1, $zero, -0x201
/* 89B15C 80240E0C 8E420000 */  lw        $v0, ($s2)
/* 89B160 80240E10 2403FFF7 */  addiu     $v1, $zero, -9
/* 89B164 80240E14 34420200 */  ori       $v0, $v0, 0x200
/* 89B168 80240E18 0809038B */  j         .L80240E2C
/* 89B16C 80240E1C 00431024 */   and      $v0, $v0, $v1
.L80240E20:
/* 89B170 80240E20 8E420000 */  lw        $v0, ($s2)
/* 89B174 80240E24 00431024 */  and       $v0, $v0, $v1
/* 89B178 80240E28 34420008 */  ori       $v0, $v0, 8
.L80240E2C:
/* 89B17C 80240E2C AE420000 */  sw        $v0, ($s2)
/* 89B180 80240E30 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 89B184 80240E34 30420004 */  andi      $v0, $v0, 4
/* 89B188 80240E38 1040001E */  beqz      $v0, .L80240EB4
/* 89B18C 80240E3C 24040002 */   addiu    $a0, $zero, 2
/* 89B190 80240E40 0240282D */  daddu     $a1, $s2, $zero
/* 89B194 80240E44 0000302D */  daddu     $a2, $zero, $zero
/* 89B198 80240E48 24020063 */  addiu     $v0, $zero, 0x63
/* 89B19C 80240E4C AE620070 */  sw        $v0, 0x70($s3)
/* 89B1A0 80240E50 AE600074 */  sw        $zero, 0x74($s3)
/* 89B1A4 80240E54 864300A8 */  lh        $v1, 0xa8($s2)
/* 89B1A8 80240E58 3C013F80 */  lui       $at, 0x3f80
/* 89B1AC 80240E5C 44810000 */  mtc1      $at, $f0
/* 89B1B0 80240E60 3C014000 */  lui       $at, 0x4000
/* 89B1B4 80240E64 44811000 */  mtc1      $at, $f2
/* 89B1B8 80240E68 3C01C1A0 */  lui       $at, 0xc1a0
/* 89B1BC 80240E6C 44812000 */  mtc1      $at, $f4
/* 89B1C0 80240E70 24020028 */  addiu     $v0, $zero, 0x28
/* 89B1C4 80240E74 AFA2001C */  sw        $v0, 0x1c($sp)
/* 89B1C8 80240E78 44833000 */  mtc1      $v1, $f6
/* 89B1CC 80240E7C 00000000 */  nop
/* 89B1D0 80240E80 468031A0 */  cvt.s.w   $f6, $f6
/* 89B1D4 80240E84 44073000 */  mfc1      $a3, $f6
/* 89B1D8 80240E88 27A20048 */  addiu     $v0, $sp, 0x48
/* 89B1DC 80240E8C AFA20020 */  sw        $v0, 0x20($sp)
/* 89B1E0 80240E90 E7A00010 */  swc1      $f0, 0x10($sp)
/* 89B1E4 80240E94 E7A20014 */  swc1      $f2, 0x14($sp)
/* 89B1E8 80240E98 0C01BFA4 */  jal       fx_emote
/* 89B1EC 80240E9C E7A40018 */   swc1     $f4, 0x18($sp)
/* 89B1F0 80240EA0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 89B1F4 80240EA4 2403FFFB */  addiu     $v1, $zero, -5
/* 89B1F8 80240EA8 00431024 */  and       $v0, $v0, $v1
/* 89B1FC 80240EAC 080903B8 */  j         .L80240EE0
/* 89B200 80240EB0 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240EB4:
/* 89B204 80240EB4 8E220000 */  lw        $v0, ($s1)
/* 89B208 80240EB8 3C034000 */  lui       $v1, 0x4000
/* 89B20C 80240EBC 00431024 */  and       $v0, $v0, $v1
/* 89B210 80240EC0 10400007 */  beqz      $v0, .L80240EE0
/* 89B214 80240EC4 3C03BFFF */   lui      $v1, 0xbfff
/* 89B218 80240EC8 2402000C */  addiu     $v0, $zero, 0xc
/* 89B21C 80240ECC AE620070 */  sw        $v0, 0x70($s3)
/* 89B220 80240ED0 8E220000 */  lw        $v0, ($s1)
/* 89B224 80240ED4 3463FFFF */  ori       $v1, $v1, 0xffff
/* 89B228 80240ED8 00431024 */  and       $v0, $v0, $v1
/* 89B22C 80240EDC AE220000 */  sw        $v0, ($s1)
.L80240EE0:
/* 89B230 80240EE0 8E220090 */  lw        $v0, 0x90($s1)
/* 89B234 80240EE4 1840000C */  blez      $v0, .L80240F18
/* 89B238 80240EE8 2442FFFF */   addiu    $v0, $v0, -1
/* 89B23C 80240EEC 14400087 */  bnez      $v0, L8024110C_89B45C
/* 89B240 80240EF0 AE220090 */   sw       $v0, 0x90($s1)
/* 89B244 80240EF4 3C03FFAA */  lui       $v1, 0xffaa
/* 89B248 80240EF8 8E420028 */  lw        $v0, 0x28($s2)
/* 89B24C 80240EFC 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* 89B250 80240F00 00431021 */  addu      $v0, $v0, $v1
/* 89B254 80240F04 2C420002 */  sltiu     $v0, $v0, 2
/* 89B258 80240F08 10400003 */  beqz      $v0, .L80240F18
/* 89B25C 80240F0C 3C020055 */   lui      $v0, 0x55
/* 89B260 80240F10 3442000C */  ori       $v0, $v0, 0xc
/* 89B264 80240F14 AE420028 */  sw        $v0, 0x28($s2)
.L80240F18:
/* 89B268 80240F18 8E630070 */  lw        $v1, 0x70($s3)
/* 89B26C 80240F1C 2402000C */  addiu     $v0, $zero, 0xc
/* 89B270 80240F20 10620048 */  beq       $v1, $v0, .L80241044
/* 89B274 80240F24 2862000D */   slti     $v0, $v1, 0xd
/* 89B278 80240F28 1040000F */  beqz      $v0, .L80240F68
/* 89B27C 80240F2C 24100001 */   addiu    $s0, $zero, 1
/* 89B280 80240F30 1070001E */  beq       $v1, $s0, .L80240FAC
/* 89B284 80240F34 28620002 */   slti     $v0, $v1, 2
/* 89B288 80240F38 10400005 */  beqz      $v0, .L80240F50
/* 89B28C 80240F3C 24020002 */   addiu    $v0, $zero, 2
/* 89B290 80240F40 10600015 */  beqz      $v1, .L80240F98
/* 89B294 80240F44 0260202D */   daddu    $a0, $s3, $zero
/* 89B298 80240F48 08090428 */  j         .L802410A0
/* 89B29C 80240F4C 00000000 */   nop
.L80240F50:
/* 89B2A0 80240F50 1062001C */  beq       $v1, $v0, .L80240FC4
/* 89B2A4 80240F54 24020003 */   addiu    $v0, $zero, 3
/* 89B2A8 80240F58 10620035 */  beq       $v1, $v0, .L80241030
/* 89B2AC 80240F5C 0260202D */   daddu    $a0, $s3, $zero
/* 89B2B0 80240F60 08090428 */  j         .L802410A0
/* 89B2B4 80240F64 00000000 */   nop
.L80240F68:
/* 89B2B8 80240F68 2402000E */  addiu     $v0, $zero, 0xe
/* 89B2BC 80240F6C 1062003F */  beq       $v1, $v0, .L8024106C
/* 89B2C0 80240F70 0062102A */   slt      $v0, $v1, $v0
/* 89B2C4 80240F74 14400038 */  bnez      $v0, .L80241058
/* 89B2C8 80240F78 0260202D */   daddu    $a0, $s3, $zero
/* 89B2CC 80240F7C 2402000F */  addiu     $v0, $zero, 0xf
/* 89B2D0 80240F80 10620040 */  beq       $v1, $v0, .L80241084
/* 89B2D4 80240F84 24020063 */   addiu    $v0, $zero, 0x63
/* 89B2D8 80240F88 10620043 */  beq       $v1, $v0, .L80241098
/* 89B2DC 80240F8C 00000000 */   nop
/* 89B2E0 80240F90 08090428 */  j         .L802410A0
/* 89B2E4 80240F94 00000000 */   nop
.L80240F98:
/* 89B2E8 80240F98 0280282D */  daddu     $a1, $s4, $zero
/* 89B2EC 80240F9C 0C012568 */  jal       func_800495A0
/* 89B2F0 80240FA0 02A0302D */   daddu    $a2, $s5, $zero
/* 89B2F4 80240FA4 96220086 */  lhu       $v0, 0x86($s1)
/* 89B2F8 80240FA8 A64200A8 */  sh        $v0, 0xa8($s2)
.L80240FAC:
/* 89B2FC 80240FAC 0260202D */  daddu     $a0, $s3, $zero
/* 89B300 80240FB0 0280282D */  daddu     $a1, $s4, $zero
/* 89B304 80240FB4 0C0125AE */  jal       func_800496B8
/* 89B308 80240FB8 02A0302D */   daddu    $a2, $s5, $zero
/* 89B30C 80240FBC 08090428 */  j         .L802410A0
/* 89B310 80240FC0 00000000 */   nop
.L80240FC4:
/* 89B314 80240FC4 0260202D */  daddu     $a0, $s3, $zero
/* 89B318 80240FC8 0280282D */  daddu     $a1, $s4, $zero
/* 89B31C 80240FCC 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* 89B320 80240FD0 02A0302D */   daddu    $a2, $s5, $zero
/* 89B324 80240FD4 8E230088 */  lw        $v1, 0x88($s1)
/* 89B328 80240FD8 24020006 */  addiu     $v0, $zero, 6
/* 89B32C 80240FDC 14620014 */  bne       $v1, $v0, .L80241030
/* 89B330 80240FE0 0260202D */   daddu    $a0, $s3, $zero
/* 89B334 80240FE4 0C00A67F */  jal       rand_int
/* 89B338 80240FE8 24040064 */   addiu    $a0, $zero, 0x64
/* 89B33C 80240FEC 28420021 */  slti      $v0, $v0, 0x21
/* 89B340 80240FF0 5040000F */  beql      $v0, $zero, .L80241030
/* 89B344 80240FF4 0260202D */   daddu    $a0, $s3, $zero
/* 89B348 80240FF8 8E22008C */  lw        $v0, 0x8c($s1)
/* 89B34C 80240FFC 10400005 */  beqz      $v0, .L80241014
/* 89B350 80241000 3C020055 */   lui      $v0, 0x55
/* 89B354 80241004 3442002F */  ori       $v0, $v0, 0x2f
/* 89B358 80241008 AE20008C */  sw        $zero, 0x8c($s1)
/* 89B35C 8024100C 08090408 */  j         .L80241020
/* 89B360 80241010 A22000B5 */   sb       $zero, 0xb5($s1)
.L80241014:
/* 89B364 80241014 3442002E */  ori       $v0, $v0, 0x2e
/* 89B368 80241018 AE30008C */  sw        $s0, 0x8c($s1)
/* 89B36C 8024101C A23000B5 */  sb        $s0, 0xb5($s1)
.L80241020:
/* 89B370 80241020 AE420028 */  sw        $v0, 0x28($s2)
/* 89B374 80241024 24020007 */  addiu     $v0, $zero, 7
/* 89B378 80241028 08090443 */  j         L8024110C_89B45C
/* 89B37C 8024102C AE220090 */   sw       $v0, 0x90($s1)
.L80241030:
/* 89B380 80241030 0280282D */  daddu     $a1, $s4, $zero
/* 89B384 80241034 0C012701 */  jal       func_80049C04
/* 89B388 80241038 02A0302D */   daddu    $a2, $s5, $zero
/* 89B38C 8024103C 08090428 */  j         .L802410A0
/* 89B390 80241040 00000000 */   nop
.L80241044:
/* 89B394 80241044 0260202D */  daddu     $a0, $s3, $zero
/* 89B398 80241048 0280282D */  daddu     $a1, $s4, $zero
/* 89B39C 8024104C 0C090258 */  jal       tik_20_set_script_owner_npc_anim
/* 89B3A0 80241050 02A0302D */   daddu    $a2, $s5, $zero
/* 89B3A4 80241054 0260202D */  daddu     $a0, $s3, $zero
.L80241058:
/* 89B3A8 80241058 0280282D */  daddu     $a1, $s4, $zero
/* 89B3AC 8024105C 0C090277 */  jal       tik_20_UnkDistFunc
/* 89B3B0 80241060 02A0302D */   daddu    $a2, $s5, $zero
/* 89B3B4 80241064 08090428 */  j         .L802410A0
/* 89B3B8 80241068 00000000 */   nop
.L8024106C:
/* 89B3BC 8024106C 0260202D */  daddu     $a0, $s3, $zero
/* 89B3C0 80241070 0280282D */  daddu     $a1, $s4, $zero
/* 89B3C4 80241074 0C0902C4 */  jal       tik_20_UnkNpcAIFunc12
/* 89B3C8 80241078 02A0302D */   daddu    $a2, $s5, $zero
/* 89B3CC 8024107C 08090428 */  j         .L802410A0
/* 89B3D0 80241080 00000000 */   nop
.L80241084:
/* 89B3D4 80241084 0280282D */  daddu     $a1, $s4, $zero
/* 89B3D8 80241088 0C09031D */  jal       tik_20_set_script_owner_npc_col_height
/* 89B3DC 8024108C 02A0302D */   daddu    $a2, $s5, $zero
/* 89B3E0 80241090 08090428 */  j         .L802410A0
/* 89B3E4 80241094 00000000 */   nop
.L80241098:
/* 89B3E8 80241098 0C0129CF */  jal       func_8004A73C
/* 89B3EC 8024109C 0260202D */   daddu    $a0, $s3, $zero
.L802410A0:
/* 89B3F0 802410A0 8E230088 */  lw        $v1, 0x88($s1)
/* 89B3F4 802410A4 24020006 */  addiu     $v0, $zero, 6
/* 89B3F8 802410A8 14620019 */  bne       $v1, $v0, .L80241110
/* 89B3FC 802410AC 0000102D */   daddu    $v0, $zero, $zero
/* 89B400 802410B0 8E22008C */  lw        $v0, 0x8c($s1)
/* 89B404 802410B4 10400003 */  beqz      $v0, .L802410C4
/* 89B408 802410B8 24020001 */   addiu    $v0, $zero, 1
/* 89B40C 802410BC 08090432 */  j         .L802410C8
/* 89B410 802410C0 A22200B5 */   sb       $v0, 0xb5($s1)
.L802410C4:
/* 89B414 802410C4 A22000B5 */  sb        $zero, 0xb5($s1)
.L802410C8:
/* 89B418 802410C8 8E22008C */  lw        $v0, 0x8c($s1)
/* 89B41C 802410CC 1040000F */  beqz      $v0, L8024110C_89B45C
/* 89B420 802410D0 3C03FFAA */   lui      $v1, 0xffaa
/* 89B424 802410D4 8E420028 */  lw        $v0, 0x28($s2)
/* 89B428 802410D8 3463FFFC */  ori       $v1, $v1, 0xfffc
/* 89B42C 802410DC 00431821 */  addu      $v1, $v0, $v1
/* 89B430 802410E0 2C620015 */  sltiu     $v0, $v1, 0x15
/* 89B434 802410E4 10400009 */  beqz      $v0, L8024110C_89B45C
/* 89B438 802410E8 00031080 */   sll      $v0, $v1, 2
/* 89B43C 802410EC 3C018024 */  lui       $at, %hi(jtbl_802433F8_89D748)
/* 89B440 802410F0 00220821 */  addu      $at, $at, $v0
/* 89B444 802410F4 8C2233F8 */  lw        $v0, %lo(jtbl_802433F8_89D748)($at)
/* 89B448 802410F8 00400008 */  jr        $v0
/* 89B44C 802410FC 00000000 */   nop
glabel L80241100_89B450
/* 89B450 80241100 8E420028 */  lw        $v0, 0x28($s2)
/* 89B454 80241104 24420001 */  addiu     $v0, $v0, 1
/* 89B458 80241108 AE420028 */  sw        $v0, 0x28($s2)
glabel L8024110C_89B45C
/* 89B45C 8024110C 0000102D */  daddu     $v0, $zero, $zero
.L80241110:
/* 89B460 80241110 8FBF0068 */  lw        $ra, 0x68($sp)
/* 89B464 80241114 8FB50064 */  lw        $s5, 0x64($sp)
/* 89B468 80241118 8FB40060 */  lw        $s4, 0x60($sp)
/* 89B46C 8024111C 8FB3005C */  lw        $s3, 0x5c($sp)
/* 89B470 80241120 8FB20058 */  lw        $s2, 0x58($sp)
/* 89B474 80241124 8FB10054 */  lw        $s1, 0x54($sp)
/* 89B478 80241128 8FB00050 */  lw        $s0, 0x50($sp)
/* 89B47C 8024112C 03E00008 */  jr        $ra
/* 89B480 80241130 27BD0070 */   addiu    $sp, $sp, 0x70
/* 89B484 80241134 00000000 */  nop
/* 89B488 80241138 00000000 */  nop
/* 89B48C 8024113C 00000000 */  nop
