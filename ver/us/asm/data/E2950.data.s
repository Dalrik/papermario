.include "macro.inc"

.section .data

glabel D_8014C250
.word 0x0001003C, 0x00000000, 0x00000000, 0x00000000

glabel D_8014C260
.word 0x00000000, 0x00000000, 0xFFFFFF00, 0xFFFFFF00

glabel D_8014C270
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_8014C280
.word 0x028001E0, 0x01FF0000, 0x028001E0, 0x01FF0000

glabel MessagePlural
.word 0x53FD0000

glabel MessageSingular
.short 0xF0FD

glabel gNextMessageBuffer
.short 0x0000

glabel D_8014C298
.word 0xFFF00009, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00100009, 0x00000000, 0x04000000, 0xFFFFFFFF, 0xFFF0FFF7, 0x00000000, 0x00000240, 0xFFFFFFFF, 0x0010FFF7, 0x00000000, 0x04000240, 0xFFFFFFFF

glabel D_8014C2D8
.word 0xE3000A01, 0x00100000, 0xD9FDF9FF, 0x00000000, 0xD9FFFFFF, 0x00200004, 0xE3001801, 0x000000C0, 0xE3001A01, 0x00000030, 0xE2001E01, 0x00000000, 0xD7000002, 0xFFFFFFFF, 0xE3000C00, 0x00080000, 0xE3001001, 0x00000000, 0xE3001201, 0x00003000, 0xE200001C, 0x0C184B40, 0xFC11FFFF, 0xFFFFF438, 0xDF000000, 0x00000000

glabel gMsgNumbers
.word 0x802EF0D0, 0x8010100B, 0x080B0B0B, 0x0B0B0B0B, 0x0B0B0000, 0x802EF0D0, 0x80101009, 0x08090909, 0x09090909, 0x09090000

glabel D_8014C368
.word 0xE7000000, 0x00000000, 0xE3000A01, 0x00000000, 0xE3001201, 0x00000000, 0xE3000C00, 0x00000000, 0xE3001801, 0x000000C0, 0xE3001A01, 0x00000030, 0xE3001700, 0x00000000, 0xE2001E01, 0x00000000, 0xE3001001, 0x00008000, 0xD7000002, 0xFFFFFFFF, 0xDF000000, 0x00000000

glabel D_8014C3C0
.word 0x00010000, 0x00000000, 0x00000000, 0xFFFFF8FF, 0x00200000, 0x00000000, 0x04000000, 0xFFFFF8FF, 0x0001FFC0, 0x00000000, 0x00000800, 0xBFB8B0FF, 0x0020FFC0, 0x00000000, 0x04000800, 0xBFB8B0FF

glabel D_8014C400
.word 0x00200000, 0x00000000, 0x00000000, 0xFFFFF8FF, 0x00E10000, 0x00000000, 0x01000000, 0xFFFFF8FF, 0x0020FFC0, 0x00000000, 0x00000800, 0xBFB8B0FF, 0x00E1FFC0, 0x00000000, 0x01000800, 0xBFB8B0FF

glabel D_8014C440
.word 0x00E10000, 0x00000000, 0x00000000, 0xFFFFF8FF, 0x01000000, 0x00000000, 0x04000000, 0xFFFFF8FF, 0x00E1FFC0, 0x00000000, 0x00000800, 0xBFB8B0FF, 0x0100FFC0, 0x00000000, 0x04000800, 0xBFB8B0FF

glabel D_8014C480
.word 0xFFF1001E, 0x00000000, 0x00000000, 0xBFB8B0FF, 0x000F001E, 0x00000000, 0x01E00000, 0xBFB8B0FF, 0xFFFF0000, 0x00000000, 0x000001E0, 0xBFB8B0FF, 0x00010000, 0x00000000, 0x01E001E0, 0xBFB8B0FF

glabel D_8014C4C0
.word 0xFFF1001E, 0x00000000, 0x00000000, 0xBFB8B0FF, 0x000F001E, 0x00000000, 0x01E00000, 0xBFB8B0FF, 0xFFFF0000, 0x00000000, 0x000001E0, 0xBFB8B0FF, 0x00010000, 0x00000000, 0x01E001E0, 0xBFB8B0FF

glabel D_8014C500
.word 0xE3000A01, 0x00000000, 0xE200001C, 0x0F0A7008, 0xFCFFFFFF, 0xFFFCF279, 0xE3001201, 0x00003000, 0xD7000002, 0xFFFFFFFF, 0xE3000C00, 0x00000000, 0xE3001801, 0x000000C0, 0xE3001A01, 0x00000030, 0xE3000F00, 0x00000000, 0xE3001001, 0x00008000, 0xE3000D01, 0x00000000, 0xE3001402, 0x00000C00, 0xE3001700, 0x00000000, 0xE2001E01, 0x00000000, 0x00000000, 0x00000000, 0xDF000000, 0x00000000

glabel D_8014C580
.byte 0x32, 0x50, 0x64, 0x69, 0x64, 0x00, 0x00, 0x00

glabel D_8014C588
.byte 0x69, 0x64, 0x4D, 0x39, 0x28, 0x1B, 0x10, 0x08, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_8014C5A0
.word 0xFFF40000, 0x00000000, 0x23002300, 0x000000FF, 0x000B0000, 0x00000000, 0x20002300, 0x000000FF, 0x000B0017, 0x00000000, 0x20002000, 0x000000FF, 0xFFF40017, 0x00000000, 0x23002000, 0x000000FF

glabel D_8014C5E0
.word 0xFFF00000, 0x00000000, 0x24002400, 0x000000FF, 0x000F0000, 0x00000000, 0x20002400, 0x000000FF, 0x000F001F, 0x00000000, 0x20002000, 0x000000FF, 0xFFF0001F, 0x00000000, 0x24002000, 0x000000FF

glabel D_8014C620
.word 0xE7000000, 0x00000000, 0xD7000002, 0xFFFFFFFF, 0xFCFFFFFF, 0xFFFCF279, 0xE3000C00, 0x00080000, 0xE3000D01, 0x00000000, 0xE3000F00, 0x00000000, 0xE3001001, 0x00000000, 0xE3001201, 0x00002000, 0xE3001402, 0x00000C00, 0xE3001001, 0x00008000, 0xDF000000, 0x00000000

glabel D_8014C678
.word 0xD9DDFBFF, 0x00000000, 0x01004008, D_8014C5A0, 0x06000204, 0x00000406, 0xE7000000, 0x00000000, 0xDF000000, 0x00000000

glabel D_8014C6A0
.word 0xD9DDFBFF, 0x00000000, 0x01004008, D_8014C5E0, 0x06000204, 0x00000406, 0xE7000000, 0x00000000, 0xDF000000, 0x00000000, 0xFFFFFF00, 0xFFFFFF00

glabel D_8014C6D0
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_8014C6E0
.short 0x0020, 0x0028

glabel D_8014C6E4
.short 0x0008, 0x0004, 0x0000, 0x0000, 0x0000, 0x0000

glabel D_8014C6F0
.word 0x00000002, 0x00000000, 0x00000000, 0x00000000

glabel D_8014C700
.word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFCA, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFC86, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFD853, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFA621, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFD8410, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFA5200, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFD73100, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFA52000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFC731000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFA520000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xC7310000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xA5200000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFC, 0x73100000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFE9, 0x52000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFC7, 0x31000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFE94, 0x10000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFA62, 0x10000000, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEA731, 0x00000000, 0xFFFFFFFF, 0xFFFFFFFE, 0xDCA86310, 0x00000000, 0xFFFFFFFF, 0xEDCBAA98, 0x76542100, 0x00000000, 0xFFFDCBA9, 0x87665443, 0x32211000, 0x00000000, 0xFEB86544, 0x33222111, 0x10000000, 0x00000000, 0xFC853211, 0x11000000, 0x00000000, 0x00000000, 0xFD842100, 0x00000000, 0x00000000, 0x00000000, 0xFEA63100, 0x00000000, 0x00000000, 0x00000000, 0xFFD85200, 0x00000000, 0x00000000, 0x00000000, 0xFFFC8420, 0x00000000, 0x00000000, 0x00000000, 0xFFFFC741, 0x00000000, 0x00000000, 0x00000000, 0xFFFFFB73, 0x10000000, 0x00000000, 0x00000000, 0xFFFFFFA6, 0x31000000, 0x00000000, 0x00000000, 0xFFFFFFEA, 0x63100000, 0x00000000, 0x00000000, 0xFFFFFFFE, 0x95210000, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xD9521000, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFD852000, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFC84200, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFC7310, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFB631, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFE941, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFFB62, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFFC62, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFFC73, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFFC72, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFFC62, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFFB52, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFFA51, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFF941, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFE941, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFE831, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFD731, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFFC620, 0x00000000, 0x00011223, 0xFFFFFFFF, 0xFFFFB620, 0x00000000, 0x01234567, 0xFFFFFFFF, 0xFFFFA520, 0x00000001, 0x23579ACC, 0xFFFFFFFF, 0xFFFFA510, 0x00001134, 0x68ACEFFF, 0xFFFFFFFF, 0xFFFF9410, 0x00123569, 0xBDFFFFFF, 0xFFFFFFFF, 0xFFFF9521, 0x224579CE, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFA644, 0x568ADFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFC988, 0x9BEFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFDDD, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF

glabel D_8014CB00
.word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDCCCCCD, 0xEFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFEB, 0x97655567, 0x9BCEFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFDA86, 0x42111112, 0x3569CEFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFDA7532, 0x10000000, 0x012469CF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xEB742100, 0x00000000, 0x0001247C, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFC, 0x85310000, 0x00000000, 0x00000137, 0xDFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFEB7, 0x41000000, 0x00000000, 0x00000014, 0x9FFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFD963, 0x10000000, 0x00000000, 0x00000002, 0x6CFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFC8420, 0x00000000, 0x00000000, 0x00000001, 0x49FFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFC74100, 0x00000000, 0x00000000, 0x00000000, 0x27DFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFC731000, 0x00000000, 0x00000000, 0x00000000, 0x26CFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xC7310000, 0x00000000, 0x00000000, 0x00000000, 0x26CFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFC, 0x73100000, 0x00000000, 0x00000000, 0x00000000, 0x15CFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFEC8, 0x41000000, 0x00000000, 0x00000000, 0x00000000, 0x15BFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDCBA964, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 0x15CFFFFF, 0xFFFFFFFF, 0xFFFFFFFC, 0xA7654321, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x16CFFFFF, 0xFFFFFFFF, 0xFFFFFDA7, 0x42111100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x16BFFFFF, 0xFFFFFFFF, 0xFFFFC842, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x149CEEDD, 0xEEFFFFFF, 0xFFFC7310, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02578877, 0x889ACFFF, 0xFFD83100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x01233322, 0x33358DFF, 0xFFA51000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00125BFF, 0xFE830000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00025BFF, 0xFC620000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00138DFF, 0xFC510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x1247CFFF, 0xFC510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000012, 0x469CFFFF, 0xFC510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00012346, 0x9CEFFFFF, 0xFC510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x013468AC, 0xEFFFFFFF, 0xFC510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x1479BDFF, 0xFFFFFFFF, 0xFD720000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x37BEFFFF, 0xFFFFFFFF, 0xFE941000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x38DFFFFF, 0xFFFFFFFF, 0xFFD84100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x27DFFFFF, 0xFFFFFFFF, 0xFFFC7310, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x26ADDBAA, 0xABDFFFFF, 0xFFFFA520, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x14787544, 0x457AEFFF, 0xFFFEA520, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02342111, 0x1135AEFF, 0xFFFB7310, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00110000, 0x00026BFF, 0xFFC73100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000137DF, 0xFE941000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000016CF, 0xFD720000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000015BF, 0xFC610000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000015CF, 0xFC510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000027DF, 0xFC510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00014AFF, 0xFC510000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00138DFF, 0xFD720000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x1147CFFF, 0xFF941000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000012, 0x358CFFFF, 0xFFD84100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000136, 0x8BDFFFFF, 0xFFFC8421, 0x11110000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000026B, 0xEFFFFFFF, 0xFFFFDA75, 0x55442100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000149E, 0xFFFFFFFF, 0xFFFFFFDC, 0xBBA97310, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000015BF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFC731, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000027CF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFB62, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00025AFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFA5, 0x20000000, 0x00000000, 0x00000000, 0x00000000, 0x01259EFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFE9, 0x52000000, 0x00000000, 0x00000000, 0x00000001, 0x2469DFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFD, 0x95310000, 0x00000000, 0x00000000, 0x00000013, 0x69CEFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xEB742000, 0x00000000, 0x00000000, 0x00000025, 0xAEFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFC85310, 0x00000000, 0x00000000, 0x00000259, 0xEFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEA753, 0x11000000, 0x00000000, 0x0001359E, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFDA7, 0x53211000, 0x00000000, 0x11347AEF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFD, 0xB9754333, 0x33333333, 0x457ACFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEDBA988, 0x88888889, 0xABDFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFEE, 0xEEEEEEEF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF

glabel D_8014D300
.word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEDDDCCC, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFEDC, 0xBBAA9999, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFDCBA9, 0x88776666, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDCB9876, 0x65443333, 0xFFFFFFFF, 0xFFFFFFFE, 0xCA987643, 0x32111000, 0xFFFFFFFF, 0xFFFFFFDB, 0x98654321, 0x00000000, 0xFFFFFFFF, 0xFFFFECA8, 0x75421000, 0x00000000, 0xFFFFFFFF, 0xFFFDBA86, 0x43100000, 0x00000000, 0xFFFFFFFF, 0xFFDB9753, 0x20000000, 0x00000000, 0xFFFFFFFF, 0xFDB97531, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xDB974310, 0x00000000, 0x00000000, 0xFFFFFFFE, 0xB9743100, 0x00000000, 0x00000000, 0xFFFFFFFC, 0xA7531000, 0x00000000, 0x00000000, 0xFFFFFFDA, 0x85310000, 0x00000000, 0x00000000, 0xFFFFFEB8, 0x63100000, 0x00000000, 0x00000000, 0xFFFFFC97, 0x42000000, 0x00000000, 0x00000000, 0xFFFFDA85, 0x30000000, 0x00000000, 0x00000000, 0xFFFFC964, 0x10000000, 0x00000000, 0x00000000, 0xFFFDB852, 0x00000000, 0x00000000, 0x00000000, 0xFFFC9741, 0x00000000, 0x00000000, 0x00000000, 0xFFEB8630, 0x00000000, 0x00000000, 0x00000000, 0xFFDA7420, 0x00000000, 0x00000000, 0x00000000, 0xFFC96310, 0x00000000, 0x00000000, 0x00000000, 0xFFB86300, 0x00000000, 0x00000000, 0x00000000, 0xFEB85200, 0x00000000, 0x00000000, 0x00000000, 0xFDA74100, 0x00000000, 0x00000000, 0x00000000, 0xFDA74100, 0x00000000, 0x00000000, 0x00000000, 0xFD963100, 0x00000000, 0x00000000, 0x00000000, 0xFC963000, 0x00000000, 0x00000000, 0x00000000, 0xFC963000, 0x00000000, 0x00000000, 0x00000000, 0xFC963000, 0x00000000, 0x00000000, 0x00000000

glabel D_8014D500
.word 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFEF8, 0xFEFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFEFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFFFFFF, 0xFEFEFEFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFEFEFEFD, 0xFBFBFDFD, 0xFEFDFEFD, 0xFEFEFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFEFEFCF8, 0xF5F7FAFD, 0xFEFEFEFE, 0xFEFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFCFC, 0xFCFBF8F6, 0xF0F6F9FB, 0xFCFDFEFD, 0xFEFEFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFCFBFB, 0xFAFAF6F5, 0xF0F5F5F9, 0xFAFDFCFE, 0xFCFEFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFEFE, 0xFEFFFFFF, 0xFFFFFFFE, 0xFBF7F8F8, 0xF8F7F5F4, 0xEEF4F3F7, 0xF8F9F9F9, 0xFCFCFDFD, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFEFEFFFF, 0xFFFEFCF9, 0xF6F3F4F5, 0xF6F4F4F4, 0xF0EDF0F1, 0xF4F4F8F8, 0xF8F8FAFB, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFEFDFE, 0xFEFFFFFF, 0xFEFDFAF7, 0xF2EFF0F2, 0xF1F2F1EF, 0xECE8ECEC, 0xF0F2F3F4, 0xF4F6F7F9, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFEFE, 0xFEFEFEFD, 0xFFFFFFFE, 0xFCF8F5F1, 0xEFEEECED, 0xEEEDEDE8, 0xE8E4E8E9, 0xEBEDEFF2, 0xF2F4F4F5, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFEFEFEFF, 0xFFFFFDF9, 0xF9F5F2EE, 0xEDEAE7E7, 0xE9E9E8E5, 0xE5E3E5E6, 0xE8EBEBED, 0xEEF1F2F2, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFEFDFD, 0xFEFDFFFE, 0xFDFCFCF9, 0xF4F1ECEB, 0xEAE9E4E4, 0xE5E4E3E4, 0xE1E0E0E2, 0xE3E6E6E9, 0xEBEDEDF0, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFBFEFE, 0xFDFCFCFD, 0xFDFEFEFC, 0xFAF9F9F7, 0xF1EEEAE7, 0xE7E6E2E0, 0xE0E1DFDF, 0xDEDDDBDF, 0xDEE0E1E3, 0xE5E9EBEE, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFAFB, 0xFCFBFBFA, 0xFDFCFBF8, 0xF7F6F6F5, 0xEEEAE5E4, 0xE3E0DEDE, 0xDBDAD8D7, 0xD6D7D6D9, 0xD9D9DBDD, 0xE0E2E6EA, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFEFEFBF8, 0xF8F9F7F9, 0xF9F9F8F7, 0xF5F4F4F2, 0xEDE8E3E0, 0xDEDCD9D5, 0xD4D1CFCF, 0xD0CECED0, 0xD1D3D6D5, 0xDADDE0E3, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFDFD, 0xFCFCFAF8, 0xF7F6F6F8, 0xF7F6F3F3, 0xF1F2F1F0, 0xEBE6DED8, 0xD7D4D4D1, 0xCBC8C4C5, 0xC5C7C9CA, 0xCBCACDD0, 0xD1D3D6D9, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFEFD, 0xFCFBFBF9, 0xFAF9F9F5, 0xF4F3F3F3, 0xF4F3F2EF, 0xEFEDEDED, 0xE8E1DAD4, 0xD2CFCAC6, 0xC1BDB9BA, 0xBEC2C3C2, 0xC3C4C4C6, 0xC7CACFD3, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFCFBFB, 0xFAF8F9F9, 0xF9F7F8F7, 0xF4F2F1F0, 0xF1EEEDE9, 0xE9E9E9E7, 0xE3DED3CE, 0xCBC9C5BD, 0xB7B3B2B5, 0xB7BABEBD, 0xBFBEBDBD, 0xC0C1C8CE, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFCF9F7, 0xF7F6F6F8, 0xF7F5F4F5, 0xF5F0EEEE, 0xECEBE5E3, 0xE1E3E5E3, 0xDCD3CBC6, 0xC2BFB9B4, 0xACABA8AD, 0xB3B7BAB6, 0xB5B4B5B6, 0xB8BDC4C8, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEF9F8F6, 0xF4F5F6F5, 0xF4F4F4F2, 0xF2F1EDEB, 0xE9E4DEDD, 0xDDDFE1DD, 0xD5CAC2BC, 0xB9B4AEA9, 0xA3A4A6AA, 0xADB1B0B0, 0xAFAFAEB1, 0xB1B6BABF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDF9F7F6, 0xF3F2F3F3, 0xF3F1F1F0, 0xF0EFEEE9, 0xE4DED8D6, 0xD8DBDBD7, 0xCFC4B9B3, 0xAFA9A59F, 0x9C9EA0A5, 0xA9AAA9A9, 0xA8A7A8A8, 0xA8A8ACB2, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFEFE, 0xFDFBF8F5, 0xF3F3F3F2, 0xF0EFEEEE, 0xEEEEEDE7, 0xDFD7D0D0, 0xD3D5D6D3, 0xCABFB5AC, 0xA8A29C97, 0x9698999B, 0x9EA0A09E, 0x9C9E9C9A, 0x999DA1A6, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFEFC, 0xFBFAF7F5, 0xF1F0F2F0, 0xEDEAEBEB, 0xEDECE9E3, 0xD9D0CBCB, 0xCED0D4D2, 0xC9BFB3AA, 0xA19A9592, 0x91919194, 0x96979695, 0x91918E8D, 0x8F91949E, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFDFB, 0xFBF8F6F5, 0xF1F0EDED, 0xE9E7E8E8, 0xE8E9E5DE, 0xD3CBC4C3, 0xC5CACDCE, 0xC7BCB2A7, 0x9F94908C, 0x8D8A8B8A, 0x8D8D8C88, 0x85848581, 0x84898E93, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFDFCFB, 0xFAF9F7F5, 0xF5F0EEE9, 0xE6E2E2E5, 0xE6E5E0D5, 0xCBC2BDBB, 0xBDC2C2C3, 0xC1B9B0A5, 0x9D908B88, 0x88838383, 0x8383807D, 0x7A7A7B7C, 0x797E8288, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFDFCFBFB, 0xFAF8F5F2, 0xF1F1ECE5, 0xE2E1E0E2, 0xE2E1D9CF, 0xC4BCB8B5, 0xB5B4B7B7, 0xB6B1ACA2, 0x9A908984, 0x837F7D7A, 0x7A787774, 0x736C7073, 0x75747877, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFD, 0xFDFCFBFB, 0xFAF8F3F2, 0xEDECE7E2, 0xDCDADDDF, 0xE0DACFC6, 0xBEB8B4B0, 0xAEAAABA9, 0xA9A9A6A0, 0x978C8380, 0x7C7B7774, 0x6F706C6A, 0x6A6F6263, 0x616A686C, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFD, 0xFDFCFBFB, 0xF9F8F1EC, 0xEAE7E4DF, 0xDBD8D7DA, 0xDBD4CABF, 0xB9B4AEAA, 0xA5A29F9D, 0x9E9F9E99, 0x92867E79, 0x73746D6B, 0x67636562, 0x6263665D, 0x63515963, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFEFD, 0xFCFCFCFC, 0xFAF5EFEA, 0xE7E2DEDA, 0xD4D2D3D4, 0xD4CFC4BE, 0xB6B0ACA5, 0xA09A9593, 0x94959692, 0x8C817871, 0x6C696662, 0x5E5C5B5B, 0x56585A59, 0x565A5A59, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFDFD, 0xFCFDFDF8, 0xFAF4EDE8, 0xE3DFDCD7, 0xD2CDCECE, 0xCDC6BEBA, 0xB6AFA9A2, 0x9C978E8A, 0x8B8D8B89, 0x8279716A, 0x635F5E57, 0x55515051, 0x50484F4F, 0x4B4B5556, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFDFC, 0xFCFEFEFB, 0xF6F1ECE6, 0xE1DFDCD6, 0xCFC9C7C6, 0xC5BBB2B0, 0xAFACA7A0, 0x9A928B84, 0x82848381, 0x79716B62, 0x5F585451, 0x4A484648, 0x4A49404F, 0x4D524241, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFDFC, 0xFCFFFDFA, 0xF5EFE9E7, 0xE4E0DDD5, 0xCFC7C4C1, 0xBDB6A9A1, 0x9EA09E9C, 0x948F867D, 0x7A7A7877, 0x72696861, 0x5A534C4C, 0x44413E41, 0x46484541, 0x4B494941, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFDFC, 0xFCFEFDF8, 0xF3EFEBE7, 0xE1DEDBD3, 0xCBC5C2BE, 0xB7B0A69D, 0x99959492, 0x8E88807B, 0x716F6D6B, 0x6B66635F, 0x58504743, 0x403B343D, 0x41444246, 0x413D3A36, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFCFC, 0xFBFDFAF9, 0xF5F2EFEA, 0xE2DBD6D0, 0xC9C0BCB8, 0xB4B0A8A0, 0x97918F89, 0x86817973, 0x6B666362, 0x63655E5C, 0x564D423B, 0x3E353238, 0x3D403C44, 0x463B3831, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFEFCFB, 0xFBFBFAF7, 0xF4F5F1EE, 0xE7DED5CB, 0xC6BDBBB5, 0xB1ADA39D, 0x968F8983, 0x7F7A746E, 0x67635A57, 0x585B5A57, 0x52483D36, 0x34322E32, 0x383A3740, 0x4137322C, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFDFBFA, 0xFAF9F9F7, 0xF7F7F6F1, 0xEBE1D8CD, 0xC2BDB7B4, 0xAFAAA49B, 0x938F8681, 0x7A766F6B, 0x645F5650, 0x4D51524F, 0x4A41362F, 0x2C2E292A, 0x32323339, 0x39322D28, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFCFBFA, 0xF9FAFAF9, 0xF7F6F5F2, 0xEDE4D9D1, 0xC6BEB7B3, 0xADA7A29A, 0x938A857D, 0x76706B69, 0x635C554D, 0x45474A49, 0x403B3029, 0x24262524, 0x292B2F2F, 0x312B2825, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDFDFAFA, 0xFAF8F8F7, 0xF6F7F6F2, 0xEDE4DACF, 0xC8C1B9B2, 0xACA59D95, 0x9088827B, 0x746A6461, 0x5E5B544C, 0x433F403F, 0x3A332B27, 0x23222320, 0x22252725, 0x2725211F, 0xFFFFFFFF, 0xFFFFFFFE, 0xFDFCF9F9, 0xF9F6F6F4, 0xF4F4F1F1, 0xEBE2D9D0, 0xCAC2BCB7, 0xADA39D94, 0x8D847F76, 0x7069605A, 0x5959534A, 0x41393636, 0x352C2823, 0x1F1E1E1D, 0x1D1E1F1E, 0x1E211B1D, 0xFFFFFFFF, 0xFFFFFEFD, 0xFDFBF9FA, 0xF8F6F4F3, 0xEFEEEBEA, 0xE6DED3C9, 0xC4BFBBB3, 0xAEA39A8F, 0x877F7670, 0x6B686156, 0x5153514C, 0x3F39312E, 0x2D292520, 0x1C1A171A, 0x181A1A19, 0x191B1617, 0xFFFFFFFF, 0xFFFEFEFD, 0xFCF8F7F6, 0xF5F3EFEC, 0xE7E3E0DB, 0xD6D1C8C0, 0xBEBBB6B1, 0xA8A1968A, 0x81766F68, 0x655F5D56, 0x4D494844, 0x3D362E28, 0x2423211D, 0x19181418, 0x14131415, 0x13161214, 0xFFFFFFFF, 0xFFFEF9FD, 0xFBF7F6F6, 0xF3F2EDE7, 0xE2D9D2CD, 0xC7C1BAB3, 0xB1B0ACA7, 0x9F998F88, 0x7B6F6763, 0x5A58534F, 0x47403D3A, 0x36312A22, 0x1B1C1D19, 0x16121110, 0x100E1110, 0x0D110E10, 0xFFFFFFFF, 0xFFFEFDFC, 0xF8F3F2F2, 0xF0EDEAE5, 0xDDD4CDC3, 0xBEB6B1AA, 0xA7A7A29B, 0x95908A83, 0x786D6057, 0x524F4A47, 0x423A3733, 0x312C2620, 0x1A16181B, 0x16120F0C, 0x0E0B0D0C, 0x080D0A0C, 0xFFFFFFFF, 0xFEFCFEFD, 0xFCF8F1E9, 0xE5E4E4E0, 0xDBD5CEC4, 0xBCB4AAA4, 0x9D9A9691, 0x8D88867C, 0x756A6258, 0x4C46423D, 0x3B35322C, 0x2926241C, 0x19161114, 0x14100D0A, 0x0B09090A, 0x080A080A, 0xFFFFFFFF, 0xFEFDFDFD, 0xFCF7F2E9, 0xE5E0DAD6, 0xD3D2CDC7, 0xBDB3A99F, 0x96918C88, 0x85827D7A, 0x72695E57, 0x4C463A37, 0x312F2C2B, 0x271F1D1A, 0x17140E0F, 0x110E0C09, 0x08080608, 0x08090808, 0xFFFFFFFF, 0xFEFEFDFD, 0xFDF9F4EC, 0xE3DFD9D5, 0xD0CAC8C4, 0xBCB5A99F, 0x958B8680, 0x7B797670, 0x6A675C56, 0x4E463E34, 0x2E2A2726, 0x231D1515, 0x16130F0C, 0x0C0E0B08, 0x06070507, 0x07060706, 0xFFFFFFFF, 0xFDFDFDFD, 0xFBF9F4EE, 0xE8E2DDDB, 0xD5D1CBC4, 0xBEB4ADA3, 0x998F867E, 0x736F6B67, 0x645C5853, 0x4B433C34, 0x2C262521, 0x201B150E, 0x10110E0A, 0x07090908, 0x06050404, 0x05040505, 0xFFFFFFFF, 0xFEFDFDFD, 0xFCF9F7F1, 0xEBE6E2DE, 0xDAD6D3CD, 0xC7BEB3A9, 0x9D94897E, 0x746D6660, 0x5D57534B, 0x47423C32, 0x2B26221F, 0x1A181510, 0x0C0C0C0A, 0x07060606, 0x05040403, 0x03030403, 0xFFFFFFFF, 0xFDFDFDFE, 0xFCF5F0F0, 0xEDE7E3DF, 0xDBD9D4CD, 0xC8C2B9B1, 0xA59B8D80, 0x756C655E, 0x5A534C46, 0x423E3A31, 0x2B24201F, 0x18151110, 0x0C090909, 0x07050506, 0x05030302, 0x03030302, 0xFFFFFFFF, 0xFDFDFDFF, 0xFEFCF9F5, 0xF0E8E4DF, 0xDCD8D5CF, 0xC7C0B7AF, 0xA4988D81, 0x746A625D, 0x58504942, 0x3D393530, 0x2A25201C, 0x1C160F0D, 0x0C090706, 0x06050404, 0x04030203, 0x02020202, 0xFFFFFFFF, 0xFDFDFEFD, 0xFCFBF9F7, 0xF0EBE7E3, 0xDEDCD4CF, 0xC6BDB4AA, 0xA1958B7E, 0x73685F59, 0x534E4840, 0x3933312D, 0x26221F1D, 0x1A15120B, 0x0A080706, 0x05050402, 0x02020201, 0x01020201, 0xFFFFFFFE, 0xFEFEFDFC, 0xFCFAF6F4, 0xF1EAE8E3, 0xE0DCD6CD, 0xC4BAAFA5, 0x9893867D, 0x6F666057, 0x524B4239, 0x35352F27, 0x231E1A18, 0x1917110C, 0x0A070506, 0x04030303, 0x02020201, 0x01010101, 0xFFFFFFFE, 0xFEFEFCF9, 0xF7F3F1EF, 0xEBE6E3E0, 0xDDD8D2C6, 0xBFB6AA9F, 0x958C8178, 0x6B625A50, 0x4D474139, 0x342E2926, 0x221D1713, 0x11110F0D, 0x0A080505, 0x04030203, 0x02010201, 0x01010101, 0xFFFFFFFF, 0xFEFCFBF8, 0xF6F5F2EC, 0xE8E1DED8, 0xD7CFC8C0, 0xB8ADA39B, 0x8E887F79, 0x6B5F524A, 0x46403D37, 0x332D2B24, 0x1E191613, 0x0E0C0B0A, 0x08080605, 0x03020202, 0x02010101, 0x01010101, 0xFFFFFFFF, 0xFFFCF9F3, 0xF3F0EEE6, 0xE1DCDBD5, 0xD3CAC3BA, 0xAEA79D93, 0x8A827A73, 0x695C534B, 0x433E3630, 0x2E2C2822, 0x1D19130F, 0x0D0C0906, 0x06050504, 0x03020202, 0x01010101, 0x01010101, 0xFFFFFFFF, 0xFFFBF7F1, 0xEFEBE5DF, 0xD9D5D1CE, 0xCDC3BDB6, 0xAAA0988F, 0x847D746D, 0x62585148, 0x413C3835, 0x312C231B, 0x1917130E, 0x0C0A0806, 0x06040303, 0x03020201, 0x01010101, 0x01010101, 0xFFFFFFFF, 0xFEF8F0EC, 0xEAE5E1D8, 0xD3CECCC8, 0xC2BCB5AD, 0xA29A928C, 0x847D766F, 0x665D5348, 0x413C3831, 0x2C29241D, 0x19150F0B, 0x0B0A0806, 0x06040303, 0x02020201, 0x01010101, 0x01010101, 0xFFFFFFFF, 0xFFFDF8F6, 0xF1EAE2D9, 0xD5CCC7C1, 0xBEB6B0A7, 0x9F968B84, 0x7F77706C, 0x625B554E, 0x48413A35, 0x2D251D18, 0x14130E0B, 0x0B0B0705, 0x05040303, 0x02020101, 0x01010101, 0x01010101, 0xFFFFFFFF, 0xFEFCFAF9, 0xF5EFE7E0, 0xD6D3CFC7, 0xC1B8B0A9, 0x9F988F86, 0x7D766D66, 0x5D554E47, 0x403B342D, 0x29211E1A, 0x1715100E, 0x0B080605, 0x05040302, 0x01020101, 0x01010101, 0x01010101, 0xFFFFFFFF, 0xFEFDFBF8, 0xF3EBE4DE, 0xD9D6D2CE, 0xC7BFB8B1, 0xA89F978F, 0x847D746C, 0x6257524E, 0x463E342D, 0x25221D19, 0x1511110D, 0x0A080807, 0x06050302, 0x01010101, 0x01010101, 0x01010101, 0xFFFFFFFF, 0xFEFCFBF9, 0xF3EBE4DE, 0xD9D6D5D1, 0xCCC5BCB5, 0xADA59F93, 0x8C857B71, 0x685D564F, 0x493E352E, 0x2A24231E, 0x1C15120E, 0x0C0A0907, 0x05040202, 0x01010101, 0x01010101, 0x01010101

glabel D_8014E500
.word 0xFF8000A9, 0x00000000, 0x00000000, 0xFFFFFF00, 0xFF34FFBB, 0x00000000, 0x00000000, 0xFFFFFF00, 0x0000FF24, 0x00000000, 0x00000000, 0xFFFFFF00, 0x008000A9, 0x00000000, 0x00000000, 0xFFFFFF00, 0xFE88007B, 0x00000000, 0x00000000, 0xFFFFFF00, 0x0000018B, 0x00000000, 0x00000000, 0xFFFFFF00, 0xFF17FEC0, 0x00000000, 0x00000000, 0xFFFFFF00, 0x00CCFFBB, 0x00000000, 0x00000000, 0xFFFFFF00, 0x00E8FEC0, 0x00000000, 0x00000000, 0xFFFFFF00, 0x0178007A, 0x00000000, 0x00000000, 0xFFFFFF00

glabel D_8014E5A0
.word 0xD7000002, 0xFFFFFFFF, 0xE7000000, 0x00000000, 0xE3000A01, 0x00000000, 0xE3000D01, 0x00000000, 0xE3000F00, 0x00000000, 0xE3001201, 0x00003000, 0xE3001402, 0x00000C00, 0xE3000C00, 0x00000000, 0xE3001801, 0x00000000, 0xE3001A01, 0x00000000, 0xFCFFE7FF, 0xFFCD92C9, 0xE200001C, 0x00504340, 0xD9000000, 0x00000000, 0xD9FFFFFF, 0x00200004, 0xDF000000, 0x00000000

glabel D_8014E618
.word 0xDE000000, D_8014E5A0, 0xE3001001, 0x00000000, 0xFD88000F, D_8014D300, 0xF5880400, 0x070D4350, 0xE6000000, 0x00000000, 0xF4000000, 0x0703E07C, 0xE7000000, 0x00000000, 0xF5800400, 0x000D4350, 0xF2000000, 0x0007C07C, 0xF2000000, 0x000FC0FC, 0xDF000000, 0x00000000

glabel D_8014E670
.word 0xDE000000, D_8014E5A0, 0xE3001001, 0x00000000, 0xFD88001F, D_8014CB00, 0xF5880800, 0x07098260, 0xE6000000, 0x00000000, 0xF4000000, 0x0707E0FC, 0xE7000000, 0x00000000, 0xF5800800, 0x00098260, 0xF2000000, 0x000FC0FC, 0xDF000000, 0x00000000

glabel D_8014E6C0
.word 0xDE000000, D_8014E5A0, 0xE3001001, 0x00000000, 0xFD88000F, D_8014C700, 0xF5880400, 0x07098350, 0xE6000000, 0x00000000, 0xF4000000, 0x0703E0FC, 0xE7000000, 0x00000000, 0xF5800400, 0x00098350, 0xF2000000, 0x0007C0FC, 0xF2000000, 0x000FC0FC, 0xDF000000, 0x00000000

glabel D_8014E718
.word 0xDE000000, D_8014E5A0, 0xE3001001, 0x00000000, 0xFD88003F, D_8014D500, 0xF5881000, 0x070D8360, 0xE6000000, 0x00000000, 0xF4000000, 0x070FC0FC, 0xE7000000, 0x00000000, 0xF5881000, 0x000D8360, 0xF2000000, 0x000FC0FC, 0xF2000000, 0x001FC1FC, 0xDF000000, 0x00000000

glabel D_8014E770
.word 0x000000F0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x014000F0, 0x00000000, 0x28000000, 0xFFFFFFFF, 0x000000DA, 0x00000000, 0x000002C0, 0xFFFFFFFF, 0x014000DA, 0x00000000, 0x280002C0, 0xFFFFFFFF, 0x000000C4, 0x00000000, 0x00000580, 0xFFFFFFFF, 0x014000C4, 0x00000000, 0x28000580, 0xFFFFFFFF, 0x000000AE, 0x00000000, 0x00000840, 0xFFFFFFFF, 0x014000AE, 0x00000000, 0x28000840, 0xFFFFFFFF, 0x00000098, 0x00000000, 0x00000B00, 0xFFFFFFFF, 0x01400098, 0x00000000, 0x28000B00, 0xFFFFFFFF, 0x00000082, 0x00000000, 0x00000DC0, 0xFFFFFFFF, 0x01400082, 0x00000000, 0x28000DC0, 0xFFFFFFFF, 0x0000006C, 0x00000000, 0x00001080, 0xFFFFFFFF, 0x0140006C, 0x00000000, 0x28001080, 0xFFFFFFFF, 0x00000056, 0x00000000, 0x00001340, 0xFFFFFFFF, 0x01400056, 0x00000000, 0x28001340, 0xFFFFFFFF, 0x00000040, 0x00000000, 0x00001600, 0xFFFFFFFF, 0x01400040, 0x00000000, 0x28001600, 0xFFFFFFFF, 0x0000002A, 0x00000000, 0x000018C0, 0xFFFFFFFF, 0x0140002A, 0x00000000, 0x280018C0, 0xFFFFFFFF, 0x00000014, 0x00000000, 0x00001B80, 0xFFFFFFFF, 0x01400014, 0x00000000, 0x28001B80, 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00001E00, 0xFFFFFFFF, 0x01400000, 0x00000000, 0x28001E00, 0xFFFFFFFF

glabel D_8014E8F0
.word 0xD7000000, 0x80008000, 0xE7000000, 0x00000000, 0xE3000A01, 0x00000000, 0xE2001D00, 0x00000004, 0xEE000000, 0x00000000, 0xE200001C, 0x50504360, 0xFCFFE7FF, 0xFFCE7F3F, 0xE3000C00, 0x00080000, 0xE3000D01, 0x00000000, 0xE3000F00, 0x00000000, 0xE3001001, 0x00000000, 0xE3001201, 0x00002000, 0xE3001402, 0x00000C00, 0xD9DDF9FF, 0x00000000, 0xD9FFFFFF, 0x00000405, 0x0100A014, D_8014E500, 0x06000204, 0x00060004, 0x06000802, 0x00060A00, 0x06020C04, 0x000E0604, 0x06100E04, 0x000E1206, 0xE7000000, 0x00000000, 0xE2001D00, 0x00000000, 0xDF000000, 0x00000000

glabel D_8014E9A8
.word 0xE7000000, 0x00000000, 0xE2001D00, 0x00000004, 0xEE000000, 0x00140000, 0xE200001C, 0x00504A50, 0xFCFFE7FF, 0xFFCE7F3F, 0xD9DDF9FF, 0x00000000, 0xD9FFFFFF, 0x00000005, 0xE3001801, 0x00000000, 0xE3000A01, 0x00000000, 0xE3001201, 0x00002000, 0xE3000C00, 0x00000000, 0xE3000F00, 0x00000000, 0xE3001001, 0x00000000, 0xE3000D01, 0x00000000, 0xE3001402, 0x00000C00, 0xF65003C0, 0x00000000, 0xE3001801, 0x000000C0, 0xE7000000, 0x00000000, 0xE2001D00, 0x00000000, 0xDF000000, 0x00000000

glabel D_8014EA48
.word 0xE2001D00, 0x00000004, 0xEE000000, 0x00140000, 0xE200001C, 0x00552210, 0xD9FDF9FF, 0x00000000, 0xD9DFFFFF, 0x00000000, 0xD7000002, 0x80008000, 0xE7000000, 0x00000000, 0xFC121824, 0xFF33FFFF, 0xE3000C00, 0x00080000, 0xE3000D01, 0x00000000, 0xE3000F00, 0x00000000, 0xE3001001, 0x00000000, 0xE3001201, 0x00002000, 0xE3001402, 0x00000C00, 0x01018030, D_8014E770, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF4000000, 0x0727C02C, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF2000000, 0x0027C02C, 0x06000402, 0x00060204, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF400002C, 0x0727C058, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF200002C, 0x0027C058, 0x06040806, 0x000A0608, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF4000058, 0x0727C084, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF2000058, 0x0027C084, 0x06080C0A, 0x000E0A0C, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF4000084, 0x0727C0B0, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF2000084, 0x0027C0B0, 0x060C100E, 0x00120E10, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF40000B0, 0x0727C0DC, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF20000B0, 0x0027C0DC, 0x06101412, 0x00161214, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF40000DC, 0x0727C108, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF20000DC, 0x0027C108, 0x06141816, 0x001A1618, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF4000108, 0x0727C134, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF2000108, 0x0027C134, 0x06181C1A, 0x001E1A1C, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF4000134, 0x0727C160, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF2000134, 0x0027C160, 0x061C201E, 0x00221E20, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF4000160, 0x0727C18C, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF2000160, 0x0027C18C, 0x06202422, 0x00262224, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF400018C, 0x0727C1B8, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF200018C, 0x0027C1B8, 0x06242826, 0x002A2628, 0xFD10009F, 0x80156910, 0xF5105000, 0x07090280, 0xE6000000, 0x00000000, 0xF40001B8, 0x0727C1DC, 0xE7000000, 0x00000000, 0xF5105000, 0x00090280, 0xF20001B8, 0x0027C1DC, 0x06282C2A, 0x002E2A2C, 0xE7000000, 0x00000000, 0xE2001D00, 0x00000000, 0xDF000000, 0x00000000

glabel D_8014ED98
.word 0x00800080, 0x01FF0000, 0x00800080, 0x01FF0000

glabel D_8014EDA8
.word 0xFFF0FFF0, 0x00000000, 0x00000000, 0x000000FF, 0x0010FFF0, 0x00000000, 0x10000000, 0x000000FF, 0x00100010, 0x00000000, 0x10001000, 0x000000FF, 0xFFF00010, 0x00000000, 0x00001000, 0x000000FF

glabel D_8014EDE8
.word 0x01004008, D_8014EDA8, 0x06000204, 0x00000406, 0xE7000000, 0x00000000, 0xDF000000, 0x00000000, 0x00000000, 0x00000000
