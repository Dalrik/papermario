.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218918_649728
/* 649728 80218918 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 64972C 8021891C AFB10014 */  sw        $s1, 0x14($sp)
/* 649730 80218920 0080882D */  daddu     $s1, $a0, $zero
/* 649734 80218924 AFBF0018 */  sw        $ra, 0x18($sp)
/* 649738 80218928 AFB00010 */  sw        $s0, 0x10($sp)
/* 64973C 8021892C 8E30000C */  lw        $s0, 0xc($s1)
/* 649740 80218930 8E050000 */  lw        $a1, ($s0)
/* 649744 80218934 0C0B1EAF */  jal       evt_get_variable
/* 649748 80218938 26100004 */   addiu    $s0, $s0, 4
/* 64974C 8021893C 0040202D */  daddu     $a0, $v0, $zero
/* 649750 80218940 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 649754 80218944 14820002 */  bne       $a0, $v0, .L80218950
/* 649758 80218948 00000000 */   nop
/* 64975C 8021894C 8E240148 */  lw        $a0, 0x148($s1)
.L80218950:
/* 649760 80218950 0C09A75B */  jal       get_actor
/* 649764 80218954 00000000 */   nop
/* 649768 80218958 0040202D */  daddu     $a0, $v0, $zero
/* 64976C 8021895C 90830136 */  lbu       $v1, 0x136($a0)
/* 649770 80218960 24020047 */  addiu     $v0, $zero, 0x47
/* 649774 80218964 1062000B */  beq       $v1, $v0, .L80218994
/* 649778 80218968 0062102A */   slt      $v0, $v1, $v0
/* 64977C 8021896C 54400011 */  bnel      $v0, $zero, .L802189B4
/* 649780 80218970 0220202D */   daddu    $a0, $s1, $zero
/* 649784 80218974 28620065 */  slti      $v0, $v1, 0x65
/* 649788 80218978 1040000D */  beqz      $v0, .L802189B0
/* 64978C 8021897C 2862004D */   slti     $v0, $v1, 0x4d
/* 649790 80218980 1440000C */  bnez      $v0, .L802189B4
/* 649794 80218984 0220202D */   daddu    $a0, $s1, $zero
/* 649798 80218988 8E050000 */  lw        $a1, ($s0)
/* 64979C 8021898C 0808626F */  j         .L802189BC
/* 6497A0 80218990 2406FFFF */   addiu    $a2, $zero, -1
.L80218994:
/* 6497A4 80218994 8C8300A8 */  lw        $v1, 0xa8($a0)
/* 6497A8 80218998 24020001 */  addiu     $v0, $zero, 1
/* 6497AC 8021899C 14620005 */  bne       $v1, $v0, .L802189B4
/* 6497B0 802189A0 0220202D */   daddu    $a0, $s1, $zero
/* 6497B4 802189A4 8E050000 */  lw        $a1, ($s0)
/* 6497B8 802189A8 0808626F */  j         .L802189BC
/* 6497BC 802189AC 2406FFFF */   addiu    $a2, $zero, -1
.L802189B0:
/* 6497C0 802189B0 0220202D */  daddu     $a0, $s1, $zero
.L802189B4:
/* 6497C4 802189B4 8E050000 */  lw        $a1, ($s0)
/* 6497C8 802189B8 0000302D */  daddu     $a2, $zero, $zero
.L802189BC:
/* 6497CC 802189BC 0C0B2026 */  jal       evt_set_variable
/* 6497D0 802189C0 00000000 */   nop
/* 6497D4 802189C4 8FBF0018 */  lw        $ra, 0x18($sp)
/* 6497D8 802189C8 8FB10014 */  lw        $s1, 0x14($sp)
/* 6497DC 802189CC 8FB00010 */  lw        $s0, 0x10($sp)
/* 6497E0 802189D0 24020002 */  addiu     $v0, $zero, 2
/* 6497E4 802189D4 03E00008 */  jr        $ra
/* 6497E8 802189D8 27BD0020 */   addiu    $sp, $sp, 0x20
/* 6497EC 802189DC 00000000 */  nop
