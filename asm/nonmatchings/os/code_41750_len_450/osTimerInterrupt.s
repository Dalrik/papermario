.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osTimerInterrupt
/* 418D4 800664D4 3C038009 */  lui       $v1, 0x8009
/* 418D8 800664D8 8C634670 */  lw        $v1, 0x4670($v1)
/* 418DC 800664DC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 418E0 800664E0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 418E4 800664E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 418E8 800664E8 8C620000 */  lw        $v0, ($v1)
/* 418EC 800664EC 10430044 */  beq       $v0, $v1, .L80066600
/* 418F0 800664F0 00000000 */   nop      
.L800664F4:
/* 418F4 800664F4 3C028009 */  lui       $v0, 0x8009
/* 418F8 800664F8 8C424670 */  lw        $v0, 0x4670($v0)
/* 418FC 800664FC 8C500000 */  lw        $s0, ($v0)
/* 41900 80066500 16020006 */  bne       $s0, $v0, .L8006651C
/* 41904 80066504 00000000 */   nop      
/* 41908 80066508 0C01B1A0 */  jal       osSetCompare
/* 4190C 8006650C 00002021 */   addu     $a0, $zero, $zero
/* 41910 80066510 3C01800A */  lui       $at, 0x800a
/* 41914 80066514 08019980 */  j         .L80066600
/* 41918 80066518 AC20A62C */   sw       $zero, -0x59d4($at)
.L8006651C:
/* 4191C 8006651C 0C019680 */  jal       osGetCount
/* 41920 80066520 00000000 */   nop      
/* 41924 80066524 3C03800A */  lui       $v1, 0x800a
/* 41928 80066528 8C63A62C */  lw        $v1, -0x59d4($v1)
/* 4192C 8006652C 3C01800A */  lui       $at, 0x800a
/* 41930 80066530 AC22A62C */  sw        $v0, -0x59d4($at)
/* 41934 80066534 00431023 */  subu      $v0, $v0, $v1
/* 41938 80066538 8E030010 */  lw        $v1, 0x10($s0)
/* 4193C 8006653C 00403821 */  addu      $a3, $v0, $zero
/* 41940 80066540 00003021 */  addu      $a2, $zero, $zero
/* 41944 80066544 00C3102B */  sltu      $v0, $a2, $v1
/* 41948 80066548 14400007 */  bnez      $v0, .L80066568
/* 4194C 8006654C 00000000 */   nop      
/* 41950 80066550 14660010 */  bne       $v1, $a2, .L80066594
/* 41954 80066554 00000000 */   nop      
/* 41958 80066558 8E020014 */  lw        $v0, 0x14($s0)
/* 4195C 8006655C 00E2102B */  sltu      $v0, $a3, $v0
/* 41960 80066560 1040000C */  beqz      $v0, .L80066594
/* 41964 80066564 00000000 */   nop      
.L80066568:
/* 41968 80066568 8E040010 */  lw        $a0, 0x10($s0)
/* 4196C 8006656C 8E050014 */  lw        $a1, 0x14($s0)
/* 41970 80066570 00A7102B */  sltu      $v0, $a1, $a3
/* 41974 80066574 00A72823 */  subu      $a1, $a1, $a3
/* 41978 80066578 00862023 */  subu      $a0, $a0, $a2
/* 4197C 8006657C 00822023 */  subu      $a0, $a0, $v0
/* 41980 80066580 AE040010 */  sw        $a0, 0x10($s0)
/* 41984 80066584 0C019984 */  jal       osSetTimerIntr
/* 41988 80066588 AE050014 */   sw       $a1, 0x14($s0)
/* 4198C 8006658C 08019980 */  j         .L80066600
/* 41990 80066590 00000000 */   nop      
.L80066594:
/* 41994 80066594 8E030004 */  lw        $v1, 4($s0)
/* 41998 80066598 8E020000 */  lw        $v0, ($s0)
/* 4199C 8006659C AC620000 */  sw        $v0, ($v1)
/* 419A0 800665A0 8E030000 */  lw        $v1, ($s0)
/* 419A4 800665A4 8E020004 */  lw        $v0, 4($s0)
/* 419A8 800665A8 AC620004 */  sw        $v0, 4($v1)
/* 419AC 800665AC 8E040018 */  lw        $a0, 0x18($s0)
/* 419B0 800665B0 AE000000 */  sw        $zero, ($s0)
/* 419B4 800665B4 10800004 */  beqz      $a0, .L800665C8
/* 419B8 800665B8 AE000004 */   sw       $zero, 4($s0)
/* 419BC 800665BC 8E05001C */  lw        $a1, 0x1c($s0)
/* 419C0 800665C0 0C019608 */  jal       osSendMesg
/* 419C4 800665C4 00003021 */   addu     $a2, $zero, $zero
.L800665C8:
/* 419C8 800665C8 8E020008 */  lw        $v0, 8($s0)
/* 419CC 800665CC 14400004 */  bnez      $v0, .L800665E0
/* 419D0 800665D0 00000000 */   nop      
/* 419D4 800665D4 8E02000C */  lw        $v0, 0xc($s0)
/* 419D8 800665D8 1040FFC6 */  beqz      $v0, .L800664F4
/* 419DC 800665DC 00000000 */   nop      
.L800665E0:
/* 419E0 800665E0 8E020008 */  lw        $v0, 8($s0)
/* 419E4 800665E4 8E03000C */  lw        $v1, 0xc($s0)
/* 419E8 800665E8 02002021 */  addu      $a0, $s0, $zero
/* 419EC 800665EC AC820010 */  sw        $v0, 0x10($a0)
/* 419F0 800665F0 0C0199A4 */  jal       osInsertTimer
/* 419F4 800665F4 AC830014 */   sw       $v1, 0x14($a0)
/* 419F8 800665F8 0801993D */  j         .L800664F4
/* 419FC 800665FC 00000000 */   nop      
.L80066600:
/* 41A00 80066600 8FBF0014 */  lw        $ra, 0x14($sp)
/* 41A04 80066604 8FB00010 */  lw        $s0, 0x10($sp)
/* 41A08 80066608 03E00008 */  jr        $ra
/* 41A0C 8006660C 27BD0018 */   addiu    $sp, $sp, 0x18