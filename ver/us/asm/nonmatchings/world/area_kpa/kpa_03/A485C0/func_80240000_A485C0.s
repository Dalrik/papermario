.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_A485C0
/* A485C0 80240000 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* A485C4 80240004 AFB00018 */  sw        $s0, 0x18($sp)
/* A485C8 80240008 0080802D */  daddu     $s0, $a0, $zero
/* A485CC 8024000C 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* A485D0 80240010 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* A485D4 80240014 AFB1001C */  sw        $s1, 0x1c($sp)
/* A485D8 80240018 3C118011 */  lui       $s1, %hi(gPlayerData)
/* A485DC 8024001C 2631F290 */  addiu     $s1, $s1, %lo(gPlayerData)
/* A485E0 80240020 AFB20020 */  sw        $s2, 0x20($sp)
/* A485E4 80240024 0220902D */  daddu     $s2, $s1, $zero
/* A485E8 80240028 10A00004 */  beqz      $a1, .L8024003C
/* A485EC 8024002C AFBF0024 */   sw       $ra, 0x24($sp)
/* A485F0 80240030 240200FF */  addiu     $v0, $zero, 0xff
/* A485F4 80240034 AE020070 */  sw        $v0, 0x70($s0)
/* A485F8 80240038 AE000074 */  sw        $zero, 0x74($s0)
.L8024003C:
/* A485FC 8024003C 24040001 */  addiu     $a0, $zero, 1
/* A48600 80240040 C460002C */  lwc1      $f0, 0x2c($v1)
/* A48604 80240044 3C014100 */  lui       $at, 0x4100
/* A48608 80240048 44811000 */  mtc1      $at, $f2
/* A4860C 8024004C 00000000 */  nop
/* A48610 80240050 46020000 */  add.s     $f0, $f0, $f2
/* A48614 80240054 C4620030 */  lwc1      $f2, 0x30($v1)
/* A48618 80240058 C4640028 */  lwc1      $f4, 0x28($v1)
/* A4861C 8024005C 4600118D */  trunc.w.s $f6, $f2
/* A48620 80240060 E7A60010 */  swc1      $f6, 0x10($sp)
/* A48624 80240064 4600218D */  trunc.w.s $f6, $f4
/* A48628 80240068 44063000 */  mfc1      $a2, $f6
/* A4862C 8024006C 4600018D */  trunc.w.s $f6, $f0
/* A48630 80240070 44073000 */  mfc1      $a3, $f6
/* A48634 80240074 0C04DFB0 */  jal       set_screen_overlay_center_worldpos
/* A48638 80240078 0080282D */   daddu    $a1, $a0, $zero
/* A4863C 8024007C 3C028011 */  lui       $v0, %hi(gPartnerActionStatus)
/* A48640 80240080 8042EBB0 */  lb        $v0, %lo(gPartnerActionStatus)($v0)
/* A48644 80240084 10400012 */  beqz      $v0, .L802400D0
/* A48648 80240088 24020006 */   addiu    $v0, $zero, 6
/* A4864C 8024008C 82230012 */  lb        $v1, 0x12($s1)
/* A48650 80240090 14620022 */  bne       $v1, $v0, .L8024011C
/* A48654 80240094 00000000 */   nop
/* A48658 80240098 8E020074 */  lw        $v0, 0x74($s0)
/* A4865C 8024009C 14400004 */  bnez      $v0, .L802400B0
/* A48660 802400A0 24020001 */   addiu    $v0, $zero, 1
/* A48664 802400A4 AE020074 */  sw        $v0, 0x74($s0)
/* A48668 802400A8 0C05272D */  jal       sfx_play_sound
/* A4866C 802400AC 24042011 */   addiu    $a0, $zero, 0x2011
.L802400B0:
/* A48670 802400B0 8E020070 */  lw        $v0, 0x70($s0)
/* A48674 802400B4 2442FFF8 */  addiu     $v0, $v0, -8
/* A48678 802400B8 AE020070 */  sw        $v0, 0x70($s0)
/* A4867C 802400BC 2842005A */  slti      $v0, $v0, 0x5a
/* A48680 802400C0 10400016 */  beqz      $v0, .L8024011C
/* A48684 802400C4 2402005A */   addiu    $v0, $zero, 0x5a
/* A48688 802400C8 08090047 */  j         .L8024011C
/* A4868C 802400CC AE020070 */   sw       $v0, 0x70($s0)
.L802400D0:
/* A48690 802400D0 82430012 */  lb        $v1, 0x12($s2)
/* A48694 802400D4 14620010 */  bne       $v1, $v0, .L80240118
/* A48698 802400D8 240200FF */   addiu    $v0, $zero, 0xff
/* A4869C 802400DC 8E020074 */  lw        $v0, 0x74($s0)
/* A486A0 802400E0 10400007 */  beqz      $v0, .L80240100
/* A486A4 802400E4 00000000 */   nop
/* A486A8 802400E8 8E020070 */  lw        $v0, 0x70($s0)
/* A486AC 802400EC 284200FF */  slti      $v0, $v0, 0xff
/* A486B0 802400F0 10400003 */  beqz      $v0, .L80240100
/* A486B4 802400F4 AE000074 */   sw       $zero, 0x74($s0)
/* A486B8 802400F8 0C05272D */  jal       sfx_play_sound
/* A486BC 802400FC 24042012 */   addiu    $a0, $zero, 0x2012
.L80240100:
/* A486C0 80240100 8E020070 */  lw        $v0, 0x70($s0)
/* A486C4 80240104 24420008 */  addiu     $v0, $v0, 8
/* A486C8 80240108 AE020070 */  sw        $v0, 0x70($s0)
/* A486CC 8024010C 284200FF */  slti      $v0, $v0, 0xff
/* A486D0 80240110 14400002 */  bnez      $v0, .L8024011C
/* A486D4 80240114 240200FF */   addiu    $v0, $zero, 0xff
.L80240118:
/* A486D8 80240118 AE020070 */  sw        $v0, 0x70($s0)
.L8024011C:
/* A486DC 8024011C C6060070 */  lwc1      $f6, 0x70($s0)
/* A486E0 80240120 468031A0 */  cvt.s.w   $f6, $f6
/* A486E4 80240124 44053000 */  mfc1      $a1, $f6
/* A486E8 80240128 0C04E035 */  jal       set_screen_overlay_alpha
/* A486EC 8024012C 24040001 */   addiu    $a0, $zero, 1
/* A486F0 80240130 3C05437F */  lui       $a1, 0x437f
/* A486F4 80240134 0C04DF69 */  jal       set_screen_overlay_params_back
/* A486F8 80240138 2404000B */   addiu    $a0, $zero, 0xb
/* A486FC 8024013C 8FBF0024 */  lw        $ra, 0x24($sp)
/* A48700 80240140 8FB20020 */  lw        $s2, 0x20($sp)
/* A48704 80240144 8FB1001C */  lw        $s1, 0x1c($sp)
/* A48708 80240148 8FB00018 */  lw        $s0, 0x18($sp)
/* A4870C 8024014C 0000102D */  daddu     $v0, $zero, $zero
/* A48710 80240150 03E00008 */  jr        $ra
/* A48714 80240154 27BD0028 */   addiu    $sp, $sp, 0x28
/* A48718 80240158 00000000 */  nop
/* A4871C 8024015C 00000000 */  nop
