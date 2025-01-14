.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel jtbl_802432E8_9A42C8
.word L80240880_9A1860, L8024088C_9A186C, L8024088C_9A186C, L8024088C_9A186C, L8024088C_9A186C, L8024088C_9A186C, L8024088C_9A186C, L8024088C_9A186C, L80240880_9A1860, L8024088C_9A186C, L80240880_9A1860, L8024088C_9A186C, L80240880_9A1860, L8024088C_9A186C, L80240880_9A1860, L8024088C_9A186C, L8024088C_9A186C, L8024088C_9A186C, L80240880_9A1860, L8024088C_9A186C, L80240880_9A1860, 0

.section .text

glabel func_80240474_9A1454
/* 9A1454 80240474 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 9A1458 80240478 AFB3005C */  sw        $s3, 0x5c($sp)
/* 9A145C 8024047C 0080982D */  daddu     $s3, $a0, $zero
/* 9A1460 80240480 AFBF0068 */  sw        $ra, 0x68($sp)
/* 9A1464 80240484 AFB50064 */  sw        $s5, 0x64($sp)
/* 9A1468 80240488 AFB40060 */  sw        $s4, 0x60($sp)
/* 9A146C 8024048C AFB20058 */  sw        $s2, 0x58($sp)
/* 9A1470 80240490 AFB10054 */  sw        $s1, 0x54($sp)
/* 9A1474 80240494 AFB00050 */  sw        $s0, 0x50($sp)
/* 9A1478 80240498 8E710148 */  lw        $s1, 0x148($s3)
/* 9A147C 8024049C 86240008 */  lh        $a0, 8($s1)
/* 9A1480 802404A0 0C00EABB */  jal       get_npc_unsafe
/* 9A1484 802404A4 00A0802D */   daddu    $s0, $a1, $zero
/* 9A1488 802404A8 8E63000C */  lw        $v1, 0xc($s3)
/* 9A148C 802404AC 0260202D */  daddu     $a0, $s3, $zero
/* 9A1490 802404B0 8C650000 */  lw        $a1, ($v1)
/* 9A1494 802404B4 0C0B1EAF */  jal       evt_get_variable
/* 9A1498 802404B8 0040902D */   daddu    $s2, $v0, $zero
/* 9A149C 802404BC AFA00028 */  sw        $zero, 0x28($sp)
/* 9A14A0 802404C0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A14A4 802404C4 8C630030 */  lw        $v1, 0x30($v1)
/* 9A14A8 802404C8 AFA3002C */  sw        $v1, 0x2c($sp)
/* 9A14AC 802404CC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A14B0 802404D0 8C63001C */  lw        $v1, 0x1c($v1)
/* 9A14B4 802404D4 AFA30030 */  sw        $v1, 0x30($sp)
/* 9A14B8 802404D8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A14BC 802404DC 8C630024 */  lw        $v1, 0x24($v1)
/* 9A14C0 802404E0 AFA30034 */  sw        $v1, 0x34($sp)
/* 9A14C4 802404E4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A14C8 802404E8 8C630028 */  lw        $v1, 0x28($v1)
/* 9A14CC 802404EC 27B50028 */  addiu     $s5, $sp, 0x28
/* 9A14D0 802404F0 AFA30038 */  sw        $v1, 0x38($sp)
/* 9A14D4 802404F4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 9A14D8 802404F8 3C0142C8 */  lui       $at, 0x42c8
/* 9A14DC 802404FC 44810000 */  mtc1      $at, $f0
/* 9A14E0 80240500 8C63002C */  lw        $v1, 0x2c($v1)
/* 9A14E4 80240504 0040A02D */  daddu     $s4, $v0, $zero
/* 9A14E8 80240508 E7A00040 */  swc1      $f0, 0x40($sp)
/* 9A14EC 8024050C A7A00044 */  sh        $zero, 0x44($sp)
/* 9A14F0 80240510 12000009 */  beqz      $s0, .L80240538
/* 9A14F4 80240514 AFA3003C */   sw       $v1, 0x3c($sp)
/* 9A14F8 80240518 864300A8 */  lh        $v1, 0xa8($s2)
/* 9A14FC 8024051C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9A1500 80240520 AE20008C */  sw        $zero, 0x8c($s1)
/* 9A1504 80240524 A22000B5 */  sb        $zero, 0xb5($s1)
/* 9A1508 80240528 34420008 */  ori       $v0, $v0, 8
/* 9A150C 8024052C AE230084 */  sw        $v1, 0x84($s1)
/* 9A1510 80240530 08090152 */  j         .L80240548
/* 9A1514 80240534 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240538:
/* 9A1518 80240538 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9A151C 8024053C 30420004 */  andi      $v0, $v0, 4
/* 9A1520 80240540 10400047 */  beqz      $v0, .L80240660
/* 9A1524 80240544 00000000 */   nop
.L80240548:
/* 9A1528 80240548 AE600070 */  sw        $zero, 0x70($s3)
/* 9A152C 8024054C A640008E */  sh        $zero, 0x8e($s2)
/* 9A1530 80240550 8E2300CC */  lw        $v1, 0xcc($s1)
/* 9A1534 80240554 2404F7FF */  addiu     $a0, $zero, -0x801
/* 9A1538 80240558 A2200007 */  sb        $zero, 7($s1)
/* 9A153C 8024055C 8E420000 */  lw        $v0, ($s2)
/* 9A1540 80240560 8C630000 */  lw        $v1, ($v1)
/* 9A1544 80240564 00441024 */  and       $v0, $v0, $a0
/* 9A1548 80240568 AE420000 */  sw        $v0, ($s2)
/* 9A154C 8024056C AE430028 */  sw        $v1, 0x28($s2)
/* 9A1550 80240570 96220086 */  lhu       $v0, 0x86($s1)
/* 9A1554 80240574 A64200A8 */  sh        $v0, 0xa8($s2)
/* 9A1558 80240578 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9A155C 8024057C AE200090 */  sw        $zero, 0x90($s1)
/* 9A1560 80240580 8C420034 */  lw        $v0, 0x34($v0)
/* 9A1564 80240584 14400006 */  bnez      $v0, .L802405A0
/* 9A1568 80240588 2403FDFF */   addiu    $v1, $zero, -0x201
/* 9A156C 8024058C 8E420000 */  lw        $v0, ($s2)
/* 9A1570 80240590 2403FFF7 */  addiu     $v1, $zero, -9
/* 9A1574 80240594 34420200 */  ori       $v0, $v0, 0x200
/* 9A1578 80240598 0809016B */  j         .L802405AC
/* 9A157C 8024059C 00431024 */   and      $v0, $v0, $v1
.L802405A0:
/* 9A1580 802405A0 8E420000 */  lw        $v0, ($s2)
/* 9A1584 802405A4 00431024 */  and       $v0, $v0, $v1
/* 9A1588 802405A8 34420008 */  ori       $v0, $v0, 8
.L802405AC:
/* 9A158C 802405AC AE420000 */  sw        $v0, ($s2)
/* 9A1590 802405B0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9A1594 802405B4 30420004 */  andi      $v0, $v0, 4
/* 9A1598 802405B8 1040001E */  beqz      $v0, .L80240634
/* 9A159C 802405BC 24040002 */   addiu    $a0, $zero, 2
/* 9A15A0 802405C0 0240282D */  daddu     $a1, $s2, $zero
/* 9A15A4 802405C4 0000302D */  daddu     $a2, $zero, $zero
/* 9A15A8 802405C8 24020063 */  addiu     $v0, $zero, 0x63
/* 9A15AC 802405CC AE620070 */  sw        $v0, 0x70($s3)
/* 9A15B0 802405D0 AE600074 */  sw        $zero, 0x74($s3)
/* 9A15B4 802405D4 864300A8 */  lh        $v1, 0xa8($s2)
/* 9A15B8 802405D8 3C013F80 */  lui       $at, 0x3f80
/* 9A15BC 802405DC 44810000 */  mtc1      $at, $f0
/* 9A15C0 802405E0 3C014000 */  lui       $at, 0x4000
/* 9A15C4 802405E4 44811000 */  mtc1      $at, $f2
/* 9A15C8 802405E8 3C01C1A0 */  lui       $at, 0xc1a0
/* 9A15CC 802405EC 44812000 */  mtc1      $at, $f4
/* 9A15D0 802405F0 24020028 */  addiu     $v0, $zero, 0x28
/* 9A15D4 802405F4 AFA2001C */  sw        $v0, 0x1c($sp)
/* 9A15D8 802405F8 44833000 */  mtc1      $v1, $f6
/* 9A15DC 802405FC 00000000 */  nop
/* 9A15E0 80240600 468031A0 */  cvt.s.w   $f6, $f6
/* 9A15E4 80240604 44073000 */  mfc1      $a3, $f6
/* 9A15E8 80240608 27A20048 */  addiu     $v0, $sp, 0x48
/* 9A15EC 8024060C AFA20020 */  sw        $v0, 0x20($sp)
/* 9A15F0 80240610 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9A15F4 80240614 E7A20014 */  swc1      $f2, 0x14($sp)
/* 9A15F8 80240618 0C01BFA4 */  jal       fx_emote
/* 9A15FC 8024061C E7A40018 */   swc1     $f4, 0x18($sp)
/* 9A1600 80240620 8E2200B0 */  lw        $v0, 0xb0($s1)
/* 9A1604 80240624 2403FFFB */  addiu     $v1, $zero, -5
/* 9A1608 80240628 00431024 */  and       $v0, $v0, $v1
/* 9A160C 8024062C 08090198 */  j         .L80240660
/* 9A1610 80240630 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80240634:
/* 9A1614 80240634 8E220000 */  lw        $v0, ($s1)
/* 9A1618 80240638 3C034000 */  lui       $v1, 0x4000
/* 9A161C 8024063C 00431024 */  and       $v0, $v0, $v1
/* 9A1620 80240640 10400007 */  beqz      $v0, .L80240660
/* 9A1624 80240644 3C03BFFF */   lui      $v1, 0xbfff
/* 9A1628 80240648 2402000C */  addiu     $v0, $zero, 0xc
/* 9A162C 8024064C AE620070 */  sw        $v0, 0x70($s3)
/* 9A1630 80240650 8E220000 */  lw        $v0, ($s1)
/* 9A1634 80240654 3463FFFF */  ori       $v1, $v1, 0xffff
/* 9A1638 80240658 00431024 */  and       $v0, $v0, $v1
/* 9A163C 8024065C AE220000 */  sw        $v0, ($s1)
.L80240660:
/* 9A1640 80240660 8E220090 */  lw        $v0, 0x90($s1)
/* 9A1644 80240664 1840000C */  blez      $v0, .L80240698
/* 9A1648 80240668 2442FFFF */   addiu    $v0, $v0, -1
/* 9A164C 8024066C 14400087 */  bnez      $v0, L8024088C_9A186C
/* 9A1650 80240670 AE220090 */   sw       $v0, 0x90($s1)
/* 9A1654 80240674 3C03FFAA */  lui       $v1, 0xffaa
/* 9A1658 80240678 8E420028 */  lw        $v0, 0x28($s2)
/* 9A165C 8024067C 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* 9A1660 80240680 00431021 */  addu      $v0, $v0, $v1
/* 9A1664 80240684 2C420002 */  sltiu     $v0, $v0, 2
/* 9A1668 80240688 10400003 */  beqz      $v0, .L80240698
/* 9A166C 8024068C 3C020055 */   lui      $v0, 0x55
/* 9A1670 80240690 3442000C */  ori       $v0, $v0, 0xc
/* 9A1674 80240694 AE420028 */  sw        $v0, 0x28($s2)
.L80240698:
/* 9A1678 80240698 8E630070 */  lw        $v1, 0x70($s3)
/* 9A167C 8024069C 2402000C */  addiu     $v0, $zero, 0xc
/* 9A1680 802406A0 10620048 */  beq       $v1, $v0, .L802407C4
/* 9A1684 802406A4 2862000D */   slti     $v0, $v1, 0xd
/* 9A1688 802406A8 1040000F */  beqz      $v0, .L802406E8
/* 9A168C 802406AC 24100001 */   addiu    $s0, $zero, 1
/* 9A1690 802406B0 1070001E */  beq       $v1, $s0, .L8024072C
/* 9A1694 802406B4 28620002 */   slti     $v0, $v1, 2
/* 9A1698 802406B8 10400005 */  beqz      $v0, .L802406D0
/* 9A169C 802406BC 24020002 */   addiu    $v0, $zero, 2
/* 9A16A0 802406C0 10600015 */  beqz      $v1, .L80240718
/* 9A16A4 802406C4 0260202D */   daddu    $a0, $s3, $zero
/* 9A16A8 802406C8 08090208 */  j         .L80240820
/* 9A16AC 802406CC 00000000 */   nop
.L802406D0:
/* 9A16B0 802406D0 1062001C */  beq       $v1, $v0, .L80240744
/* 9A16B4 802406D4 24020003 */   addiu    $v0, $zero, 3
/* 9A16B8 802406D8 10620035 */  beq       $v1, $v0, .L802407B0
/* 9A16BC 802406DC 0260202D */   daddu    $a0, $s3, $zero
/* 9A16C0 802406E0 08090208 */  j         .L80240820
/* 9A16C4 802406E4 00000000 */   nop
.L802406E8:
/* 9A16C8 802406E8 2402000E */  addiu     $v0, $zero, 0xe
/* 9A16CC 802406EC 1062003F */  beq       $v1, $v0, .L802407EC
/* 9A16D0 802406F0 0062102A */   slt      $v0, $v1, $v0
/* 9A16D4 802406F4 14400038 */  bnez      $v0, .L802407D8
/* 9A16D8 802406F8 0260202D */   daddu    $a0, $s3, $zero
/* 9A16DC 802406FC 2402000F */  addiu     $v0, $zero, 0xf
/* 9A16E0 80240700 10620040 */  beq       $v1, $v0, .L80240804
/* 9A16E4 80240704 24020063 */   addiu    $v0, $zero, 0x63
/* 9A16E8 80240708 10620043 */  beq       $v1, $v0, .L80240818
/* 9A16EC 8024070C 00000000 */   nop
/* 9A16F0 80240710 08090208 */  j         .L80240820
/* 9A16F4 80240714 00000000 */   nop
.L80240718:
/* 9A16F8 80240718 0280282D */  daddu     $a1, $s4, $zero
/* 9A16FC 8024071C 0C012568 */  jal       func_800495A0
/* 9A1700 80240720 02A0302D */   daddu    $a2, $s5, $zero
/* 9A1704 80240724 96220086 */  lhu       $v0, 0x86($s1)
/* 9A1708 80240728 A64200A8 */  sh        $v0, 0xa8($s2)
.L8024072C:
/* 9A170C 8024072C 0260202D */  daddu     $a0, $s3, $zero
/* 9A1710 80240730 0280282D */  daddu     $a1, $s4, $zero
/* 9A1714 80240734 0C0125AE */  jal       func_800496B8
/* 9A1718 80240738 02A0302D */   daddu    $a2, $s5, $zero
/* 9A171C 8024073C 08090208 */  j         .L80240820
/* 9A1720 80240740 00000000 */   nop
.L80240744:
/* 9A1724 80240744 0260202D */  daddu     $a0, $s3, $zero
/* 9A1728 80240748 0280282D */  daddu     $a1, $s4, $zero
/* 9A172C 8024074C 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* 9A1730 80240750 02A0302D */   daddu    $a2, $s5, $zero
/* 9A1734 80240754 8E230088 */  lw        $v1, 0x88($s1)
/* 9A1738 80240758 24020006 */  addiu     $v0, $zero, 6
/* 9A173C 8024075C 14620014 */  bne       $v1, $v0, .L802407B0
/* 9A1740 80240760 0260202D */   daddu    $a0, $s3, $zero
/* 9A1744 80240764 0C00A67F */  jal       rand_int
/* 9A1748 80240768 24040064 */   addiu    $a0, $zero, 0x64
/* 9A174C 8024076C 28420021 */  slti      $v0, $v0, 0x21
/* 9A1750 80240770 5040000F */  beql      $v0, $zero, .L802407B0
/* 9A1754 80240774 0260202D */   daddu    $a0, $s3, $zero
/* 9A1758 80240778 8E22008C */  lw        $v0, 0x8c($s1)
/* 9A175C 8024077C 10400005 */  beqz      $v0, .L80240794
/* 9A1760 80240780 3C020055 */   lui      $v0, 0x55
/* 9A1764 80240784 3442002F */  ori       $v0, $v0, 0x2f
/* 9A1768 80240788 AE20008C */  sw        $zero, 0x8c($s1)
/* 9A176C 8024078C 080901E8 */  j         .L802407A0
/* 9A1770 80240790 A22000B5 */   sb       $zero, 0xb5($s1)
.L80240794:
/* 9A1774 80240794 3442002E */  ori       $v0, $v0, 0x2e
/* 9A1778 80240798 AE30008C */  sw        $s0, 0x8c($s1)
/* 9A177C 8024079C A23000B5 */  sb        $s0, 0xb5($s1)
.L802407A0:
/* 9A1780 802407A0 AE420028 */  sw        $v0, 0x28($s2)
/* 9A1784 802407A4 24020007 */  addiu     $v0, $zero, 7
/* 9A1788 802407A8 08090223 */  j         L8024088C_9A186C
/* 9A178C 802407AC AE220090 */   sw       $v0, 0x90($s1)
.L802407B0:
/* 9A1790 802407B0 0280282D */  daddu     $a1, $s4, $zero
/* 9A1794 802407B4 0C012701 */  jal       func_80049C04
/* 9A1798 802407B8 02A0302D */   daddu    $a2, $s5, $zero
/* 9A179C 802407BC 08090208 */  j         .L80240820
/* 9A17A0 802407C0 00000000 */   nop
.L802407C4:
/* 9A17A4 802407C4 0260202D */  daddu     $a0, $s3, $zero
/* 9A17A8 802407C8 0280282D */  daddu     $a1, $s4, $zero
/* 9A17AC 802407CC 0C090038 */  jal       trd_02_set_script_owner_npc_anim
/* 9A17B0 802407D0 02A0302D */   daddu    $a2, $s5, $zero
/* 9A17B4 802407D4 0260202D */  daddu     $a0, $s3, $zero
.L802407D8:
/* 9A17B8 802407D8 0280282D */  daddu     $a1, $s4, $zero
/* 9A17BC 802407DC 0C090057 */  jal       trd_02_UnkDistFunc
/* 9A17C0 802407E0 02A0302D */   daddu    $a2, $s5, $zero
/* 9A17C4 802407E4 08090208 */  j         .L80240820
/* 9A17C8 802407E8 00000000 */   nop
.L802407EC:
/* 9A17CC 802407EC 0260202D */  daddu     $a0, $s3, $zero
/* 9A17D0 802407F0 0280282D */  daddu     $a1, $s4, $zero
/* 9A17D4 802407F4 0C0900A4 */  jal       trd_02_UnkNpcAIFunc12
/* 9A17D8 802407F8 02A0302D */   daddu    $a2, $s5, $zero
/* 9A17DC 802407FC 08090208 */  j         .L80240820
/* 9A17E0 80240800 00000000 */   nop
.L80240804:
/* 9A17E4 80240804 0280282D */  daddu     $a1, $s4, $zero
/* 9A17E8 80240808 0C0900FD */  jal       trd_02_set_script_owner_npc_col_height
/* 9A17EC 8024080C 02A0302D */   daddu    $a2, $s5, $zero
/* 9A17F0 80240810 08090208 */  j         .L80240820
/* 9A17F4 80240814 00000000 */   nop
.L80240818:
/* 9A17F8 80240818 0C0129CF */  jal       func_8004A73C
/* 9A17FC 8024081C 0260202D */   daddu    $a0, $s3, $zero
.L80240820:
/* 9A1800 80240820 8E230088 */  lw        $v1, 0x88($s1)
/* 9A1804 80240824 24020006 */  addiu     $v0, $zero, 6
/* 9A1808 80240828 14620019 */  bne       $v1, $v0, .L80240890
/* 9A180C 8024082C 0000102D */   daddu    $v0, $zero, $zero
/* 9A1810 80240830 8E22008C */  lw        $v0, 0x8c($s1)
/* 9A1814 80240834 10400003 */  beqz      $v0, .L80240844
/* 9A1818 80240838 24020001 */   addiu    $v0, $zero, 1
/* 9A181C 8024083C 08090212 */  j         .L80240848
/* 9A1820 80240840 A22200B5 */   sb       $v0, 0xb5($s1)
.L80240844:
/* 9A1824 80240844 A22000B5 */  sb        $zero, 0xb5($s1)
.L80240848:
/* 9A1828 80240848 8E22008C */  lw        $v0, 0x8c($s1)
/* 9A182C 8024084C 1040000F */  beqz      $v0, L8024088C_9A186C
/* 9A1830 80240850 3C03FFAA */   lui      $v1, 0xffaa
/* 9A1834 80240854 8E420028 */  lw        $v0, 0x28($s2)
/* 9A1838 80240858 3463FFFC */  ori       $v1, $v1, 0xfffc
/* 9A183C 8024085C 00431821 */  addu      $v1, $v0, $v1
/* 9A1840 80240860 2C620015 */  sltiu     $v0, $v1, 0x15
/* 9A1844 80240864 10400009 */  beqz      $v0, L8024088C_9A186C
/* 9A1848 80240868 00031080 */   sll      $v0, $v1, 2
/* 9A184C 8024086C 3C018024 */  lui       $at, %hi(jtbl_802432E8_9A42C8)
/* 9A1850 80240870 00220821 */  addu      $at, $at, $v0
/* 9A1854 80240874 8C2232E8 */  lw        $v0, %lo(jtbl_802432E8_9A42C8)($at)
/* 9A1858 80240878 00400008 */  jr        $v0
/* 9A185C 8024087C 00000000 */   nop
glabel L80240880_9A1860
/* 9A1860 80240880 8E420028 */  lw        $v0, 0x28($s2)
/* 9A1864 80240884 24420001 */  addiu     $v0, $v0, 1
/* 9A1868 80240888 AE420028 */  sw        $v0, 0x28($s2)
glabel L8024088C_9A186C
/* 9A186C 8024088C 0000102D */  daddu     $v0, $zero, $zero
.L80240890:
/* 9A1870 80240890 8FBF0068 */  lw        $ra, 0x68($sp)
/* 9A1874 80240894 8FB50064 */  lw        $s5, 0x64($sp)
/* 9A1878 80240898 8FB40060 */  lw        $s4, 0x60($sp)
/* 9A187C 8024089C 8FB3005C */  lw        $s3, 0x5c($sp)
/* 9A1880 802408A0 8FB20058 */  lw        $s2, 0x58($sp)
/* 9A1884 802408A4 8FB10054 */  lw        $s1, 0x54($sp)
/* 9A1888 802408A8 8FB00050 */  lw        $s0, 0x50($sp)
/* 9A188C 802408AC 03E00008 */  jr        $ra
/* 9A1890 802408B0 27BD0070 */   addiu    $sp, $sp, 0x70
