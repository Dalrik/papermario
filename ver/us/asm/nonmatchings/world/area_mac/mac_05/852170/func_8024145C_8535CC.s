.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024145C_8535CC
/* 8535CC 8024145C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8535D0 80241460 AFB10024 */  sw        $s1, 0x24($sp)
/* 8535D4 80241464 0080882D */  daddu     $s1, $a0, $zero
/* 8535D8 80241468 3C05F840 */  lui       $a1, 0xf840
/* 8535DC 8024146C AFBF0044 */  sw        $ra, 0x44($sp)
/* 8535E0 80241470 AFBE0040 */  sw        $fp, 0x40($sp)
/* 8535E4 80241474 AFB7003C */  sw        $s7, 0x3c($sp)
/* 8535E8 80241478 AFB60038 */  sw        $s6, 0x38($sp)
/* 8535EC 8024147C AFB50034 */  sw        $s5, 0x34($sp)
/* 8535F0 80241480 AFB40030 */  sw        $s4, 0x30($sp)
/* 8535F4 80241484 AFB3002C */  sw        $s3, 0x2c($sp)
/* 8535F8 80241488 AFB20028 */  sw        $s2, 0x28($sp)
/* 8535FC 8024148C AFB00020 */  sw        $s0, 0x20($sp)
/* 853600 80241490 8E3E0148 */  lw        $fp, 0x148($s1)
/* 853604 80241494 0C0B1EAF */  jal       evt_get_variable
/* 853608 80241498 34A56268 */   ori      $a1, $a1, 0x6268
/* 85360C 8024149C 0040802D */  daddu     $s0, $v0, $zero
/* 853610 802414A0 0220202D */  daddu     $a0, $s1, $zero
/* 853614 802414A4 3C05F840 */  lui       $a1, 0xf840
/* 853618 802414A8 0C0B1EAF */  jal       evt_get_variable
/* 85361C 802414AC 34A56269 */   ori      $a1, $a1, 0x6269
/* 853620 802414B0 0040B82D */  daddu     $s7, $v0, $zero
/* 853624 802414B4 0220202D */  daddu     $a0, $s1, $zero
/* 853628 802414B8 3C05F5DE */  lui       $a1, 0xf5de
/* 85362C 802414BC 0C0B1EAF */  jal       evt_get_variable
/* 853630 802414C0 34A502DE */   ori      $a1, $a1, 0x2de
/* 853634 802414C4 0040B02D */  daddu     $s6, $v0, $zero
/* 853638 802414C8 0220202D */  daddu     $a0, $s1, $zero
/* 85363C 802414CC 3C05F5DE */  lui       $a1, 0xf5de
/* 853640 802414D0 0C0B1EAF */  jal       evt_get_variable
/* 853644 802414D4 34A502DF */   ori      $a1, $a1, 0x2df
/* 853648 802414D8 0040A82D */  daddu     $s5, $v0, $zero
/* 85364C 802414DC 93D3006D */  lbu       $s3, 0x6d($fp)
/* 853650 802414E0 32C2FFFF */  andi      $v0, $s6, 0xffff
/* 853654 802414E4 A7B30010 */  sh        $s3, 0x10($sp)
/* 853658 802414E8 93D2006E */  lbu       $s2, 0x6e($fp)
/* 85365C 802414EC 93C7006F */  lbu       $a3, 0x6f($fp)
/* 853660 802414F0 3274FFFF */  andi      $s4, $s3, 0xffff
/* 853664 802414F4 12820003 */  beq       $s4, $v0, .L80241504
/* 853668 802414F8 A7A7001E */   sh       $a3, 0x1e($sp)
/* 85366C 802414FC 0000B82D */  daddu     $s7, $zero, $zero
/* 853670 80241500 02E0802D */  daddu     $s0, $s7, $zero
.L80241504:
/* 853674 80241504 3202FFFF */  andi      $v0, $s0, 0xffff
/* 853678 80241508 14400016 */  bnez      $v0, .L80241564
/* 85367C 8024150C 0220202D */   daddu    $a0, $s1, $zero
/* 853680 80241510 0C00A67F */  jal       rand_int
/* 853684 80241514 24040064 */   addiu    $a0, $zero, 0x64
/* 853688 80241518 2842001E */  slti      $v0, $v0, 0x1e
/* 85368C 8024151C 10400011 */  beqz      $v0, .L80241564
/* 853690 80241520 0220202D */   daddu    $a0, $s1, $zero
/* 853694 80241524 0C00A67F */  jal       rand_int
/* 853698 80241528 2644FFFF */   addiu    $a0, $s2, -1
/* 85369C 8024152C 0040A82D */  daddu     $s5, $v0, $zero
/* 8536A0 80241530 0260B02D */  daddu     $s6, $s3, $zero
/* 8536A4 80241534 0220202D */  daddu     $a0, $s1, $zero
/* 8536A8 80241538 3C05F5DE */  lui       $a1, 0xf5de
/* 8536AC 8024153C 34A502DE */  ori       $a1, $a1, 0x2de
/* 8536B0 80241540 0C0B2026 */  jal       evt_set_variable
/* 8536B4 80241544 0280302D */   daddu    $a2, $s4, $zero
/* 8536B8 80241548 0220202D */  daddu     $a0, $s1, $zero
/* 8536BC 8024154C 3C05F5DE */  lui       $a1, 0xf5de
/* 8536C0 80241550 34A502DF */  ori       $a1, $a1, 0x2df
/* 8536C4 80241554 0C0B2026 */  jal       evt_set_variable
/* 8536C8 80241558 32A6FFFF */   andi     $a2, $s5, 0xffff
/* 8536CC 8024155C 24100001 */  addiu     $s0, $zero, 1
/* 8536D0 80241560 0220202D */  daddu     $a0, $s1, $zero
.L80241564:
/* 8536D4 80241564 3C05F840 */  lui       $a1, 0xf840
/* 8536D8 80241568 34A56268 */  ori       $a1, $a1, 0x6268
/* 8536DC 8024156C 0C0B2026 */  jal       evt_set_variable
/* 8536E0 80241570 3206FFFF */   andi     $a2, $s0, 0xffff
/* 8536E4 80241574 0220202D */  daddu     $a0, $s1, $zero
/* 8536E8 80241578 3C05F840 */  lui       $a1, 0xf840
/* 8536EC 8024157C 34A56269 */  ori       $a1, $a1, 0x6269
/* 8536F0 80241580 0C0B2026 */  jal       evt_set_variable
/* 8536F4 80241584 32E6FFFF */   andi     $a2, $s7, 0xffff
/* 8536F8 80241588 0000202D */  daddu     $a0, $zero, $zero
/* 8536FC 8024158C 3C05F5DE */  lui       $a1, 0xf5de
/* 853700 80241590 0C0B1EAF */  jal       evt_get_variable
/* 853704 80241594 34A502E0 */   ori      $a1, $a1, 0x2e0
/* 853708 80241598 0000202D */  daddu     $a0, $zero, $zero
/* 85370C 8024159C 3C05F5DE */  lui       $a1, 0xf5de
/* 853710 802415A0 34A50180 */  ori       $a1, $a1, 0x180
/* 853714 802415A4 0C0B1EAF */  jal       evt_get_variable
/* 853718 802415A8 0040802D */   daddu    $s0, $v0, $zero
/* 85371C 802415AC 0040282D */  daddu     $a1, $v0, $zero
/* 853720 802415B0 0000182D */  daddu     $v1, $zero, $zero
/* 853724 802415B4 3C068024 */  lui       $a2, %hi(D_80245154_8572C4)
/* 853728 802415B8 24C65154 */  addiu     $a2, $a2, %lo(D_80245154_8572C4)
/* 85372C 802415BC 00C0202D */  daddu     $a0, $a2, $zero
.L802415C0:
/* 853730 802415C0 8C820000 */  lw        $v0, ($a0)
/* 853734 802415C4 00A2102A */  slt       $v0, $a1, $v0
/* 853738 802415C8 14400006 */  bnez      $v0, .L802415E4
/* 85373C 802415CC 000310C0 */   sll      $v0, $v1, 3
/* 853740 802415D0 24630001 */  addiu     $v1, $v1, 1
/* 853744 802415D4 28620008 */  slti      $v0, $v1, 8
/* 853748 802415D8 1440FFF9 */  bnez      $v0, .L802415C0
/* 85374C 802415DC 24840008 */   addiu    $a0, $a0, 8
/* 853750 802415E0 000310C0 */  sll       $v0, $v1, 3
.L802415E4:
/* 853754 802415E4 00461021 */  addu      $v0, $v0, $a2
/* 853758 802415E8 8C420004 */  lw        $v0, 4($v0)
/* 85375C 802415EC 97A30010 */  lhu       $v1, 0x10($sp)
/* 853760 802415F0 0202202A */  slt       $a0, $s0, $v0
/* 853764 802415F4 32C2FFFF */  andi      $v0, $s6, 0xffff
/* 853768 802415F8 14620008 */  bne       $v1, $v0, .L8024161C
/* 85376C 802415FC 32A2FFFF */   andi     $v0, $s5, 0xffff
/* 853770 80241600 97A7001E */  lhu       $a3, 0x1e($sp)
/* 853774 80241604 14E20005 */  bne       $a3, $v0, .L8024161C
/* 853778 80241608 32E2FFFF */   andi     $v0, $s7, 0xffff
/* 85377C 8024160C 14400003 */  bnez      $v0, .L8024161C
/* 853780 80241610 00000000 */   nop
/* 853784 80241614 14800008 */  bnez      $a0, .L80241638
/* 853788 80241618 24020001 */   addiu    $v0, $zero, 1
.L8024161C:
/* 85378C 8024161C 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 853790 80241620 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 853794 80241624 80420075 */  lb        $v0, 0x75($v0)
/* 853798 80241628 10400005 */  beqz      $v0, .L80241640
/* 85379C 8024162C 00000000 */   nop
/* 8537A0 80241630 10800003 */  beqz      $a0, .L80241640
/* 8537A4 80241634 24020001 */   addiu    $v0, $zero, 1
.L80241638:
/* 8537A8 80241638 08090593 */  j         .L8024164C
/* 8537AC 8024163C AE220084 */   sw       $v0, 0x84($s1)
.L80241640:
/* 8537B0 80241640 0C00F9EB */  jal       kill_enemy
/* 8537B4 80241644 03C0202D */   daddu    $a0, $fp, $zero
/* 8537B8 80241648 AE200084 */  sw        $zero, 0x84($s1)
.L8024164C:
/* 8537BC 8024164C 8FBF0044 */  lw        $ra, 0x44($sp)
/* 8537C0 80241650 8FBE0040 */  lw        $fp, 0x40($sp)
/* 8537C4 80241654 8FB7003C */  lw        $s7, 0x3c($sp)
/* 8537C8 80241658 8FB60038 */  lw        $s6, 0x38($sp)
/* 8537CC 8024165C 8FB50034 */  lw        $s5, 0x34($sp)
/* 8537D0 80241660 8FB40030 */  lw        $s4, 0x30($sp)
/* 8537D4 80241664 8FB3002C */  lw        $s3, 0x2c($sp)
/* 8537D8 80241668 8FB20028 */  lw        $s2, 0x28($sp)
/* 8537DC 8024166C 8FB10024 */  lw        $s1, 0x24($sp)
/* 8537E0 80241670 8FB00020 */  lw        $s0, 0x20($sp)
/* 8537E4 80241674 24020002 */  addiu     $v0, $zero, 2
/* 8537E8 80241678 03E00008 */  jr        $ra
/* 8537EC 8024167C 27BD0048 */   addiu    $sp, $sp, 0x48
