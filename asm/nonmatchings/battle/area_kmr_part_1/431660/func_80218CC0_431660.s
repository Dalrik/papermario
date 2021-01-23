.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218CC0_431660
/* 431660 80218CC0 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 431664 80218CC4 AFB40020 */  sw        $s4, 0x20($sp)
/* 431668 80218CC8 0080A02D */  daddu     $s4, $a0, $zero
/* 43166C 80218CCC AFBF0024 */  sw        $ra, 0x24($sp)
/* 431670 80218CD0 AFB3001C */  sw        $s3, 0x1c($sp)
/* 431674 80218CD4 AFB20018 */  sw        $s2, 0x18($sp)
/* 431678 80218CD8 AFB10014 */  sw        $s1, 0x14($sp)
/* 43167C 80218CDC AFB00010 */  sw        $s0, 0x10($sp)
/* 431680 80218CE0 F7BE0050 */  sdc1      $f30, 0x50($sp)
/* 431684 80218CE4 F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 431688 80218CE8 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 43168C 80218CEC F7B80038 */  sdc1      $f24, 0x38($sp)
/* 431690 80218CF0 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 431694 80218CF4 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 431698 80218CF8 8E90000C */  lw        $s0, 0xc($s4)
/* 43169C 80218CFC 8E050000 */  lw        $a1, ($s0)
/* 4316A0 80218D00 0C0B1EAF */  jal       get_variable
/* 4316A4 80218D04 26100004 */   addiu    $s0, $s0, 4
/* 4316A8 80218D08 44820000 */  mtc1      $v0, $f0
/* 4316AC 80218D0C 00000000 */  nop
/* 4316B0 80218D10 46800021 */  cvt.d.w   $f0, $f0
/* 4316B4 80218D14 8E110000 */  lw        $s1, ($s0)
/* 4316B8 80218D18 26100004 */  addiu     $s0, $s0, 4
/* 4316BC 80218D1C 3C014024 */  lui       $at, 0x4024
/* 4316C0 80218D20 44811800 */  mtc1      $at, $f3
/* 4316C4 80218D24 44801000 */  mtc1      $zero, $f2
/* 4316C8 80218D28 3C0140C9 */  lui       $at, 0x40c9
/* 4316CC 80218D2C 34210FD0 */  ori       $at, $at, 0xfd0
/* 4316D0 80218D30 4481A000 */  mtc1      $at, $f20
/* 4316D4 80218D34 8E130000 */  lw        $s3, ($s0)
/* 4316D8 80218D38 46220003 */  div.d     $f0, $f0, $f2
/* 4316DC 80218D3C 462007A0 */  cvt.s.d   $f30, $f0
/* 4316E0 80218D40 4614F502 */  mul.s     $f20, $f30, $f20
/* 4316E4 80218D44 00000000 */  nop
/* 4316E8 80218D48 26100004 */  addiu     $s0, $s0, 4
/* 4316EC 80218D4C 8E120000 */  lw        $s2, ($s0)
/* 4316F0 80218D50 3C0143B4 */  lui       $at, 0x43b4
/* 4316F4 80218D54 44810000 */  mtc1      $at, $f0
/* 4316F8 80218D58 8E100004 */  lw        $s0, 4($s0)
/* 4316FC 80218D5C 4600A503 */  div.s     $f20, $f20, $f0
/* 431700 80218D60 0C00A85B */  jal       sin_rad
/* 431704 80218D64 4600A306 */   mov.s    $f12, $f20
/* 431708 80218D68 3C014100 */  lui       $at, 0x4100
/* 43170C 80218D6C 44816000 */  mtc1      $at, $f12
/* 431710 80218D70 00000000 */  nop
/* 431714 80218D74 460CA302 */  mul.s     $f12, $f20, $f12
/* 431718 80218D78 00000000 */  nop
/* 43171C 80218D7C 3C014316 */  lui       $at, 0x4316
/* 431720 80218D80 4481E000 */  mtc1      $at, $f28
/* 431724 80218D84 00000000 */  nop
/* 431728 80218D88 461C0582 */  mul.s     $f22, $f0, $f28
/* 43172C 80218D8C 00000000 */  nop
/* 431730 80218D90 4480D000 */  mtc1      $zero, $f26
/* 431734 80218D94 0C00A85B */  jal       sin_rad
/* 431738 80218D98 461AB580 */   add.s    $f22, $f22, $f26
/* 43173C 80218D9C 3C014120 */  lui       $at, 0x4120
/* 431740 80218DA0 44811000 */  mtc1      $at, $f2
/* 431744 80218DA4 00000000 */  nop
/* 431748 80218DA8 46020602 */  mul.s     $f24, $f0, $f2
/* 43174C 80218DAC 00000000 */  nop
/* 431750 80218DB0 4600A306 */  mov.s     $f12, $f20
/* 431754 80218DB4 0C00A874 */  jal       cos_rad
/* 431758 80218DB8 461AC600 */   add.s    $f24, $f24, $f26
/* 43175C 80218DBC 0280202D */  daddu     $a0, $s4, $zero
/* 431760 80218DC0 461C0502 */  mul.s     $f20, $f0, $f28
/* 431764 80218DC4 00000000 */  nop
/* 431768 80218DC8 0220282D */  daddu     $a1, $s1, $zero
/* 43176C 80218DCC 4406B000 */  mfc1      $a2, $f22
/* 431770 80218DD0 3C0141A0 */  lui       $at, 0x41a0
/* 431774 80218DD4 44810000 */  mtc1      $at, $f0
/* 431778 80218DD8 3C01C248 */  lui       $at, 0xc248
/* 43177C 80218DDC 44811000 */  mtc1      $at, $f2
/* 431780 80218DE0 4600A503 */  div.s     $f20, $f20, $f0
/* 431784 80218DE4 0C0B2190 */  jal       set_float_variable
/* 431788 80218DE8 4602A500 */   add.s    $f20, $f20, $f2
/* 43178C 80218DEC 0280202D */  daddu     $a0, $s4, $zero
/* 431790 80218DF0 4406C000 */  mfc1      $a2, $f24
/* 431794 80218DF4 0C0B2190 */  jal       set_float_variable
/* 431798 80218DF8 0260282D */   daddu    $a1, $s3, $zero
/* 43179C 80218DFC 0280202D */  daddu     $a0, $s4, $zero
/* 4317A0 80218E00 4406A000 */  mfc1      $a2, $f20
/* 4317A4 80218E04 0C0B2190 */  jal       set_float_variable
/* 4317A8 80218E08 0240282D */   daddu    $a1, $s2, $zero
/* 4317AC 80218E0C 3C0142B4 */  lui       $at, 0x42b4
/* 4317B0 80218E10 44810000 */  mtc1      $at, $f0
/* 4317B4 80218E14 00000000 */  nop
/* 4317B8 80218E18 461E003C */  c.lt.s    $f0, $f30
/* 4317BC 80218E1C 00000000 */  nop
/* 4317C0 80218E20 4500000B */  bc1f      .L80218E50
/* 4317C4 80218E24 0000302D */   daddu    $a2, $zero, $zero
/* 4317C8 80218E28 3C014387 */  lui       $at, 0x4387
/* 4317CC 80218E2C 44810000 */  mtc1      $at, $f0
/* 4317D0 80218E30 00000000 */  nop
/* 4317D4 80218E34 4600F03C */  c.lt.s    $f30, $f0
/* 4317D8 80218E38 00000000 */  nop
/* 4317DC 80218E3C 45030001 */  bc1tl     .L80218E44
/* 4317E0 80218E40 240600B4 */   addiu    $a2, $zero, 0xb4
.L80218E44:
/* 4317E4 80218E44 3C0142B4 */  lui       $at, 0x42b4
/* 4317E8 80218E48 44810000 */  mtc1      $at, $f0
/* 4317EC 80218E4C 00000000 */  nop
.L80218E50:
/* 4317F0 80218E50 461E0001 */  sub.s     $f0, $f0, $f30
/* 4317F4 80218E54 46000005 */  abs.s     $f0, $f0
/* 4317F8 80218E58 4600010D */  trunc.w.s $f4, $f0
/* 4317FC 80218E5C 44022000 */  mfc1      $v0, $f4
/* 431800 80218E60 00000000 */  nop
/* 431804 80218E64 2842002D */  slti      $v0, $v0, 0x2d
/* 431808 80218E68 10400008 */  beqz      $v0, .L80218E8C
/* 43180C 80218E6C 00000000 */   nop
/* 431810 80218E70 3C014234 */  lui       $at, 0x4234
/* 431814 80218E74 44810000 */  mtc1      $at, $f0
/* 431818 80218E78 00000000 */  nop
/* 43181C 80218E7C 4600F001 */  sub.s     $f0, $f30, $f0
/* 431820 80218E80 46000000 */  add.s     $f0, $f0, $f0
/* 431824 80218E84 4600010D */  trunc.w.s $f4, $f0
/* 431828 80218E88 44062000 */  mfc1      $a2, $f4
.L80218E8C:
/* 43182C 80218E8C 3C014387 */  lui       $at, 0x4387
/* 431830 80218E90 44810000 */  mtc1      $at, $f0
/* 431834 80218E94 00000000 */  nop
/* 431838 80218E98 461E0001 */  sub.s     $f0, $f0, $f30
/* 43183C 80218E9C 46000005 */  abs.s     $f0, $f0
/* 431840 80218EA0 4600010D */  trunc.w.s $f4, $f0
/* 431844 80218EA4 44022000 */  mfc1      $v0, $f4
/* 431848 80218EA8 00000000 */  nop
/* 43184C 80218EAC 2842002D */  slti      $v0, $v0, 0x2d
/* 431850 80218EB0 1040000C */  beqz      $v0, .L80218EE4
/* 431854 80218EB4 0280202D */   daddu    $a0, $s4, $zero
/* 431858 80218EB8 3C014361 */  lui       $at, 0x4361
/* 43185C 80218EBC 44810000 */  mtc1      $at, $f0
/* 431860 80218EC0 00000000 */  nop
/* 431864 80218EC4 4600F001 */  sub.s     $f0, $f30, $f0
/* 431868 80218EC8 46000000 */  add.s     $f0, $f0, $f0
/* 43186C 80218ECC 3C014334 */  lui       $at, 0x4334
/* 431870 80218ED0 44811000 */  mtc1      $at, $f2
/* 431874 80218ED4 00000000 */  nop
/* 431878 80218ED8 46020000 */  add.s     $f0, $f0, $f2
/* 43187C 80218EDC 4600010D */  trunc.w.s $f4, $f0
/* 431880 80218EE0 44062000 */  mfc1      $a2, $f4
.L80218EE4:
/* 431884 80218EE4 0C0B2026 */  jal       set_variable
/* 431888 80218EE8 0200282D */   daddu    $a1, $s0, $zero
/* 43188C 80218EEC 8FBF0024 */  lw        $ra, 0x24($sp)
/* 431890 80218EF0 8FB40020 */  lw        $s4, 0x20($sp)
/* 431894 80218EF4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 431898 80218EF8 8FB20018 */  lw        $s2, 0x18($sp)
/* 43189C 80218EFC 8FB10014 */  lw        $s1, 0x14($sp)
/* 4318A0 80218F00 8FB00010 */  lw        $s0, 0x10($sp)
/* 4318A4 80218F04 D7BE0050 */  ldc1      $f30, 0x50($sp)
/* 4318A8 80218F08 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 4318AC 80218F0C D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 4318B0 80218F10 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 4318B4 80218F14 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 4318B8 80218F18 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 4318BC 80218F1C 24020002 */  addiu     $v0, $zero, 2
/* 4318C0 80218F20 03E00008 */  jr        $ra
/* 4318C4 80218F24 27BD0058 */   addiu    $sp, $sp, 0x58
/* 4318C8 80218F28 00000000 */  nop
/* 4318CC 80218F2C 00000000 */  nop