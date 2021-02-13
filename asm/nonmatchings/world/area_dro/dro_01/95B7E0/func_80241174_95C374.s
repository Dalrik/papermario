.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241174_95C374
/* 95C374 80241174 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 95C378 80241178 AFB40058 */  sw        $s4, 0x58($sp)
/* 95C37C 8024117C 0080A02D */  daddu     $s4, $a0, $zero
/* 95C380 80241180 AFBF0060 */  sw        $ra, 0x60($sp)
/* 95C384 80241184 AFB5005C */  sw        $s5, 0x5c($sp)
/* 95C388 80241188 AFB30054 */  sw        $s3, 0x54($sp)
/* 95C38C 8024118C AFB20050 */  sw        $s2, 0x50($sp)
/* 95C390 80241190 AFB1004C */  sw        $s1, 0x4c($sp)
/* 95C394 80241194 AFB00048 */  sw        $s0, 0x48($sp)
/* 95C398 80241198 8E910148 */  lw        $s1, 0x148($s4)
/* 95C39C 8024119C 86240008 */  lh        $a0, 8($s1)
/* 95C3A0 802411A0 0C00EABB */  jal       get_npc_unsafe
/* 95C3A4 802411A4 00A0802D */   daddu    $s0, $a1, $zero
/* 95C3A8 802411A8 8E83000C */  lw        $v1, 0xc($s4)
/* 95C3AC 802411AC 0280202D */  daddu     $a0, $s4, $zero
/* 95C3B0 802411B0 8C650000 */  lw        $a1, ($v1)
/* 95C3B4 802411B4 0C0B1EAF */  jal       get_variable
/* 95C3B8 802411B8 0040902D */   daddu    $s2, $v0, $zero
/* 95C3BC 802411BC AFA00018 */  sw        $zero, 0x18($sp)
/* 95C3C0 802411C0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 95C3C4 802411C4 8C630094 */  lw        $v1, 0x94($v1)
/* 95C3C8 802411C8 AFA3001C */  sw        $v1, 0x1c($sp)
/* 95C3CC 802411CC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 95C3D0 802411D0 8C630080 */  lw        $v1, 0x80($v1)
/* 95C3D4 802411D4 AFA30020 */  sw        $v1, 0x20($sp)
/* 95C3D8 802411D8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 95C3DC 802411DC 8C630088 */  lw        $v1, 0x88($v1)
/* 95C3E0 802411E0 AFA30024 */  sw        $v1, 0x24($sp)
/* 95C3E4 802411E4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 95C3E8 802411E8 8C63008C */  lw        $v1, 0x8c($v1)
/* 95C3EC 802411EC 27B50018 */  addiu     $s5, $sp, 0x18
/* 95C3F0 802411F0 AFA30028 */  sw        $v1, 0x28($sp)
/* 95C3F4 802411F4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 95C3F8 802411F8 3C014282 */  lui       $at, 0x4282
/* 95C3FC 802411FC 44810000 */  mtc1      $at, $f0
/* 95C400 80241200 8C630090 */  lw        $v1, 0x90($v1)
/* 95C404 80241204 0040982D */  daddu     $s3, $v0, $zero
/* 95C408 80241208 E7A00030 */  swc1      $f0, 0x30($sp)
/* 95C40C 8024120C A7A00034 */  sh        $zero, 0x34($sp)
/* 95C410 80241210 16000005 */  bnez      $s0, .L80241228
/* 95C414 80241214 AFA3002C */   sw       $v1, 0x2c($sp)
/* 95C418 80241218 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 95C41C 8024121C 30420004 */  andi      $v0, $v0, 4
/* 95C420 80241220 10400044 */  beqz      $v0, .L80241334
/* 95C424 80241224 00000000 */   nop
.L80241228:
/* 95C428 80241228 2404F7FF */  addiu     $a0, $zero, -0x801
/* 95C42C 8024122C AE800070 */  sw        $zero, 0x70($s4)
/* 95C430 80241230 A640008E */  sh        $zero, 0x8e($s2)
/* 95C434 80241234 8E2200CC */  lw        $v0, 0xcc($s1)
/* 95C438 80241238 8E430000 */  lw        $v1, ($s2)
/* 95C43C 8024123C 8C420000 */  lw        $v0, ($v0)
/* 95C440 80241240 00641824 */  and       $v1, $v1, $a0
/* 95C444 80241244 AE430000 */  sw        $v1, ($s2)
/* 95C448 80241248 AE420028 */  sw        $v0, 0x28($s2)
/* 95C44C 8024124C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 95C450 80241250 8C420098 */  lw        $v0, 0x98($v0)
/* 95C454 80241254 54400005 */  bnel      $v0, $zero, .L8024126C
/* 95C458 80241258 2402FDFF */   addiu    $v0, $zero, -0x201
/* 95C45C 8024125C 34620200 */  ori       $v0, $v1, 0x200
/* 95C460 80241260 2403FFF7 */  addiu     $v1, $zero, -9
/* 95C464 80241264 0809049D */  j         .L80241274
/* 95C468 80241268 00431024 */   and      $v0, $v0, $v1
.L8024126C:
/* 95C46C 8024126C 00621024 */  and       $v0, $v1, $v0
/* 95C470 80241270 34420008 */  ori       $v0, $v0, 8
.L80241274:
/* 95C474 80241274 AE420000 */  sw        $v0, ($s2)
/* 95C478 80241278 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 95C47C 8024127C 30420004 */  andi      $v0, $v0, 4
/* 95C480 80241280 10400008 */  beqz      $v0, .L802412A4
/* 95C484 80241284 24020063 */   addiu    $v0, $zero, 0x63
/* 95C488 80241288 AE820070 */  sw        $v0, 0x70($s4)
/* 95C48C 8024128C AE800074 */  sw        $zero, 0x74($s4)
/* 95C490 80241290 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 95C494 80241294 2403FFFB */  addiu     $v1, $zero, -5
/* 95C498 80241298 00431024 */  and       $v0, $v0, $v1
/* 95C49C 8024129C 080904B4 */  j         .L802412D0
/* 95C4A0 802412A0 AE2200B0 */   sw       $v0, 0xb0($s1)
.L802412A4:
/* 95C4A4 802412A4 8E220000 */  lw        $v0, ($s1)
/* 95C4A8 802412A8 3C034000 */  lui       $v1, 0x4000
/* 95C4AC 802412AC 00431024 */  and       $v0, $v0, $v1
/* 95C4B0 802412B0 10400007 */  beqz      $v0, .L802412D0
/* 95C4B4 802412B4 3C03BFFF */   lui      $v1, 0xbfff
/* 95C4B8 802412B8 2402000C */  addiu     $v0, $zero, 0xc
/* 95C4BC 802412BC AE820070 */  sw        $v0, 0x70($s4)
/* 95C4C0 802412C0 8E220000 */  lw        $v0, ($s1)
/* 95C4C4 802412C4 3463FFFF */  ori       $v1, $v1, 0xffff
/* 95C4C8 802412C8 00431024 */  and       $v0, $v0, $v1
/* 95C4CC 802412CC AE220000 */  sw        $v0, ($s1)
.L802412D0:
/* 95C4D0 802412D0 27A50038 */  addiu     $a1, $sp, 0x38
/* 95C4D4 802412D4 27A6003C */  addiu     $a2, $sp, 0x3c
/* 95C4D8 802412D8 C6400038 */  lwc1      $f0, 0x38($s2)
/* 95C4DC 802412DC 864200A8 */  lh        $v0, 0xa8($s2)
/* 95C4E0 802412E0 3C0142C8 */  lui       $at, 0x42c8
/* 95C4E4 802412E4 44812000 */  mtc1      $at, $f4
/* 95C4E8 802412E8 44823000 */  mtc1      $v0, $f6
/* 95C4EC 802412EC 00000000 */  nop
/* 95C4F0 802412F0 468031A0 */  cvt.s.w   $f6, $f6
/* 95C4F4 802412F4 27A20044 */  addiu     $v0, $sp, 0x44
/* 95C4F8 802412F8 E7A00038 */  swc1      $f0, 0x38($sp)
/* 95C4FC 802412FC C640003C */  lwc1      $f0, 0x3c($s2)
/* 95C500 80241300 C6420040 */  lwc1      $f2, 0x40($s2)
/* 95C504 80241304 46060000 */  add.s     $f0, $f0, $f6
/* 95C508 80241308 E7A40044 */  swc1      $f4, 0x44($sp)
/* 95C50C 8024130C E7A20040 */  swc1      $f2, 0x40($sp)
/* 95C510 80241310 E7A0003C */  swc1      $f0, 0x3c($sp)
/* 95C514 80241314 AFA20010 */  sw        $v0, 0x10($sp)
/* 95C518 80241318 8E440080 */  lw        $a0, 0x80($s2)
/* 95C51C 8024131C 0C0372DF */  jal       func_800DCB7C
/* 95C520 80241320 27A70040 */   addiu    $a3, $sp, 0x40
/* 95C524 80241324 10400003 */  beqz      $v0, .L80241334
/* 95C528 80241328 00000000 */   nop
/* 95C52C 8024132C C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 95C530 80241330 E640003C */  swc1      $f0, 0x3c($s2)
.L80241334:
/* 95C534 80241334 8E830070 */  lw        $v1, 0x70($s4)
/* 95C538 80241338 2C620064 */  sltiu     $v0, $v1, 0x64
/* 95C53C 8024133C 10400042 */  beqz      $v0, .L80241448
/* 95C540 80241340 00031080 */   sll      $v0, $v1, 2
/* 95C544 80241344 3C018025 */  lui       $at, %hi(jtbl_8024DDF0_968FF0)
/* 95C548 80241348 00220821 */  addu      $at, $at, $v0
/* 95C54C 8024134C 8C22DDF0 */  lw        $v0, %lo(jtbl_8024DDF0_968FF0)($at)
/* 95C550 80241350 00400008 */  jr        $v0
/* 95C554 80241354 00000000 */   nop
glabel L80241358_95C558
/* 95C558 80241358 0280202D */  daddu     $a0, $s4, $zero
/* 95C55C 8024135C 0260282D */  daddu     $a1, $s3, $zero
/* 95C560 80241360 0C090178 */  jal       func_802405E0_95B7E0
/* 95C564 80241364 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241368_95C568
/* 95C568 80241368 0280202D */  daddu     $a0, $s4, $zero
/* 95C56C 8024136C 0260282D */  daddu     $a1, $s3, $zero
/* 95C570 80241370 0C0901CE */  jal       func_80240738_95B938
/* 95C574 80241374 02A0302D */   daddu    $a2, $s5, $zero
/* 95C578 80241378 08090512 */  j         .L80241448
/* 95C57C 8024137C 00000000 */   nop
glabel L80241380_95C580
/* 95C580 80241380 0280202D */  daddu     $a0, $s4, $zero
/* 95C584 80241384 0260282D */  daddu     $a1, $s3, $zero
/* 95C588 80241388 0C090278 */  jal       dro_01_UnkNpcAIFunc1
/* 95C58C 8024138C 02A0302D */   daddu    $a2, $s5, $zero
glabel L80241390_95C590
/* 95C590 80241390 0280202D */  daddu     $a0, $s4, $zero
/* 95C594 80241394 0260282D */  daddu     $a1, $s3, $zero
/* 95C598 80241398 0C0902A8 */  jal       func_80240AA0_95BCA0
/* 95C59C 8024139C 02A0302D */   daddu    $a2, $s5, $zero
/* 95C5A0 802413A0 08090512 */  j         .L80241448
/* 95C5A4 802413A4 00000000 */   nop
glabel L802413A8_95C5A8
/* 95C5A8 802413A8 0280202D */  daddu     $a0, $s4, $zero
/* 95C5AC 802413AC 0260282D */  daddu     $a1, $s3, $zero
/* 95C5B0 802413B0 0C090317 */  jal       func_80240C5C_95BE5C
/* 95C5B4 802413B4 02A0302D */   daddu    $a2, $s5, $zero
/* 95C5B8 802413B8 08090512 */  j         .L80241448
/* 95C5BC 802413BC 00000000 */   nop
glabel L802413C0_95C5C0
/* 95C5C0 802413C0 0280202D */  daddu     $a0, $s4, $zero
/* 95C5C4 802413C4 0260282D */  daddu     $a1, $s3, $zero
/* 95C5C8 802413C8 0C090344 */  jal       dro_01_NpcJumpFunc2
/* 95C5CC 802413CC 02A0302D */   daddu    $a2, $s5, $zero
glabel L802413D0_95C5D0
/* 95C5D0 802413D0 0280202D */  daddu     $a0, $s4, $zero
/* 95C5D4 802413D4 0260282D */  daddu     $a1, $s3, $zero
/* 95C5D8 802413D8 0C090361 */  jal       dro_01_NpcJumpFunc
/* 95C5DC 802413DC 02A0302D */   daddu    $a2, $s5, $zero
/* 95C5E0 802413E0 08090512 */  j         .L80241448
/* 95C5E4 802413E4 00000000 */   nop
glabel L802413E8_95C5E8
/* 95C5E8 802413E8 0280202D */  daddu     $a0, $s4, $zero
/* 95C5EC 802413EC 0260282D */  daddu     $a1, $s3, $zero
/* 95C5F0 802413F0 0C09037F */  jal       func_80240DFC_95BFFC
/* 95C5F4 802413F4 02A0302D */   daddu    $a2, $s5, $zero
glabel L802413F8_95C5F8
/* 95C5F8 802413F8 0280202D */  daddu     $a0, $s4, $zero
/* 95C5FC 802413FC 0260282D */  daddu     $a1, $s3, $zero
/* 95C600 80241400 0C0903CB */  jal       func_80240F2C_95C12C
/* 95C604 80241404 02A0302D */   daddu    $a2, $s5, $zero
/* 95C608 80241408 08090512 */  j         .L80241448
/* 95C60C 8024140C 00000000 */   nop
glabel L80241410_95C610
/* 95C610 80241410 0280202D */  daddu     $a0, $s4, $zero
/* 95C614 80241414 0260282D */  daddu     $a1, $s3, $zero
/* 95C618 80241418 0C090413 */  jal       dro_01_UnkNpcDurationFlagFunc
/* 95C61C 8024141C 02A0302D */   daddu    $a2, $s5, $zero
/* 95C620 80241420 08090512 */  j         .L80241448
/* 95C624 80241424 00000000 */   nop
glabel L80241428_95C628
/* 95C628 80241428 0280202D */  daddu     $a0, $s4, $zero
/* 95C62C 8024142C 0260282D */  daddu     $a1, $s3, $zero
/* 95C630 80241430 0C09042D */  jal       func_802410B4_95C2B4
/* 95C634 80241434 02A0302D */   daddu    $a2, $s5, $zero
/* 95C638 80241438 08090512 */  j         .L80241448
/* 95C63C 8024143C 00000000 */   nop
glabel L80241440_95C640
/* 95C640 80241440 0C0129CF */  jal       func_8004A73C
/* 95C644 80241444 0280202D */   daddu    $a0, $s4, $zero
.L80241448:
glabel L80241448_95C648
/* 95C648 80241448 8FBF0060 */  lw        $ra, 0x60($sp)
/* 95C64C 8024144C 8FB5005C */  lw        $s5, 0x5c($sp)
/* 95C650 80241450 8FB40058 */  lw        $s4, 0x58($sp)
/* 95C654 80241454 8FB30054 */  lw        $s3, 0x54($sp)
/* 95C658 80241458 8FB20050 */  lw        $s2, 0x50($sp)
/* 95C65C 8024145C 8FB1004C */  lw        $s1, 0x4c($sp)
/* 95C660 80241460 8FB00048 */  lw        $s0, 0x48($sp)
/* 95C664 80241464 0000102D */  daddu     $v0, $zero, $zero
/* 95C668 80241468 03E00008 */  jr        $ra
/* 95C66C 8024146C 27BD0068 */   addiu    $sp, $sp, 0x68