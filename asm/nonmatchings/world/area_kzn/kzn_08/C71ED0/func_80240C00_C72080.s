.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240C00_C72080
/* C72080 80240C00 27BDFF80 */  addiu     $sp, $sp, -0x80
/* C72084 80240C04 AFB3004C */  sw        $s3, 0x4c($sp)
/* C72088 80240C08 0080982D */  daddu     $s3, $a0, $zero
/* C7208C 80240C0C AFBF0058 */  sw        $ra, 0x58($sp)
/* C72090 80240C10 AFB50054 */  sw        $s5, 0x54($sp)
/* C72094 80240C14 AFB40050 */  sw        $s4, 0x50($sp)
/* C72098 80240C18 AFB20048 */  sw        $s2, 0x48($sp)
/* C7209C 80240C1C AFB10044 */  sw        $s1, 0x44($sp)
/* C720A0 80240C20 AFB00040 */  sw        $s0, 0x40($sp)
/* C720A4 80240C24 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* C720A8 80240C28 F7B80070 */  sdc1      $f24, 0x70($sp)
/* C720AC 80240C2C F7B60068 */  sdc1      $f22, 0x68($sp)
/* C720B0 80240C30 F7B40060 */  sdc1      $f20, 0x60($sp)
/* C720B4 80240C34 8E710148 */  lw        $s1, 0x148($s3)
/* C720B8 80240C38 00A0902D */  daddu     $s2, $a1, $zero
/* C720BC 80240C3C 86240008 */  lh        $a0, 8($s1)
/* C720C0 80240C40 0C00EABB */  jal       get_npc_unsafe
/* C720C4 80240C44 00C0A82D */   daddu    $s5, $a2, $zero
/* C720C8 80240C48 0040802D */  daddu     $s0, $v0, $zero
/* C720CC 80240C4C 0000A02D */  daddu     $s4, $zero, $zero
/* C720D0 80240C50 C624007C */  lwc1      $f4, 0x7c($s1)
/* C720D4 80240C54 46802120 */  cvt.s.w   $f4, $f4
/* C720D8 80240C58 C6220088 */  lwc1      $f2, 0x88($s1)
/* C720DC 80240C5C 468010A0 */  cvt.s.w   $f2, $f2
/* C720E0 80240C60 460010A1 */  cvt.d.s   $f2, $f2
/* C720E4 80240C64 46002121 */  cvt.d.s   $f4, $f4
/* C720E8 80240C68 C600003C */  lwc1      $f0, 0x3c($s0)
/* C720EC 80240C6C 3C014059 */  lui       $at, 0x4059
/* C720F0 80240C70 44813800 */  mtc1      $at, $f7
/* C720F4 80240C74 44803000 */  mtc1      $zero, $f6
/* C720F8 80240C78 46000021 */  cvt.d.s   $f0, $f0
/* C720FC 80240C7C 46260002 */  mul.d     $f0, $f0, $f6
/* C72100 80240C80 00000000 */  nop
/* C72104 80240C84 24020001 */  addiu     $v0, $zero, 1
/* C72108 80240C88 8E24006C */  lw        $a0, 0x6c($s1)
/* C7210C 80240C8C 46261083 */  div.d     $f2, $f2, $f6
/* C72110 80240C90 462010A0 */  cvt.s.d   $f2, $f2
/* C72114 80240C94 46262103 */  div.d     $f4, $f4, $f6
/* C72118 80240C98 46202520 */  cvt.s.d   $f20, $f4
/* C7211C 80240C9C 30830011 */  andi      $v1, $a0, 0x11
/* C72120 80240CA0 4620020D */  trunc.w.d $f8, $f0
/* C72124 80240CA4 E628007C */  swc1      $f8, 0x7c($s1)
/* C72128 80240CA8 C6200078 */  lwc1      $f0, 0x78($s1)
/* C7212C 80240CAC 46800020 */  cvt.s.w   $f0, $f0
/* C72130 80240CB0 46000021 */  cvt.d.s   $f0, $f0
/* C72134 80240CB4 46260003 */  div.d     $f0, $f0, $f6
/* C72138 80240CB8 462006A0 */  cvt.s.d   $f26, $f0
/* C7213C 80240CBC C6200070 */  lwc1      $f0, 0x70($s1)
/* C72140 80240CC0 46800020 */  cvt.s.w   $f0, $f0
/* C72144 80240CC4 46000021 */  cvt.d.s   $f0, $f0
/* C72148 80240CC8 46260003 */  div.d     $f0, $f0, $f6
/* C7214C 80240CCC 462005A0 */  cvt.s.d   $f22, $f0
/* C72150 80240CD0 14620025 */  bne       $v1, $v0, .L80240D68
/* C72154 80240CD4 4602D600 */   add.s    $f24, $f26, $f2
/* C72158 80240CD8 8E020000 */  lw        $v0, ($s0)
/* C7215C 80240CDC 30420008 */  andi      $v0, $v0, 8
/* C72160 80240CE0 10400009 */  beqz      $v0, .L80240D08
/* C72164 80240CE4 27A50028 */   addiu    $a1, $sp, 0x28
/* C72168 80240CE8 C600003C */  lwc1      $f0, 0x3c($s0)
/* C7216C 80240CEC 4600C001 */  sub.s     $f0, $f24, $f0
/* C72170 80240CF0 4600B03C */  c.lt.s    $f22, $f0
/* C72174 80240CF4 00000000 */  nop
/* C72178 80240CF8 4500001B */  bc1f      .L80240D68
/* C7217C 80240CFC 34820010 */   ori      $v0, $a0, 0x10
/* C72180 80240D00 0809035A */  j         .L80240D68
/* C72184 80240D04 AE22006C */   sw       $v0, 0x6c($s1)
.L80240D08:
/* C72188 80240D08 27A6002C */  addiu     $a2, $sp, 0x2c
/* C7218C 80240D0C C6000038 */  lwc1      $f0, 0x38($s0)
/* C72190 80240D10 C602003C */  lwc1      $f2, 0x3c($s0)
/* C72194 80240D14 C6040040 */  lwc1      $f4, 0x40($s0)
/* C72198 80240D18 3C01447A */  lui       $at, 0x447a
/* C7219C 80240D1C 44813000 */  mtc1      $at, $f6
/* C721A0 80240D20 27A20034 */  addiu     $v0, $sp, 0x34
/* C721A4 80240D24 E7A00028 */  swc1      $f0, 0x28($sp)
/* C721A8 80240D28 E7A2002C */  swc1      $f2, 0x2c($sp)
/* C721AC 80240D2C E7A40030 */  swc1      $f4, 0x30($sp)
/* C721B0 80240D30 E7A60034 */  swc1      $f6, 0x34($sp)
/* C721B4 80240D34 AFA20010 */  sw        $v0, 0x10($sp)
/* C721B8 80240D38 8E040080 */  lw        $a0, 0x80($s0)
/* C721BC 80240D3C 0C0372DF */  jal       func_800DCB7C
/* C721C0 80240D40 27A70030 */   addiu    $a3, $sp, 0x30
/* C721C4 80240D44 C7A00034 */  lwc1      $f0, 0x34($sp)
/* C721C8 80240D48 4600D001 */  sub.s     $f0, $f26, $f0
/* C721CC 80240D4C 4600B03C */  c.lt.s    $f22, $f0
/* C721D0 80240D50 00000000 */  nop
/* C721D4 80240D54 45000004 */  bc1f      .L80240D68
/* C721D8 80240D58 00000000 */   nop
/* C721DC 80240D5C 8E22006C */  lw        $v0, 0x6c($s1)
/* C721E0 80240D60 34420010 */  ori       $v0, $v0, 0x10
/* C721E4 80240D64 AE22006C */  sw        $v0, 0x6c($s1)
.L80240D68:
/* C721E8 80240D68 8E22006C */  lw        $v0, 0x6c($s1)
/* C721EC 80240D6C 24030011 */  addiu     $v1, $zero, 0x11
/* C721F0 80240D70 30420011 */  andi      $v0, $v0, 0x11
/* C721F4 80240D74 14430039 */  bne       $v0, $v1, .L80240E5C
/* C721F8 80240D78 00000000 */   nop
/* C721FC 80240D7C 8E020000 */  lw        $v0, ($s0)
/* C72200 80240D80 30420008 */  andi      $v0, $v0, 8
/* C72204 80240D84 1040000A */  beqz      $v0, .L80240DB0
/* C72208 80240D88 4600C106 */   mov.s    $f4, $f24
/* C7220C 80240D8C 4614C081 */  sub.s     $f2, $f24, $f20
/* C72210 80240D90 3C018024 */  lui       $at, %hi(D_802455E8)
/* C72214 80240D94 D42055E8 */  ldc1      $f0, %lo(D_802455E8)($at)
/* C72218 80240D98 460010A1 */  cvt.d.s   $f2, $f2
/* C7221C 80240D9C 46201082 */  mul.d     $f2, $f2, $f0
/* C72220 80240DA0 00000000 */  nop
/* C72224 80240DA4 4600A021 */  cvt.d.s   $f0, $f20
/* C72228 80240DA8 08090385 */  j         .L80240E14
/* C7222C 80240DAC 46220000 */   add.d    $f0, $f0, $f2
.L80240DB0:
/* C72230 80240DB0 27A50028 */  addiu     $a1, $sp, 0x28
/* C72234 80240DB4 27A6002C */  addiu     $a2, $sp, 0x2c
/* C72238 80240DB8 C6000038 */  lwc1      $f0, 0x38($s0)
/* C7223C 80240DBC C6020040 */  lwc1      $f2, 0x40($s0)
/* C72240 80240DC0 3C01447A */  lui       $at, 0x447a
/* C72244 80240DC4 44812000 */  mtc1      $at, $f4
/* C72248 80240DC8 27A20034 */  addiu     $v0, $sp, 0x34
/* C7224C 80240DCC E7B4002C */  swc1      $f20, 0x2c($sp)
/* C72250 80240DD0 E7A00028 */  swc1      $f0, 0x28($sp)
/* C72254 80240DD4 E7A20030 */  swc1      $f2, 0x30($sp)
/* C72258 80240DD8 E7A40034 */  swc1      $f4, 0x34($sp)
/* C7225C 80240DDC AFA20010 */  sw        $v0, 0x10($sp)
/* C72260 80240DE0 8E040080 */  lw        $a0, 0x80($s0)
/* C72264 80240DE4 0C0372DF */  jal       func_800DCB7C
/* C72268 80240DE8 27A70030 */   addiu    $a3, $sp, 0x30
/* C7226C 80240DEC C7A4002C */  lwc1      $f4, 0x2c($sp)
/* C72270 80240DF0 461A2100 */  add.s     $f4, $f4, $f26
/* C72274 80240DF4 46142081 */  sub.s     $f2, $f4, $f20
/* C72278 80240DF8 3C018024 */  lui       $at, %hi(D_802455F0)
/* C7227C 80240DFC D42055F0 */  ldc1      $f0, %lo(D_802455F0)($at)
/* C72280 80240E00 460010A1 */  cvt.d.s   $f2, $f2
/* C72284 80240E04 46201082 */  mul.d     $f2, $f2, $f0
/* C72288 80240E08 00000000 */  nop
/* C7228C 80240E0C 4600A021 */  cvt.d.s   $f0, $f20
/* C72290 80240E10 46220000 */  add.d     $f0, $f0, $f2
.L80240E14:
/* C72294 80240E14 46200020 */  cvt.s.d   $f0, $f0
/* C72298 80240E18 E600003C */  swc1      $f0, 0x3c($s0)
/* C7229C 80240E1C C600003C */  lwc1      $f0, 0x3c($s0)
/* C722A0 80240E20 46002001 */  sub.s     $f0, $f4, $f0
/* C722A4 80240E24 3C013FF0 */  lui       $at, 0x3ff0
/* C722A8 80240E28 44811800 */  mtc1      $at, $f3
/* C722AC 80240E2C 44801000 */  mtc1      $zero, $f2
/* C722B0 80240E30 46000005 */  abs.s     $f0, $f0
/* C722B4 80240E34 46000021 */  cvt.d.s   $f0, $f0
/* C722B8 80240E38 4622003C */  c.lt.d    $f0, $f2
/* C722BC 80240E3C 00000000 */  nop
/* C722C0 80240E40 45000036 */  bc1f      .L80240F1C
/* C722C4 80240E44 2403FFEF */   addiu    $v1, $zero, -0x11
/* C722C8 80240E48 E604003C */  swc1      $f4, 0x3c($s0)
/* C722CC 80240E4C 8E22006C */  lw        $v0, 0x6c($s1)
/* C722D0 80240E50 00431024 */  and       $v0, $v0, $v1
/* C722D4 80240E54 080903C7 */  j         .L80240F1C
/* C722D8 80240E58 AE22006C */   sw       $v0, 0x6c($s1)
.L80240E5C:
/* C722DC 80240E5C 8E220070 */  lw        $v0, 0x70($s1)
/* C722E0 80240E60 1840002E */  blez      $v0, .L80240F1C
/* C722E4 80240E64 00000000 */   nop
/* C722E8 80240E68 C62C0074 */  lwc1      $f12, 0x74($s1)
/* C722EC 80240E6C 0C00A8BB */  jal       sin_deg
/* C722F0 80240E70 46806320 */   cvt.s.w  $f12, $f12
/* C722F4 80240E74 8E020000 */  lw        $v0, ($s0)
/* C722F8 80240E78 30420008 */  andi      $v0, $v0, 8
/* C722FC 80240E7C 10400003 */  beqz      $v0, .L80240E8C
/* C72300 80240E80 46000506 */   mov.s    $f20, $f0
/* C72304 80240E84 080903B3 */  j         .L80240ECC
/* C72308 80240E88 0000102D */   daddu    $v0, $zero, $zero
.L80240E8C:
/* C7230C 80240E8C 27A50028 */  addiu     $a1, $sp, 0x28
/* C72310 80240E90 27A6002C */  addiu     $a2, $sp, 0x2c
/* C72314 80240E94 C6000038 */  lwc1      $f0, 0x38($s0)
/* C72318 80240E98 C602003C */  lwc1      $f2, 0x3c($s0)
/* C7231C 80240E9C C6040040 */  lwc1      $f4, 0x40($s0)
/* C72320 80240EA0 3C01447A */  lui       $at, 0x447a
/* C72324 80240EA4 44813000 */  mtc1      $at, $f6
/* C72328 80240EA8 27A20034 */  addiu     $v0, $sp, 0x34
/* C7232C 80240EAC E7A00028 */  swc1      $f0, 0x28($sp)
/* C72330 80240EB0 E7A2002C */  swc1      $f2, 0x2c($sp)
/* C72334 80240EB4 E7A40030 */  swc1      $f4, 0x30($sp)
/* C72338 80240EB8 E7A60034 */  swc1      $f6, 0x34($sp)
/* C7233C 80240EBC AFA20010 */  sw        $v0, 0x10($sp)
/* C72340 80240EC0 8E040080 */  lw        $a0, 0x80($s0)
/* C72344 80240EC4 0C0372DF */  jal       func_800DCB7C
/* C72348 80240EC8 27A70030 */   addiu    $a3, $sp, 0x30
.L80240ECC:
/* C7234C 80240ECC 10400007 */  beqz      $v0, .L80240EEC
/* C72350 80240ED0 00000000 */   nop
/* C72354 80240ED4 4616A082 */  mul.s     $f2, $f20, $f22
/* C72358 80240ED8 00000000 */  nop
/* C7235C 80240EDC C7A0002C */  lwc1      $f0, 0x2c($sp)
/* C72360 80240EE0 461A0000 */  add.s     $f0, $f0, $f26
/* C72364 80240EE4 080903BE */  j         .L80240EF8
/* C72368 80240EE8 46020000 */   add.s    $f0, $f0, $f2
.L80240EEC:
/* C7236C 80240EEC 4616A002 */  mul.s     $f0, $f20, $f22
/* C72370 80240EF0 00000000 */  nop
/* C72374 80240EF4 4600C000 */  add.s     $f0, $f24, $f0
.L80240EF8:
/* C72378 80240EF8 E600003C */  swc1      $f0, 0x3c($s0)
/* C7237C 80240EFC 8E220074 */  lw        $v0, 0x74($s1)
/* C72380 80240F00 2442000A */  addiu     $v0, $v0, 0xa
/* C72384 80240F04 44826000 */  mtc1      $v0, $f12
/* C72388 80240F08 00000000 */  nop
/* C7238C 80240F0C 0C00A6C9 */  jal       clamp_angle
/* C72390 80240F10 46806320 */   cvt.s.w  $f12, $f12
/* C72394 80240F14 4600020D */  trunc.w.s $f8, $f0
/* C72398 80240F18 E6280074 */  swc1      $f8, 0x74($s1)
.L80240F1C:
/* C7239C 80240F1C 8E220090 */  lw        $v0, 0x90($s1)
/* C723A0 80240F20 1C40004A */  bgtz      $v0, .L8024104C
/* C723A4 80240F24 2442FFFF */   addiu    $v0, $v0, -1
/* C723A8 80240F28 8E430014 */  lw        $v1, 0x14($s2)
/* C723AC 80240F2C 04600048 */  bltz      $v1, .L80241050
/* C723B0 80240F30 00000000 */   nop
/* C723B4 80240F34 8E620074 */  lw        $v0, 0x74($s3)
/* C723B8 80240F38 1C400042 */  bgtz      $v0, .L80241044
/* C723BC 80240F3C 2442FFFF */   addiu    $v0, $v0, -1
/* C723C0 80240F40 AE630074 */  sw        $v1, 0x74($s3)
/* C723C4 80240F44 860200A8 */  lh        $v0, 0xa8($s0)
/* C723C8 80240F48 C602003C */  lwc1      $f2, 0x3c($s0)
/* C723CC 80240F4C 44820000 */  mtc1      $v0, $f0
/* C723D0 80240F50 00000000 */  nop
/* C723D4 80240F54 46800020 */  cvt.s.w   $f0, $f0
/* C723D8 80240F58 46001080 */  add.s     $f2, $f2, $f0
/* C723DC 80240F5C 3C014024 */  lui       $at, 0x4024
/* C723E0 80240F60 44810800 */  mtc1      $at, $f1
/* C723E4 80240F64 44800000 */  mtc1      $zero, $f0
/* C723E8 80240F68 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C723EC 80240F6C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C723F0 80240F70 460010A1 */  cvt.d.s   $f2, $f2
/* C723F4 80240F74 46201080 */  add.d     $f2, $f2, $f0
/* C723F8 80240F78 C440002C */  lwc1      $f0, 0x2c($v0)
/* C723FC 80240F7C 46000021 */  cvt.d.s   $f0, $f0
/* C72400 80240F80 4622003C */  c.lt.d    $f0, $f2
/* C72404 80240F84 00000000 */  nop
/* C72408 80240F88 4500002C */  bc1f      .L8024103C
/* C7240C 80240F8C 02A0202D */   daddu    $a0, $s5, $zero
/* C72410 80240F90 AFA00010 */  sw        $zero, 0x10($sp)
/* C72414 80240F94 8E46000C */  lw        $a2, 0xc($s2)
/* C72418 80240F98 8E470010 */  lw        $a3, 0x10($s2)
/* C7241C 80240F9C 0C01242D */  jal       func_800490B4
/* C72420 80240FA0 0220282D */   daddu    $a1, $s1, $zero
/* C72424 80240FA4 10400025 */  beqz      $v0, .L8024103C
/* C72428 80240FA8 0000202D */   daddu    $a0, $zero, $zero
/* C7242C 80240FAC 0200282D */  daddu     $a1, $s0, $zero
/* C72430 80240FB0 0000302D */  daddu     $a2, $zero, $zero
/* C72434 80240FB4 2412000C */  addiu     $s2, $zero, 0xc
/* C72438 80240FB8 860300A8 */  lh        $v1, 0xa8($s0)
/* C7243C 80240FBC 3C013F80 */  lui       $at, 0x3f80
/* C72440 80240FC0 44810000 */  mtc1      $at, $f0
/* C72444 80240FC4 3C014000 */  lui       $at, 0x4000
/* C72448 80240FC8 44811000 */  mtc1      $at, $f2
/* C7244C 80240FCC 3C01C1A0 */  lui       $at, 0xc1a0
/* C72450 80240FD0 44812000 */  mtc1      $at, $f4
/* C72454 80240FD4 44834000 */  mtc1      $v1, $f8
/* C72458 80240FD8 00000000 */  nop
/* C7245C 80240FDC 46804220 */  cvt.s.w   $f8, $f8
/* C72460 80240FE0 44074000 */  mfc1      $a3, $f8
/* C72464 80240FE4 27A20038 */  addiu     $v0, $sp, 0x38
/* C72468 80240FE8 AFB2001C */  sw        $s2, 0x1c($sp)
/* C7246C 80240FEC AFA20020 */  sw        $v0, 0x20($sp)
/* C72470 80240FF0 E7A00010 */  swc1      $f0, 0x10($sp)
/* C72474 80240FF4 E7A20014 */  swc1      $f2, 0x14($sp)
/* C72478 80240FF8 0C01BFA4 */  jal       fx_emote
/* C7247C 80240FFC E7A40018 */   swc1     $f4, 0x18($sp)
/* C72480 80241000 0200202D */  daddu     $a0, $s0, $zero
/* C72484 80241004 240502F4 */  addiu     $a1, $zero, 0x2f4
/* C72488 80241008 C480003C */  lwc1      $f0, 0x3c($a0)
/* C7248C 8024100C 3C060020 */  lui       $a2, 0x20
/* C72490 80241010 0C012530 */  jal       func_800494C0
/* C72494 80241014 E4800064 */   swc1     $f0, 0x64($a0)
/* C72498 80241018 8E220018 */  lw        $v0, 0x18($s1)
/* C7249C 8024101C 9442002A */  lhu       $v0, 0x2a($v0)
/* C724A0 80241020 30420001 */  andi      $v0, $v0, 1
/* C724A4 80241024 10400003 */  beqz      $v0, .L80241034
/* C724A8 80241028 2402000A */   addiu    $v0, $zero, 0xa
/* C724AC 8024102C 0809047D */  j         .L802411F4
/* C724B0 80241030 AE620070 */   sw       $v0, 0x70($s3)
.L80241034:
/* C724B4 80241034 0809047D */  j         .L802411F4
/* C724B8 80241038 AE720070 */   sw       $s2, 0x70($s3)
.L8024103C:
/* C724BC 8024103C 8E620074 */  lw        $v0, 0x74($s3)
/* C724C0 80241040 2442FFFF */  addiu     $v0, $v0, -1
.L80241044:
/* C724C4 80241044 08090414 */  j         .L80241050
/* C724C8 80241048 AE620074 */   sw       $v0, 0x74($s3)
.L8024104C:
/* C724CC 8024104C AE220090 */  sw        $v0, 0x90($s1)
.L80241050:
/* C724D0 80241050 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C724D4 80241054 C6000040 */  lwc1      $f0, 0x40($s0)
/* C724D8 80241058 C4620000 */  lwc1      $f2, ($v1)
/* C724DC 8024105C 468010A0 */  cvt.s.w   $f2, $f2
/* C724E0 80241060 C4640008 */  lwc1      $f4, 8($v1)
/* C724E4 80241064 46802120 */  cvt.s.w   $f4, $f4
/* C724E8 80241068 E7A00010 */  swc1      $f0, 0x10($sp)
/* C724EC 8024106C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C724F0 80241070 44051000 */  mfc1      $a1, $f2
/* C724F4 80241074 C440000C */  lwc1      $f0, 0xc($v0)
/* C724F8 80241078 46800020 */  cvt.s.w   $f0, $f0
/* C724FC 8024107C E7A00014 */  swc1      $f0, 0x14($sp)
/* C72500 80241080 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C72504 80241084 44062000 */  mfc1      $a2, $f4
/* C72508 80241088 C4400010 */  lwc1      $f0, 0x10($v0)
/* C7250C 8024108C 46800020 */  cvt.s.w   $f0, $f0
/* C72510 80241090 E7A00018 */  swc1      $f0, 0x18($sp)
/* C72514 80241094 8C640018 */  lw        $a0, 0x18($v1)
/* C72518 80241098 0C0123F5 */  jal       is_point_within_region
/* C7251C 8024109C 8E070038 */   lw       $a3, 0x38($s0)
/* C72520 802410A0 1040001A */  beqz      $v0, .L8024110C
/* C72524 802410A4 00000000 */   nop
/* C72528 802410A8 8E060038 */  lw        $a2, 0x38($s0)
/* C7252C 802410AC 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C72530 802410B0 8E070040 */  lw        $a3, 0x40($s0)
/* C72534 802410B4 C44C0000 */  lwc1      $f12, ($v0)
/* C72538 802410B8 46806320 */  cvt.s.w   $f12, $f12
/* C7253C 802410BC C44E0008 */  lwc1      $f14, 8($v0)
/* C72540 802410C0 0C00A7B5 */  jal       dist2D
/* C72544 802410C4 468073A0 */   cvt.s.w  $f14, $f14
/* C72548 802410C8 C6020018 */  lwc1      $f2, 0x18($s0)
/* C7254C 802410CC 4600103C */  c.lt.s    $f2, $f0
/* C72550 802410D0 00000000 */  nop
/* C72554 802410D4 4500000D */  bc1f      .L8024110C
/* C72558 802410D8 E7A00034 */   swc1     $f0, 0x34($sp)
/* C7255C 802410DC C60C0038 */  lwc1      $f12, 0x38($s0)
/* C72560 802410E0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C72564 802410E4 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C72568 802410E8 C4480000 */  lwc1      $f8, ($v0)
/* C7256C 802410EC 46804220 */  cvt.s.w   $f8, $f8
/* C72570 802410F0 44064000 */  mfc1      $a2, $f8
/* C72574 802410F4 C4480008 */  lwc1      $f8, 8($v0)
/* C72578 802410F8 46804220 */  cvt.s.w   $f8, $f8
/* C7257C 802410FC 44074000 */  mfc1      $a3, $f8
/* C72580 80241100 0C00A720 */  jal       atan2
/* C72584 80241104 24140001 */   addiu    $s4, $zero, 1
/* C72588 80241108 E600000C */  swc1      $f0, 0xc($s0)
.L8024110C:
/* C7258C 8024110C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C72590 80241110 8C43000C */  lw        $v1, 0xc($v0)
/* C72594 80241114 8C420010 */  lw        $v0, 0x10($v0)
/* C72598 80241118 00621825 */  or        $v1, $v1, $v0
/* C7259C 8024111C 00741825 */  or        $v1, $v1, $s4
/* C725A0 80241120 10600008 */  beqz      $v1, .L80241144
/* C725A4 80241124 00000000 */   nop
/* C725A8 80241128 8602008C */  lh        $v0, 0x8c($s0)
/* C725AC 8024112C 14400031 */  bnez      $v0, .L802411F4
/* C725B0 80241130 00000000 */   nop
/* C725B4 80241134 8E050018 */  lw        $a1, 0x18($s0)
/* C725B8 80241138 8E06000C */  lw        $a2, 0xc($s0)
/* C725BC 8024113C 0C00EA95 */  jal       npc_move_heading
/* C725C0 80241140 0200202D */   daddu    $a0, $s0, $zero
.L80241144:
/* C725C4 80241144 C600003C */  lwc1      $f0, 0x3c($s0)
/* C725C8 80241148 3C014059 */  lui       $at, 0x4059
/* C725CC 8024114C 44811800 */  mtc1      $at, $f3
/* C725D0 80241150 44801000 */  mtc1      $zero, $f2
/* C725D4 80241154 46000021 */  cvt.d.s   $f0, $f0
/* C725D8 80241158 46220002 */  mul.d     $f0, $f0, $f2
/* C725DC 8024115C 00000000 */  nop
/* C725E0 80241160 4620020D */  trunc.w.d $f8, $f0
/* C725E4 80241164 E628007C */  swc1      $f8, 0x7c($s1)
/* C725E8 80241168 8E420004 */  lw        $v0, 4($s2)
/* C725EC 8024116C 18400021 */  blez      $v0, .L802411F4
/* C725F0 80241170 00000000 */   nop
/* C725F4 80241174 8602008E */  lh        $v0, 0x8e($s0)
/* C725F8 80241178 9603008E */  lhu       $v1, 0x8e($s0)
/* C725FC 8024117C 18400005 */  blez      $v0, .L80241194
/* C72600 80241180 2462FFFF */   addiu    $v0, $v1, -1
/* C72604 80241184 A602008E */  sh        $v0, 0x8e($s0)
/* C72608 80241188 00021400 */  sll       $v0, $v0, 0x10
/* C7260C 8024118C 1C400019 */  bgtz      $v0, .L802411F4
/* C72610 80241190 00000000 */   nop
.L80241194:
/* C72614 80241194 240403E8 */  addiu     $a0, $zero, 0x3e8
/* C72618 80241198 24020002 */  addiu     $v0, $zero, 2
/* C7261C 8024119C 0C00A67F */  jal       rand_int
/* C72620 802411A0 AE620070 */   sw       $v0, 0x70($s3)
/* C72624 802411A4 3C035555 */  lui       $v1, 0x5555
/* C72628 802411A8 34635556 */  ori       $v1, $v1, 0x5556
/* C7262C 802411AC 00430018 */  mult      $v0, $v1
/* C72630 802411B0 000227C3 */  sra       $a0, $v0, 0x1f
/* C72634 802411B4 00004010 */  mfhi      $t0
/* C72638 802411B8 01042023 */  subu      $a0, $t0, $a0
/* C7263C 802411BC 00041840 */  sll       $v1, $a0, 1
/* C72640 802411C0 00641821 */  addu      $v1, $v1, $a0
/* C72644 802411C4 00431023 */  subu      $v0, $v0, $v1
/* C72648 802411C8 24430002 */  addiu     $v1, $v0, 2
/* C7264C 802411CC AE630074 */  sw        $v1, 0x74($s3)
/* C72650 802411D0 8E42002C */  lw        $v0, 0x2c($s2)
/* C72654 802411D4 58400007 */  blezl     $v0, .L802411F4
/* C72658 802411D8 AE600070 */   sw       $zero, 0x70($s3)
/* C7265C 802411DC 8E420008 */  lw        $v0, 8($s2)
/* C72660 802411E0 18400003 */  blez      $v0, .L802411F0
/* C72664 802411E4 28620003 */   slti     $v0, $v1, 3
/* C72668 802411E8 10400002 */  beqz      $v0, .L802411F4
/* C7266C 802411EC 00000000 */   nop
.L802411F0:
/* C72670 802411F0 AE600070 */  sw        $zero, 0x70($s3)
.L802411F4:
/* C72674 802411F4 8FBF0058 */  lw        $ra, 0x58($sp)
/* C72678 802411F8 8FB50054 */  lw        $s5, 0x54($sp)
/* C7267C 802411FC 8FB40050 */  lw        $s4, 0x50($sp)
/* C72680 80241200 8FB3004C */  lw        $s3, 0x4c($sp)
/* C72684 80241204 8FB20048 */  lw        $s2, 0x48($sp)
/* C72688 80241208 8FB10044 */  lw        $s1, 0x44($sp)
/* C7268C 8024120C 8FB00040 */  lw        $s0, 0x40($sp)
/* C72690 80241210 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* C72694 80241214 D7B80070 */  ldc1      $f24, 0x70($sp)
/* C72698 80241218 D7B60068 */  ldc1      $f22, 0x68($sp)
/* C7269C 8024121C D7B40060 */  ldc1      $f20, 0x60($sp)
/* C726A0 80241220 03E00008 */  jr        $ra
/* C726A4 80241224 27BD0080 */   addiu    $sp, $sp, 0x80