.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8021851C_58C80C
/* 58C80C 8021851C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 58C810 80218520 AFB10014 */  sw        $s1, 0x14($sp)
/* 58C814 80218524 0080882D */  daddu     $s1, $a0, $zero
/* 58C818 80218528 AFBF0024 */  sw        $ra, 0x24($sp)
/* 58C81C 8021852C AFB40020 */  sw        $s4, 0x20($sp)
/* 58C820 80218530 AFB3001C */  sw        $s3, 0x1c($sp)
/* 58C824 80218534 AFB20018 */  sw        $s2, 0x18($sp)
/* 58C828 80218538 AFB00010 */  sw        $s0, 0x10($sp)
/* 58C82C 8021853C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 58C830 80218540 8E30000C */  lw        $s0, 0xc($s1)
/* 58C834 80218544 8E050000 */  lw        $a1, ($s0)
/* 58C838 80218548 0C0B1EAF */  jal       evt_get_variable
/* 58C83C 8021854C 26100004 */   addiu    $s0, $s0, 4
/* 58C840 80218550 8E140000 */  lw        $s4, ($s0)
/* 58C844 80218554 26100004 */  addiu     $s0, $s0, 4
/* 58C848 80218558 8E050000 */  lw        $a1, ($s0)
/* 58C84C 8021855C 26100004 */  addiu     $s0, $s0, 4
/* 58C850 80218560 0220202D */  daddu     $a0, $s1, $zero
/* 58C854 80218564 0C0B1EAF */  jal       evt_get_variable
/* 58C858 80218568 0040902D */   daddu    $s2, $v0, $zero
/* 58C85C 8021856C 8E050000 */  lw        $a1, ($s0)
/* 58C860 80218570 26100004 */  addiu     $s0, $s0, 4
/* 58C864 80218574 0220202D */  daddu     $a0, $s1, $zero
/* 58C868 80218578 0C0B1EAF */  jal       evt_get_variable
/* 58C86C 8021857C 0040982D */   daddu    $s3, $v0, $zero
/* 58C870 80218580 0220202D */  daddu     $a0, $s1, $zero
/* 58C874 80218584 8E050000 */  lw        $a1, ($s0)
/* 58C878 80218588 0C0B210B */  jal       evt_get_float_variable
/* 58C87C 8021858C 0040802D */   daddu    $s0, $v0, $zero
/* 58C880 80218590 3C0140C9 */  lui       $at, 0x40c9
/* 58C884 80218594 34210FD8 */  ori       $at, $at, 0xfd8
/* 58C888 80218598 44814000 */  mtc1      $at, $f8
/* 58C88C 8021859C 44922000 */  mtc1      $s2, $f4
/* 58C890 802185A0 00000000 */  nop
/* 58C894 802185A4 46802120 */  cvt.s.w   $f4, $f4
/* 58C898 802185A8 46082202 */  mul.s     $f8, $f4, $f8
/* 58C89C 802185AC 00000000 */  nop
/* 58C8A0 802185B0 44903000 */  mtc1      $s0, $f6
/* 58C8A4 802185B4 00000000 */  nop
/* 58C8A8 802185B8 468031A0 */  cvt.s.w   $f6, $f6
/* 58C8AC 802185BC 3C013F80 */  lui       $at, 0x3f80
/* 58C8B0 802185C0 44811000 */  mtc1      $at, $f2
/* 58C8B4 802185C4 46062103 */  div.s     $f4, $f4, $f6
/* 58C8B8 802185C8 46041081 */  sub.s     $f2, $f2, $f4
/* 58C8BC 802185CC 46020502 */  mul.s     $f20, $f0, $f2
/* 58C8C0 802185D0 00000000 */  nop
/* 58C8C4 802185D4 44936000 */  mtc1      $s3, $f12
/* 58C8C8 802185D8 00000000 */  nop
/* 58C8CC 802185DC 46806320 */  cvt.s.w   $f12, $f12
/* 58C8D0 802185E0 0C00A874 */  jal       cos_rad
/* 58C8D4 802185E4 460C4303 */   div.s    $f12, $f8, $f12
/* 58C8D8 802185E8 4600A502 */  mul.s     $f20, $f20, $f0
/* 58C8DC 802185EC 00000000 */  nop
/* 58C8E0 802185F0 0220202D */  daddu     $a0, $s1, $zero
/* 58C8E4 802185F4 4600A28D */  trunc.w.s $f10, $f20
/* 58C8E8 802185F8 44065000 */  mfc1      $a2, $f10
/* 58C8EC 802185FC 0C0B2026 */  jal       evt_set_variable
/* 58C8F0 80218600 0280282D */   daddu    $a1, $s4, $zero
/* 58C8F4 80218604 8FBF0024 */  lw        $ra, 0x24($sp)
/* 58C8F8 80218608 8FB40020 */  lw        $s4, 0x20($sp)
/* 58C8FC 8021860C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 58C900 80218610 8FB20018 */  lw        $s2, 0x18($sp)
/* 58C904 80218614 8FB10014 */  lw        $s1, 0x14($sp)
/* 58C908 80218618 8FB00010 */  lw        $s0, 0x10($sp)
/* 58C90C 8021861C D7B40028 */  ldc1      $f20, 0x28($sp)
/* 58C910 80218620 24020002 */  addiu     $v0, $zero, 2
/* 58C914 80218624 03E00008 */  jr        $ra
/* 58C918 80218628 27BD0030 */   addiu    $sp, $sp, 0x30
/* 58C91C 8021862C 00000000 */  nop
