.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel ItemDamageEnemy
/* 181008 80252728 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 18100C 8025272C AFB20018 */  sw        $s2, 0x18($sp)
/* 181010 80252730 0080902D */  daddu     $s2, $a0, $zero
/* 181014 80252734 AFBF0020 */  sw        $ra, 0x20($sp)
/* 181018 80252738 AFB3001C */  sw        $s3, 0x1c($sp)
/* 18101C 8025273C AFB10014 */  sw        $s1, 0x14($sp)
/* 181020 80252740 AFB00010 */  sw        $s0, 0x10($sp)
/* 181024 80252744 8E50000C */  lw        $s0, 0xc($s2)
/* 181028 80252748 3C11800E */  lui       $s1, %hi(gBattleStatus)
/* 18102C 8025274C 2631C070 */  addiu     $s1, $s1, %lo(gBattleStatus)
/* 181030 80252750 8E130000 */  lw        $s3, ($s0)
/* 181034 80252754 26100004 */  addiu     $s0, $s0, 4
/* 181038 80252758 8E020000 */  lw        $v0, ($s0)
/* 18103C 8025275C 26100004 */  addiu     $s0, $s0, 4
/* 181040 80252760 AE20018C */  sw        $zero, 0x18c($s1)
/* 181044 80252764 AE220188 */  sw        $v0, 0x188($s1)
/* 181048 80252768 8E020000 */  lw        $v0, ($s0)
/* 18104C 8025276C 26100004 */  addiu     $s0, $s0, 4
/* 181050 80252770 AE220190 */  sw        $v0, 0x190($s1)
/* 181054 80252774 8E050000 */  lw        $a1, ($s0)
/* 181058 80252778 0C0B1EAF */  jal       get_variable
/* 18105C 8025277C 26100004 */   addiu    $s0, $s0, 4
/* 181060 80252780 A622017E */  sh        $v0, 0x17e($s1)
/* 181064 80252784 8E100000 */  lw        $s0, ($s0)
/* 181068 80252788 24020030 */  addiu     $v0, $zero, 0x30
/* 18106C 8025278C 32030030 */  andi      $v1, $s0, 0x30
/* 181070 80252790 54620004 */  bnel      $v1, $v0, .L802527A4
/* 181074 80252794 32020010 */   andi     $v0, $s0, 0x10
/* 181078 80252798 8E220000 */  lw        $v0, ($s1)
/* 18107C 8025279C 080949F9 */  j         .L802527E4
/* 181080 802527A0 34420030 */   ori      $v0, $v0, 0x30
.L802527A4:
/* 181084 802527A4 10400004 */  beqz      $v0, .L802527B8
/* 181088 802527A8 2403FFDF */   addiu    $v1, $zero, -0x21
/* 18108C 802527AC 8E220000 */  lw        $v0, ($s1)
/* 181090 802527B0 080949F8 */  j         .L802527E0
/* 181094 802527B4 34420010 */   ori      $v0, $v0, 0x10
.L802527B8:
/* 181098 802527B8 32020020 */  andi      $v0, $s0, 0x20
/* 18109C 802527BC 10400005 */  beqz      $v0, .L802527D4
/* 1810A0 802527C0 2403FFEF */   addiu    $v1, $zero, -0x11
/* 1810A4 802527C4 8E220000 */  lw        $v0, ($s1)
/* 1810A8 802527C8 00431024 */  and       $v0, $v0, $v1
/* 1810AC 802527CC 080949F9 */  j         .L802527E4
/* 1810B0 802527D0 34420020 */   ori      $v0, $v0, 0x20
.L802527D4:
/* 1810B4 802527D4 8E220000 */  lw        $v0, ($s1)
/* 1810B8 802527D8 00431024 */  and       $v0, $v0, $v1
/* 1810BC 802527DC 2403FFDF */  addiu     $v1, $zero, -0x21
.L802527E0:
/* 1810C0 802527E0 00431024 */  and       $v0, $v0, $v1
.L802527E4:
/* 1810C4 802527E4 AE220000 */  sw        $v0, ($s1)
/* 1810C8 802527E8 32020040 */  andi      $v0, $s0, 0x40
/* 1810CC 802527EC 10400007 */  beqz      $v0, .L8025280C
/* 1810D0 802527F0 2404FFBF */   addiu    $a0, $zero, -0x41
/* 1810D4 802527F4 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 1810D8 802527F8 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 1810DC 802527FC 8C620000 */  lw        $v0, ($v1)
/* 1810E0 80252800 34420040 */  ori       $v0, $v0, 0x40
/* 1810E4 80252804 08094A08 */  j         .L80252820
/* 1810E8 80252808 AC620000 */   sw       $v0, ($v1)
.L8025280C:
/* 1810EC 8025280C 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 1810F0 80252810 2442C070 */  addiu     $v0, $v0, %lo(gBattleStatus)
/* 1810F4 80252814 8C430000 */  lw        $v1, ($v0)
/* 1810F8 80252818 00641824 */  and       $v1, $v1, $a0
/* 1810FC 8025281C AC430000 */  sw        $v1, ($v0)
.L80252820:
/* 181100 80252820 32020200 */  andi      $v0, $s0, 0x200
/* 181104 80252824 10400007 */  beqz      $v0, .L80252844
/* 181108 80252828 2404FDFF */   addiu    $a0, $zero, -0x201
/* 18110C 8025282C 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 181110 80252830 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 181114 80252834 8C620000 */  lw        $v0, ($v1)
/* 181118 80252838 34420200 */  ori       $v0, $v0, 0x200
/* 18111C 8025283C 08094A16 */  j         .L80252858
/* 181120 80252840 AC620000 */   sw       $v0, ($v1)
.L80252844:
/* 181124 80252844 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 181128 80252848 2442C070 */  addiu     $v0, $v0, %lo(gBattleStatus)
/* 18112C 8025284C 8C430000 */  lw        $v1, ($v0)
/* 181130 80252850 00641824 */  and       $v1, $v1, $a0
/* 181134 80252854 AC430000 */  sw        $v1, ($v0)
.L80252858:
/* 181138 80252858 32020080 */  andi      $v0, $s0, 0x80
/* 18113C 8025285C 10400007 */  beqz      $v0, .L8025287C
/* 181140 80252860 2404FF7F */   addiu    $a0, $zero, -0x81
/* 181144 80252864 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 181148 80252868 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 18114C 8025286C 8C620000 */  lw        $v0, ($v1)
/* 181150 80252870 34420080 */  ori       $v0, $v0, 0x80
/* 181154 80252874 08094A24 */  j         .L80252890
/* 181158 80252878 AC620000 */   sw       $v0, ($v1)
.L8025287C:
/* 18115C 8025287C 3C02800E */  lui       $v0, %hi(gBattleStatus)
/* 181160 80252880 2442C070 */  addiu     $v0, $v0, %lo(gBattleStatus)
/* 181164 80252884 8C430000 */  lw        $v1, ($v0)
/* 181168 80252888 00641824 */  and       $v1, $v1, $a0
/* 18116C 8025288C AC430000 */  sw        $v1, ($v0)
.L80252890:
/* 181170 80252890 0C09A75B */  jal       get_actor
/* 181174 80252894 8E440148 */   lw       $a0, 0x148($s2)
/* 181178 80252898 94430428 */  lhu       $v1, 0x428($v0)
/* 18117C 8025289C A62301A0 */  sh        $v1, 0x1a0($s1)
/* 181180 802528A0 92230193 */  lbu       $v1, 0x193($s1)
/* 181184 802528A4 90420426 */  lbu       $v0, 0x426($v0)
/* 181188 802528A8 A2230194 */  sb        $v1, 0x194($s1)
/* 18118C 802528AC 306300FF */  andi      $v1, $v1, 0xff
/* 181190 802528B0 A22201A2 */  sb        $v0, 0x1a2($s1)
/* 181194 802528B4 240200FF */  addiu     $v0, $zero, 0xff
/* 181198 802528B8 50620001 */  beql      $v1, $v0, .L802528C0
/* 18119C 802528BC A2200194 */   sb       $zero, 0x194($s1)
.L802528C0:
/* 1811A0 802528C0 8E220190 */  lw        $v0, 0x190($s1)
/* 1811A4 802528C4 30420F00 */  andi      $v0, $v0, 0xf00
/* 1811A8 802528C8 00021203 */  sra       $v0, $v0, 8
/* 1811AC 802528CC 0C0945BA */  jal       calc_item_damage_enemy
/* 1811B0 802528D0 A2220195 */   sb       $v0, 0x195($s1)
/* 1811B4 802528D4 0440000B */  bltz      $v0, .L80252904
/* 1811B8 802528D8 0240202D */   daddu    $a0, $s2, $zero
/* 1811BC 802528DC 0260282D */  daddu     $a1, $s3, $zero
/* 1811C0 802528E0 0C0B2026 */  jal       set_variable
/* 1811C4 802528E4 0040302D */   daddu    $a2, $v0, $zero
/* 1811C8 802528E8 0C0B1069 */  jal       does_script_exist_by_ref
/* 1811CC 802528EC 0240202D */   daddu    $a0, $s2, $zero
/* 1811D0 802528F0 0040182D */  daddu     $v1, $v0, $zero
/* 1811D4 802528F4 10600004 */  beqz      $v1, .L80252908
/* 1811D8 802528F8 240200FF */   addiu    $v0, $zero, 0xff
/* 1811DC 802528FC 08094A42 */  j         .L80252908
/* 1811E0 80252900 24020002 */   addiu    $v0, $zero, 2
.L80252904:
/* 1811E4 80252904 240200FF */  addiu     $v0, $zero, 0xff
.L80252908:
/* 1811E8 80252908 8FBF0020 */  lw        $ra, 0x20($sp)
/* 1811EC 8025290C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 1811F0 80252910 8FB20018 */  lw        $s2, 0x18($sp)
/* 1811F4 80252914 8FB10014 */  lw        $s1, 0x14($sp)
/* 1811F8 80252918 8FB00010 */  lw        $s0, 0x10($sp)
/* 1811FC 8025291C 03E00008 */  jr        $ra
/* 181200 80252920 27BD0028 */   addiu    $sp, $sp, 0x28