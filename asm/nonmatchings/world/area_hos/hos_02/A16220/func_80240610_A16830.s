.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240610_A16830
/* A16830 80240610 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* A16834 80240614 24040001 */  addiu     $a0, $zero, 1
/* A16838 80240618 27A50010 */  addiu     $a1, $sp, 0x10
/* A1683C 8024061C 27A60014 */  addiu     $a2, $sp, 0x14
/* A16840 80240620 AFBF0034 */  sw        $ra, 0x34($sp)
/* A16844 80240624 AFB40030 */  sw        $s4, 0x30($sp)
/* A16848 80240628 AFB3002C */  sw        $s3, 0x2c($sp)
/* A1684C 8024062C AFB20028 */  sw        $s2, 0x28($sp)
/* A16850 80240630 AFB10024 */  sw        $s1, 0x24($sp)
/* A16854 80240634 AFB00020 */  sw        $s0, 0x20($sp)
/* A16858 80240638 F7B40038 */  sdc1      $f20, 0x38($sp)
/* A1685C 8024063C 0C0470AC */  jal       func_8011C2B0
/* A16860 80240640 27A70018 */   addiu    $a3, $sp, 0x18
/* A16864 80240644 8FA20018 */  lw        $v0, 0x18($sp)
/* A16868 80240648 18400095 */  blez      $v0, .L802408A0
/* A1686C 8024064C 0000802D */   daddu    $s0, $zero, $zero
/* A16870 80240650 3C125555 */  lui       $s2, 0x5555
/* A16874 80240654 36525556 */  ori       $s2, $s2, 0x5556
/* A16878 80240658 34148000 */  ori       $s4, $zero, 0x8000
/* A1687C 8024065C 3C0141E0 */  lui       $at, 0x41e0
/* A16880 80240660 4481A800 */  mtc1      $at, $f21
/* A16884 80240664 4480A000 */  mtc1      $zero, $f20
/* A16888 80240668 3C138000 */  lui       $s3, 0x8000
/* A1688C 8024066C 02120018 */  mult      $s0, $s2
.L80240670:
/* A16890 80240670 00101FC3 */  sra       $v1, $s0, 0x1f
/* A16894 80240674 00004810 */  mfhi      $t1
/* A16898 80240678 01231823 */  subu      $v1, $t1, $v1
/* A1689C 8024067C 00031040 */  sll       $v0, $v1, 1
/* A168A0 80240680 00431021 */  addu      $v0, $v0, $v1
/* A168A4 80240684 02021023 */  subu      $v0, $s0, $v0
/* A168A8 80240688 3C038024 */  lui       $v1, %hi(D_802433B0)
/* A168AC 8024068C 946333B0 */  lhu       $v1, %lo(D_802433B0)($v1)
/* A168B0 80240690 24420001 */  addiu     $v0, $v0, 1
/* A168B4 80240694 00620018 */  mult      $v1, $v0
/* A168B8 80240698 8FA20014 */  lw        $v0, 0x14($sp)
/* A168BC 8024069C 00001812 */  mflo      $v1
/* A168C0 802406A0 00702021 */  addu      $a0, $v1, $s0
/* A168C4 802406A4 3084FFFF */  andi      $a0, $a0, 0xffff
/* A168C8 802406A8 00101900 */  sll       $v1, $s0, 4
/* A168CC 802406AC 00431021 */  addu      $v0, $v0, $v1
/* A168D0 802406B0 0C01917C */  jal       sins
/* A168D4 802406B4 2451000C */   addiu    $s1, $v0, 0xc
/* A168D8 802406B8 00021400 */  sll       $v0, $v0, 0x10
/* A168DC 802406BC 00021403 */  sra       $v0, $v0, 0x10
/* A168E0 802406C0 00541021 */  addu      $v0, $v0, $s4
/* A168E4 802406C4 00021FC2 */  srl       $v1, $v0, 0x1f
/* A168E8 802406C8 00431021 */  addu      $v0, $v0, $v1
/* A168EC 802406CC 00021043 */  sra       $v0, $v0, 1
/* A168F0 802406D0 00021C00 */  sll       $v1, $v0, 0x10
/* A168F4 802406D4 00031C03 */  sra       $v1, $v1, 0x10
/* A168F8 802406D8 00032080 */  sll       $a0, $v1, 2
/* A168FC 802406DC 00832021 */  addu      $a0, $a0, $v1
/* A16900 802406E0 00041940 */  sll       $v1, $a0, 5
/* A16904 802406E4 00641823 */  subu      $v1, $v1, $a0
/* A16908 802406E8 04610002 */  bgez      $v1, .L802406F4
/* A1690C 802406EC 0040202D */   daddu    $a0, $v0, $zero
/* A16910 802406F0 24637FFF */  addiu     $v1, $v1, 0x7fff
.L802406F4:
/* A16914 802406F4 000313C3 */  sra       $v0, $v1, 0xf
/* A16918 802406F8 3C018024 */  lui       $at, %hi(pause_tabs_draw_items)
/* A1691C 802406FC D4224DE8 */  ldc1      $f2, %lo(pause_tabs_draw_items)($at)
/* A16920 80240700 44820000 */  mtc1      $v0, $f0
/* A16924 80240704 00000000 */  nop
/* A16928 80240708 46800021 */  cvt.d.w   $f0, $f0
/* A1692C 8024070C 46220000 */  add.d     $f0, $f0, $f2
/* A16930 80240710 4620A03E */  c.le.d    $f20, $f0
/* A16934 80240714 00000000 */  nop
/* A16938 80240718 45030005 */  bc1tl     .L80240730
/* A1693C 8024071C 46340001 */   sub.d    $f0, $f0, $f20
/* A16940 80240720 4620010D */  trunc.w.d $f4, $f0
/* A16944 80240724 44022000 */  mfc1      $v0, $f4
/* A16948 80240728 080901D1 */  j         .L80240744
/* A1694C 8024072C A2220000 */   sb       $v0, ($s1)
.L80240730:
/* A16950 80240730 4620010D */  trunc.w.d $f4, $f0
/* A16954 80240734 44022000 */  mfc1      $v0, $f4
/* A16958 80240738 00000000 */  nop
/* A1695C 8024073C 00531025 */  or        $v0, $v0, $s3
/* A16960 80240740 A2220000 */  sb        $v0, ($s1)
.L80240744:
/* A16964 80240744 00041400 */  sll       $v0, $a0, 0x10
/* A16968 80240748 00021403 */  sra       $v0, $v0, 0x10
/* A1696C 8024074C 00021880 */  sll       $v1, $v0, 2
/* A16970 80240750 00621821 */  addu      $v1, $v1, $v0
/* A16974 80240754 00031140 */  sll       $v0, $v1, 5
/* A16978 80240758 00431023 */  subu      $v0, $v0, $v1
/* A1697C 8024075C 04410002 */  bgez      $v0, .L80240768
/* A16980 80240760 26230001 */   addiu    $v1, $s1, 1
/* A16984 80240764 24427FFF */  addiu     $v0, $v0, 0x7fff
.L80240768:
/* A16988 80240768 000213C3 */  sra       $v0, $v0, 0xf
/* A1698C 8024076C 3C018024 */  lui       $at, %hi(D_80244DF0)
/* A16990 80240770 D4224DF0 */  ldc1      $f2, %lo(D_80244DF0)($at)
/* A16994 80240774 44820000 */  mtc1      $v0, $f0
/* A16998 80240778 00000000 */  nop
/* A1699C 8024077C 46800021 */  cvt.d.w   $f0, $f0
/* A169A0 80240780 46220000 */  add.d     $f0, $f0, $f2
/* A169A4 80240784 4620A03E */  c.le.d    $f20, $f0
/* A169A8 80240788 00000000 */  nop
/* A169AC 8024078C 45030005 */  bc1tl     .L802407A4
/* A169B0 80240790 46340001 */   sub.d    $f0, $f0, $f20
/* A169B4 80240794 4620010D */  trunc.w.d $f4, $f0
/* A169B8 80240798 44022000 */  mfc1      $v0, $f4
/* A169BC 8024079C 080901EE */  j         .L802407B8
/* A169C0 802407A0 A0620000 */   sb       $v0, ($v1)
.L802407A4:
/* A169C4 802407A4 4620010D */  trunc.w.d $f4, $f0
/* A169C8 802407A8 44022000 */  mfc1      $v0, $f4
/* A169CC 802407AC 00000000 */  nop
/* A169D0 802407B0 00531025 */  or        $v0, $v0, $s3
/* A169D4 802407B4 A0620000 */  sb        $v0, ($v1)
.L802407B8:
/* A169D8 802407B8 00101FC2 */  srl       $v1, $s0, 0x1f
/* A169DC 802407BC 02031821 */  addu      $v1, $s0, $v1
/* A169E0 802407C0 00032843 */  sra       $a1, $v1, 1
/* A169E4 802407C4 00B20018 */  mult      $a1, $s2
/* A169E8 802407C8 3C048024 */  lui       $a0, %hi(D_802433B0)
/* A169EC 802407CC 948433B0 */  lhu       $a0, %lo(D_802433B0)($a0)
/* A169F0 802407D0 00031FC3 */  sra       $v1, $v1, 0x1f
/* A169F4 802407D4 000433C2 */  srl       $a2, $a0, 0xf
/* A169F8 802407D8 00004810 */  mfhi      $t1
/* A169FC 802407DC 01231823 */  subu      $v1, $t1, $v1
/* A16A00 802407E0 00031040 */  sll       $v0, $v1, 1
/* A16A04 802407E4 00431021 */  addu      $v0, $v0, $v1
/* A16A08 802407E8 00A22823 */  subu      $a1, $a1, $v0
/* A16A0C 802407EC 24A50001 */  addiu     $a1, $a1, 1
/* A16A10 802407F0 00052BC0 */  sll       $a1, $a1, 0xf
/* A16A14 802407F4 00C50018 */  mult      $a2, $a1
/* A16A18 802407F8 00042382 */  srl       $a0, $a0, 0xe
/* A16A1C 802407FC 000423C0 */  sll       $a0, $a0, 0xf
/* A16A20 80240800 00001812 */  mflo      $v1
/* A16A24 80240804 00642021 */  addu      $a0, $v1, $a0
/* A16A28 80240808 00902021 */  addu      $a0, $a0, $s0
/* A16A2C 8024080C 0C01917C */  jal       sins
/* A16A30 80240810 3084FFFF */   andi     $a0, $a0, 0xffff
/* A16A34 80240814 00021400 */  sll       $v0, $v0, 0x10
/* A16A38 80240818 00021403 */  sra       $v0, $v0, 0x10
/* A16A3C 8024081C 92230000 */  lbu       $v1, ($s1)
/* A16A40 80240820 00541021 */  addu      $v0, $v0, $s4
/* A16A44 80240824 00620018 */  mult      $v1, $v0
/* A16A48 80240828 00001812 */  mflo      $v1
/* A16A4C 8024082C 04610003 */  bgez      $v1, .L8024083C
/* A16A50 80240830 26240002 */   addiu    $a0, $s1, 2
/* A16A54 80240834 3402FFFF */  ori       $v0, $zero, 0xffff
/* A16A58 80240838 00621821 */  addu      $v1, $v1, $v0
.L8024083C:
/* A16A5C 8024083C 00031403 */  sra       $v0, $v1, 0x10
/* A16A60 80240840 3C018024 */  lui       $at, %hi(D_80244DF8)
/* A16A64 80240844 D4224DF8 */  ldc1      $f2, %lo(D_80244DF8)($at)
/* A16A68 80240848 44820000 */  mtc1      $v0, $f0
/* A16A6C 8024084C 00000000 */  nop
/* A16A70 80240850 46800021 */  cvt.d.w   $f0, $f0
/* A16A74 80240854 46220000 */  add.d     $f0, $f0, $f2
/* A16A78 80240858 4620A03E */  c.le.d    $f20, $f0
/* A16A7C 8024085C 00000000 */  nop
/* A16A80 80240860 45030005 */  bc1tl     .L80240878
/* A16A84 80240864 46340001 */   sub.d    $f0, $f0, $f20
/* A16A88 80240868 4620010D */  trunc.w.d $f4, $f0
/* A16A8C 8024086C 44022000 */  mfc1      $v0, $f4
/* A16A90 80240870 08090223 */  j         .L8024088C
/* A16A94 80240874 A0820000 */   sb       $v0, ($a0)
.L80240878:
/* A16A98 80240878 4620010D */  trunc.w.d $f4, $f0
/* A16A9C 8024087C 44022000 */  mfc1      $v0, $f4
/* A16AA0 80240880 00000000 */  nop
/* A16AA4 80240884 00531025 */  or        $v0, $v0, $s3
/* A16AA8 80240888 A0820000 */  sb        $v0, ($a0)
.L8024088C:
/* A16AAC 8024088C 8FA20018 */  lw        $v0, 0x18($sp)
/* A16AB0 80240890 26100001 */  addiu     $s0, $s0, 1
/* A16AB4 80240894 0202102A */  slt       $v0, $s0, $v0
/* A16AB8 80240898 1440FF75 */  bnez      $v0, .L80240670
/* A16ABC 8024089C 02120018 */   mult     $s0, $s2
.L802408A0:
/* A16AC0 802408A0 3C03800A */  lui       $v1, %hi(gMasterGfxPos)
/* A16AC4 802408A4 2463A66C */  addiu     $v1, $v1, %lo(gMasterGfxPos)
/* A16AC8 802408A8 8C620000 */  lw        $v0, ($v1)
/* A16ACC 802408AC 24040001 */  addiu     $a0, $zero, 1
/* A16AD0 802408B0 0040802D */  daddu     $s0, $v0, $zero
/* A16AD4 802408B4 24420008 */  addiu     $v0, $v0, 8
/* A16AD8 802408B8 AC620000 */  sw        $v0, ($v1)
/* A16ADC 802408BC 3C02DE00 */  lui       $v0, 0xde00
/* A16AE0 802408C0 0C0470BB */  jal       func_8011C2EC
/* A16AE4 802408C4 AE020000 */   sw       $v0, ($s0)
/* A16AE8 802408C8 3C048024 */  lui       $a0, %hi(D_802433B0)
/* A16AEC 802408CC 248433B0 */  addiu     $a0, $a0, %lo(D_802433B0)
/* A16AF0 802408D0 94830000 */  lhu       $v1, ($a0)
/* A16AF4 802408D4 AE020004 */  sw        $v0, 4($s0)
/* A16AF8 802408D8 24630253 */  addiu     $v1, $v1, 0x253
/* A16AFC 802408DC A4830000 */  sh        $v1, ($a0)
/* A16B00 802408E0 8FBF0034 */  lw        $ra, 0x34($sp)
/* A16B04 802408E4 8FB40030 */  lw        $s4, 0x30($sp)
/* A16B08 802408E8 8FB3002C */  lw        $s3, 0x2c($sp)
/* A16B0C 802408EC 8FB20028 */  lw        $s2, 0x28($sp)
/* A16B10 802408F0 8FB10024 */  lw        $s1, 0x24($sp)
/* A16B14 802408F4 8FB00020 */  lw        $s0, 0x20($sp)
/* A16B18 802408F8 D7B40038 */  ldc1      $f20, 0x38($sp)
/* A16B1C 802408FC 03E00008 */  jr        $ra
/* A16B20 80240900 27BD0040 */   addiu    $sp, $sp, 0x40