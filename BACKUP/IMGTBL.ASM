	.FILE "imgtbl.asm"
	.OPTION B,D,L,T

	.include imgtbl.glo
	.DATA
	.even
TEST1:
	.word	6,7,3,3
	.long	02000000H
	.long	KRACK
TEST2:
	.word	8,8,4,3
	.long	020001C0H
TEST3:
	.word	14,13,7,7
	.long	020003C0H
TEST4:
	.word	16,14,7,5
	.long	02000A40H
TEST5:
	.word	22,20,11,10
	.long	02001140H
TEST6:
	.word	22,21,11,10
	.long	02002040H
TEST7:
	.word	23,26,11,12
	.long	02003000H
ARPRT9:
	.word	30,61,0,0
	.long	02666920H
	.long	ARPRTPL
JEEP:
	.word	79,114,40,-7
	.long	0266A620H
	.long	JEEPP
JEEPDRVRS:
	.word	51,17,25,-53
	.long	0267C320H
	.long	JEEPP
JSHAD:
	.word	21,90,-37,-30
	.long	0267DEC0H
	.long	JEEPP
JEEP2:
	.word	79,101,40,-20
	.long	02682240H
	.long	JEEPP
JSHAD2:
	.word	21,90,-37,-30
	.long	02691EC0H
	.long	JEEPP
JEEP4:
	.word	129,76,57,-21
	.long	02696240H
	.long	JEEPP
GBUL12:
	.word	9,14,4,6
	.long	026A9BC0H
	.long	FING1
GBUL115:
	.word	9,12,4,5
	.long	026AA100H
	.long	FING1
GBUL11:
	.word	11,11,5,5
	.long	026AA580H
	.long	FING1
GBUL10:
	.word	13,10,6,5
	.long	026AA9A0H
	.long	FING1
GBUL9:
	.word	15,7,7,3
	.long	026AAEA0H
	.long	FING1
GBUL85:
	.word	13,10,6,5
	.long	026AB220H
	.long	FING1
GBUL8:
	.word	11,11,5,5
	.long	026AB720H
	.long	FING1
GBUL7:
	.word	9,12,4,6
	.long	026ABB40H
	.long	FING1
GBUL6:
	.word	9,14,4,8
	.long	026ABFC0H
	.long	FING1
PTGNR1:
	.word	30,61,15,-9
	.long	026AC500H
	.long	FING1
GNNRBUL12:
	.word	3,14,1,7
	.long	026B0200H
	.long	FING1
GNNRBUL115:
	.word	7,12,3,6
	.long	026B03C0H
	.long	FING1
GNNRBUL11:
	.word	10,9,5,4
	.long	026B06C0H
	.long	FING1
GNNRBUL10:
	.word	14,8,8,4
	.long	026B0A20H
	.long	FING1
GNNRBUL9:
	.word	15,3,8,1
	.long	026B0E20H
	.long	FING1
GNNRBUL85:
	.word	14,8,8,3
	.long	026B0FA0H
	.long	FING1
GNNRBUL8:
	.word	10,9,5,4
	.long	026B13A0H
	.long	FING1
GNNRBUL7:
	.word	7,12,4,4
	.long	026B1700H
	.long	FING1
GNNRBUL6:
	.word	3,14,1,6
	.long	026B1A00H
	.long	FING1
PTGNR2:
	.word	36,60,19,-8
	.long	026B1BC0H
PTGNR3:
	.word	49,54,29,-7
	.long	026B5F40H
PTGNR4:
	.word	60,42,36,-11
	.long	026BB700H
PTGNR5:
	.word	70,39,39,-22
	.long	026C05C0H
PTGNR6:
	.word	58,50,31,-15
	.long	026C5D80H
PTGNR7:
	.word	50,55,23,-10
	.long	026CBB40H
PTGNR8:
	.word	39,61,15,-6
	.long	026D14A0H
PTGNR9:
	.word	29,63,15,-5
	.long	026D60E0H
CLIFF2A:
	.word	57,48,0,0
	.long	026D9FE0H
	.long	DESRTPL
CLIFF3A:
	.word	60,55,0,0
	.long	026DF9E0H
	.long	DESRTPL
PITDR1:
	.word	33,26,0,0
	.long	026E6100H
PITDR2:
	.word	33,26,0,0
	.long	026E7E40H
UNDRPT1:
	.word	52,40,0,0
	.long	026E9B80H
UNDRPT2:
	.word	31,71,0,0
	.long	026EDC80H
UNDRPT3:
	.word	47,30,0,0
	.long	026F2380H
GUNPIT2:
	.word	75,89,0,0
	.long	026F5080H
VGUNPIT2:
	.word	65,63,0,0
	.long	027023E0H
UNDRPT1A:
	.word	52,40,0,0
	.long	0270A9C0H
UNDRPT2A:
	.word	31,71,0,0
	.long	0270EAC0H
UNDRPT3A:
	.word	47,30,0,0
	.long	027131C0H
WARP:
	.word	142,53,0,0
	.long	02715EC0H
	.long	WARPP
WTIMER0:
	.word	5,7,0,0
	.long	02724D40H
	.long	WARPP
ARW2:
	.word	9,5,0,0
	.long	02724F00H
	.long	WARPP
SPIN1:
	.word	31,28,0,0
	.long	027250E0H
	.long	WARPP
WTIMER1:
	.word	5,7,0,0
	.long	02726CE0H
	.long	WARPP
OTHERP:
	.word	5,7,0,0
	.long	02726CE0H
	.long	WARPP2
WTIMER2:
	.word	5,7,0,0
	.long	02726EA0H
WTIMER3:
	.word	5,7,0,0
	.long	02727060H
WTIMER4:
	.word	5,7,0,0
	.long	02727220H
WTIMER5:
	.word	5,7,0,0
	.long	027273E0H
WTIMER6:
	.word	5,7,0,0
	.long	027275A0H
WTIMER7:
	.word	5,7,0,0
	.long	02727760H
WTIMER8:
	.word	5,7,0,0
	.long	02727920H
WTIMER9:
	.word	5,7,0,0
	.long	02727AE0H
SPIN2:
	.word	31,28,0,0
	.long	02727CA0H
SPIN3:
	.word	31,28,0,0
	.long	027298A0H
SPIN4:
	.word	31,28,0,0
	.long	0272B4A0H
SPIN5:
	.word	31,28,0,0
	.long	0272D0A0H
SPIN6:
	.word	31,28,0,0
	.long	0272ECA0H
SPIN7:
	.word	31,28,0,0
	.long	027308A0H
SPIN8:
	.word	31,28,0,0
	.long	027324A0H
OGUNBUL:
	.word	10,9,5,4
	.long	0295CB20H
	.long	AHMEDP
EXPL1:
	.word	8,8,4,3
	.long	0295CE80H
	.long	EORNGPAL
EXPL2:
	.word	20,20,10,9
	.long	0295D080H
EXPL3:
	.word	30,28,15,13
	.long	0295DD00H
EXPL4:
	.word	35,31,18,15
	.long	0295F900H
EXPL5:
	.word	43,41,20,20
	.long	02961BE0H
EXPL6:
	.word	50,55,24,25
	.long	02965440H
EXPL7:
	.word	62,56,31,28
	.long	0296ADA0H
EXPL8:
	.word	69,62,35,30
	.long	02971DA0H
EXPL9:
	.word	67,57,34,27
	.long	0297A920H
EXPL10:
	.word	55,46,29,22
	.long	02982240H
EXPL11:
	.word	54,47,27,22
	.long	029872C0H
EXPL12:
	.word	54,47,27,24
	.long	0298C500H
MTNK10:
	.word	50,38,20,8
	.long	02991740H
	.long	MTNKP
RTNK:
	.word	50,38,20,8
	.long	02991740H
	.long	MTNKP2
ANT:
	.word	5,29,0,0
	.long	02995500H
	.long	MTNKP
MTNK11:
	.word	49,36,22,11
	.long	02995C40H
	.long	MTNKP
MTNK12:
	.word	37,36,14,12
	.long	029996C0H
	.long	MTNKP
MTNK12B:
	.word	37,36,14,12
	.long	0299C3C0H
	.long	MTNKP
MTNK6:
	.word	37,36,15,8
	.long	0299F0C0H
	.long	MTNKP
MTNK6B:
	.word	37,36,15,8
	.long	029A1DC0H
	.long	MTNKP
MTNK7:
	.word	45,37,19,7
	.long	029A4AC0H
	.long	MTNKP
MTNK8:
	.word	45,36,21,8
	.long	029A8240H
	.long	MTNKP
MTNK9:
	.word	41,34,18,8
	.long	029AB840H
	.long	MTNKP
MTNK9B:
	.word	41,34,18,8
	.long	029AE700H
	.long	MTNKP
BTR60:
	.word	182,98,64,-35
	.long	029B15C0H
	.long	BTRP
TURT12:
	.word	29,66,14,-7
	.long	029D4940H
	.long	BTRP
BTIRE1:
	.word	37,36,18,26
	.long	029D8B40H
	.long	BTRP
SCUD1:
	.word	228,106,87,-29
	.long	029DB840H
	.long	SCUDP
MISSLE:
	.word	201,56,48,-10
	.long	02A0AB80H
	.long	SCUDP
TURT9:
	.word	59,33,44,-40
	.long	02A21080H
	.long	BTRP
SCUD2:
	.word	19,12,0,-17
	.long	02A24E60H
	.long	SCUDP
BTRECK:
	.word	182,98,64,-35
	.long	02A255E0H
BTIRE2:
	.word	37,36,18,26
	.long	02A48960H
TURT12A:
	.word	29,47,14,-26
	.long	02A4B660H
TURT11:
	.word	37,60,22,-13
	.long	02A4E560H
TURT11A:
	.word	29,44,13,-29
	.long	02A53060H
TURT10:
	.word	48,54,33,-19
	.long	02A55C60H
TURT10A:
	.word	33,39,18,-34
	.long	02A5AD60H
TURT9A:
	.word	44,33,29,-40
	.long	02A5D940H
TURT9B:
	.word	54,43,39,-30
	.long	02A606A0H
TURT9BA:
	.word	38,36,23,-37
	.long	02A651E0H
TURT8:
	.word	57,36,42,-40
	.long	02A67EE0H
TURT8A:
	.word	41,33,26,-40
	.long	02A6C260H
TURT7:
	.word	49,49,34,-40
	.long	02A6EFC0H
TURT7A:
	.word	37,37,22,-40
	.long	02A73F60H
TURT6:
	.word	29,62,14,-40
	.long	02A76DA0H
TURT6A:
	.word	29,48,14,-40
	.long	02A7ABA0H
TURT6B:
	.word	37,58,22,-40
	.long	02A7DBA0H
TURT6BA:
	.word	30,44,15,-40
	.long	02A82420H
DOC1:
	.word	18,37,8,-9
	.long	02A85020H
	.long	PPLP
BM1:
	.word	5,11,2,-30
	.long	02A86740H
	.long	PPLP
NSDR1:
	.word	19,38,9,-7
	.long	02A86A00H
	.long	PPLP
BGRL1:
	.word	15,38,8,-11
	.long	02A881C0H
	.long	PPLP
GN1:
	.word	17,38,9,-11
	.long	02A894C0H
	.long	PPLP
SLUD1:
	.word	12,8,4,3
	.long	02A8AC80H
	.long	PPLP
GRL1:
	.word	12,34,6,-5
	.long	02A8AF80H
	.long	PPLP
NSDRRUN1:
	.word	15,32,9,-7
	.long	02A8BC40H
	.long	PPLP
PILOT1:
	.word	16,33,0,0
	.long	02A8CC40H
	.long	PPLP
BABE1:
	.word	25,31,12,4
	.long	02A8DCC0H
	.long	PPLP
REPO1:
	.word	28,40,13,-12
	.long	02A8F7E0H
	.long	PPLP
SHCAKLDD1:
	.word	30,42,13,-12
	.long	02A91AE0H
	.long	PPLP
SHCAKLDD2:
	.word	30,43,13,-11
	.long	02A944E0H
	.long	PPLP
SHCAKLDD3:
	.word	30,45,13,-9
	.long	02A96FE0H
	.long	PPLP
SHCAKLDE1:
	.word	23,41,11,-11
	.long	02A99CE0H
	.long	PPLP
SHCAKLDF1:
	.word	24,40,12,-10
	.long	02A9BBA0H
	.long	PPLP
SHACKX1:
	.word	24,39,8,-12
	.long	02A9D9A0H
	.long	PPLP
SHACKX2:
	.word	29,39,13,-12
	.long	02A9F6E0H
	.long	PPLP
SHACKX3:
	.word	26,39,10,-12
	.long	02AA1DE0H
	.long	PPLP
SECBON:
	.word	41,18,0,0
	.long	02AA4000H
	.long	PPLP
SHACKY1:
	.word	25,38,9,-13
	.long	02AA58C0H
	.long	PPLP
SHACKY2:
	.word	38,38,17,-13
	.long	02AA7A00H
	.long	PPLP
SHACKY3:
	.word	28,41,12,-10
	.long	02AAA980H
	.long	PPLP
BIGBONE:
	.word	66,25,38,17
	.long	02AACD60H
	.long	PPLP
PTS1:
	.word	36,19,19,-14
	.long	02AB0280H
PTS2:
	.word	36,19,19,-14
	.long	02AB17E0H
PTS3:
	.word	36,19,19,-14
	.long	02AB2D40H
PTS4:
	.word	36,19,19,-14
	.long	02AB42A0H
PTS5:
	.word	36,19,19,-14
	.long	02AB5800H
PTS6:
	.word	36,19,19,-14
	.long	02AB6D60H
PTS7:
	.word	36,19,19,-14
	.long	02AB82C0H
PTS8:
	.word	36,19,19,-14
	.long	02AB9820H
PTS9:
	.word	36,19,19,-14
	.long	02ABAD80H
PTS10:
	.word	36,19,19,-14
	.long	02ABC2E0H
BABE2:
	.word	26,32,12,5
	.long	02ABD840H
BABE3:
	.word	23,32,11,4
	.long	02ABF440H
BABE4:
	.word	25,31,12,4
	.long	02AC0C40H
DOC2:
	.word	23,37,11,-9
	.long	02AC2760H
DOC3:
	.word	24,37,12,-9
	.long	02AC4320H
DOC4:
	.word	24,37,12,-9
	.long	02AC5EE0H
BM2:
	.word	11,22,5,-25
	.long	02AC7AA0H
BM3:
	.word	15,29,7,-20
	.long	02AC82E0H
BM4:
	.word	19,34,9,-17
	.long	02AC9160H
BM5:
	.word	19,46,9,-11
	.long	02ACA6A0H
BM6:
	.word	19,46,9,-10
	.long	02ACC360H
BM7:
	.word	19,46,9,-10
	.long	02ACE020H
BM8:
	.word	19,46,9,-10
	.long	02ACFCE0H
BM9:
	.word	19,46,9,-10
	.long	02AD19A0H
BM10:
	.word	17,46,9,-10
	.long	02AD3660H
NSDR2:
	.word	20,38,10,-7
	.long	02AD5320H
NSDR3:
	.word	20,37,10,-8
	.long	02AD6AE0H
NSDR4:
	.word	19,36,9,-8
	.long	02AD8200H
NSDR8:
	.word	19,38,9,-7
	.long	02AD9880H
NSDR9:
	.word	20,38,10,-7
	.long	02ADB040H
SWAVE1:
	.word	19,42,9,-3
	.long	02ADC800H
SWAVE2:
	.word	19,40,9,-5
	.long	02ADE240H
SWAVE3:
	.word	24,38,12,-7
	.long	02ADFB40H
BGRL2:
	.word	24,36,12,-13
	.long	02AE17C0H
BGRL3:
	.word	15,37,8,-12
	.long	02AE32C0H
GN2:
	.word	18,38,9,-11
	.long	02AE4540H
GN3:
	.word	18,38,9,-11
	.long	02AE5D00H
GN4:
	.word	18,38,9,-11
	.long	02AE74C0H
GN5:
	.word	18,38,9,-11
	.long	02AE8C80H
GN6:
	.word	18,38,9,-11
	.long	02AEA440H
SLUD2:
	.word	9,11,3,4
	.long	02AEBC00H
SLUD3:
	.word	12,10,5,5
	.long	02AEC020H
SLUD4:
	.word	15,9,8,4
	.long	02AEC3E0H
SLUD5:
	.word	13,11,4,6
	.long	02AEC860H
SLUD6:
	.word	11,8,4,3
	.long	02AECDE0H
GRL2:
	.word	13,34,6,-5
	.long	02AED0E0H
GRL3:
	.word	13,33,5,-6
	.long	02AEE1E0H
GRL4:
	.word	12,33,4,-6
	.long	02AEF260H
SLMD1:
	.word	8,7,3,2
	.long	02AEFEC0H
SLMD2:
	.word	11,14,5,4
	.long	02AF0080H
SLMD3:
	.word	16,23,7,6
	.long	02AF05C0H
SLMD4:
	.word	17,27,7,6
	.long	02AF1140H
NSDRRUN2:
	.word	18,32,9,-7
	.long	02AF2220H
NSDRRUN3:
	.word	17,32,8,-7
	.long	02AF3620H
NSDRRUN4:
	.word	16,33,8,-7
	.long	02AF4A20H
PILOT2:
	.word	16,32,0,0
	.long	02AF5AA0H
PILOT3:
	.word	16,32,0,0
	.long	02AF6AA0H
PILOT4:
	.word	16,33,0,0
	.long	02AF7AA0H
SCHAKLDA1:
	.word	25,43,9,-8
	.long	02AF8B20H
SCHAKLDA2:
	.word	27,40,11,-11
	.long	02AFB0C0H
SCHAKLDA3:
	.word	25,38,9,-13
	.long	02AFD3C0H
SCHAKLDB1:
	.word	27,40,11,-11
	.long	02AFF500H
SCHAKLDB2:
	.word	24,40,8,-11
	.long	02B01800H
SCHAKLDB3:
	.word	25,40,9,-11
	.long	02B03600H
SCHAKLDB4:
	.word	24,40,8,-11
	.long	02B05900H
SHCAKLDC1:
	.word	25,41,9,-14
	.long	02B07700H
SHCAKLDC2:
	.word	25,41,9,-14
	.long	02B09AE0H
SHCAKLDC3:
	.word	29,41,13,-14
	.long	02B0BEC0H
SHCAKLDC4:
	.word	23,41,7,-14
	.long	02B0E7C0H
BLLN1:
	.word	21,29,0,0
	.long	02B10680H
	.long	BLLNP5
BLLN2:
	.word	22,29,0,0
	.long	02B11C40H
	.long	BLLNP5
BLLN3:
	.word	23,21,0,0
	.long	02B13200H
	.long	BLLNP5
SQUAD:
	.word	115,23,0,0
	.long	02B141C0H
	.long	BLLNP3
GSCOTT:
	.word	65,25,0,0
	.long	02B19520H
	.long	BLLNP5
BOON1:
	.word	73,59,0,0
	.long	02B1CA40H
	.long	BLLNP5
BOON2:
	.word	33,15,0,0
	.long	02B25660H
	.long	BLLNP5
BOON2B:
	.word	23,35,0,0
	.long	02B26740H
	.long	BLLNP5
DARM1:
	.word	134,60,107,-20
	.long	02B2C020H
	.long	DHNDP
THUMB:
	.word	41,29,-43,10
	.long	02B3BF20H
	.long	DHNDP
DHND1:
	.word	122,60,-27,-19
	.long	02B3E700H
	.long	DHNDP
DHND2:
	.word	86,61,-27,-19
	.long	02B4CF80H
	.long	DHNDP
CENS1:
	.word	56,71,1,0
	.long	02B57740H
	.long	CENSP
CENS2:
	.word	50,79,0,0
	.long	02B5F380H
	.long	CENSP
CENS3:
	.word	45,77,1,1
	.long	02B673E0H
	.long	CENSP
CENS4:
	.word	71,78,0,0
	.long	02B6E760H
	.long	CENSP
TARM1:
	.word	27,34,-30,-70
	.long	02B796E0H
TARM2:
	.word	32,34,-30,-71
	.long	02B7B4A0H
TARM3:
	.word	38,35,-30,-71
	.long	02B7D6A0H
GH1:
	.word	36,43,18,-4
	.long	02B80260H
GH2:
	.word	38,42,19,-5
	.long	02B832C0H
GH3:
	.word	39,43,20,-4
	.long	02B86740H
GH3A:
	.word	39,43,20,-4
	.long	02B89D00H
GLARM1:
	.word	27,94,35,-59
	.long	02B8D2C0H
GLARM2:
	.word	34,85,41,-59
	.long	02B92500H
GLARM3:
	.word	41,65,49,-59
	.long	02B984A0H
GRARM1:
	.word	14,88,-30,-63
	.long	02B9DE00H
GRARM2:
	.word	19,72,-30,-62
	.long	02BA0A00H
GRARM3:
	.word	25,70,-30,-52
	.long	02BA3700H
PEYE1:
	.word	56,18,29,-47
	.long	02BA7440H
PEYE2:
	.word	56,18,29,-47
	.long	02BA93C0H
PEYE3:
	.word	56,18,29,-47
	.long	02BAB340H
PEYE4:
	.word	56,20,29,-45
	.long	02BAD2C0H
PMTH1:
	.word	22,16,12,-86
	.long	02BAF5C0H
PMTH2:
	.word	22,14,12,-86
	.long	02BB01C0H
PMTH3:
	.word	22,13,12,-86
	.long	02BB0C40H
PMTH4:
	.word	20,21,11,-85
	.long	02BB1600H
GRARM4:
	.word	18,56,-30,-61
	.long	02BB2320H
GRARM5:
	.word	30,49,-18,-40
	.long	02BB4620H
GRARM6:
	.word	37,77,-10,-11
	.long	02BB7720H
GLARM4:
	.word	40,53,48,-58
	.long	02BBD760H
GLARM5:
	.word	57,48,62,-47
	.long	02BC19A0H
GLARM6:
	.word	64,82,57,-13
	.long	02BC73A0H
VBOX1:
	.word	16,1,8,-27
	.long	02BD17A0H
	.long	BOXP
HBOX1:
	.word	52,37,27,-9
	.long	02BD1820H
	.long	BOXP
VBOX6:
	.word	52,37,27,-9
	.long	02BD5440H
VBOX2:
	.word	22,7,11,-24
	.long	02BD9060H
VBOX3:
	.word	27,13,14,-21
	.long	02BD95A0H
VBOX4:
	.word	34,19,18,-18
	.long	02BDA100H
VBOX5:
	.word	40,25,21,-15
	.long	02BDB660H
HBOX6:
	.word	52,37,27,-9
	.long	02BDD5A0H
HBOX2:
	.word	52,37,27,-9
	.long	02BE11C0H
HBOX3:
	.word	52,37,27,-9
	.long	02BE4DE0H
HBOX4:
	.word	52,37,27,-9
	.long	02BE8A00H
HBOX5:
	.word	52,37,27,-9
	.long	02BEC620H
PODA:
	.word	11,11,5,5
	.long	02BF0240H
	.long	GOOBP
FLG1:
	.word	35,39,0,0
	.long	02BF0660H
	.long	FRTCLS
GOOBR:
	.word	16,58,0,0
	.long	02BF3240H
	.long	GOOBP
GOOBB:
	.word	68,14,0,0
	.long	02BF4F40H
	.long	GOOBP
RCTRPC1:
	.word	33,44,0,0
	.long	02BF6D00H
	.long	REACTR
RCTRPC2:
	.word	25,52,0,0
	.long	02BF9E80H
	.long	REACTR
GOOB1:
	.word	6,5,3,2
	.long	02BFCC00H
	.long	GOOBP
WSTPOOL:
	.word	58,44,0,0
	.long	02BFCD40H
	.long	GOOBP
RCTR2:
	.word	104,114,0,0
	.long	02C01FC0H
	.long	REACTR
OPC1:
	.word	8,4,3,1
	.long	02C19240H
	.long	REACTR
FLAG1:
	.word	36,39,0,0
	.long	02C19340H
	.long	GOOBP
GOOB2:
	.word	8,7,4,3
	.long	02C1BF20H
GOOB3:
	.word	10,9,5,4
	.long	02C1C0E0H
GOOB4:
	.word	12,12,6,6
	.long	02C1C440H
GOOB5:
	.word	14,14,7,6
	.long	02C1C8C0H
GOOB6:
	.word	19,19,9,9
	.long	02C1CFC0H
GOOB7:
	.word	18,20,9,9
	.long	02C1DBA0H
GOOB8:
	.word	16,18,9,9
	.long	02C1E820H
GOOB9:
	.word	22,18,11,8
	.long	02C1F120H
GOOB10:
	.word	27,23,13,9
	.long	02C1FEA0H
GSLMD1:
	.word	8,8,3,4
	.long	02C212C0H
GSLMD2:
	.word	11,15,5,5
	.long	02C214C0H
GSLMD3:
	.word	16,23,8,7
	.long	02C21A60H
GSLMD4:
	.word	17,27,8,7
	.long	02C225E0H
GBLOB1:
	.word	10,9,5,4
	.long	02C236C0H
GBLOB2:
	.word	13,14,6,6
	.long	02C23A20H
GBLOB3:
	.word	19,16,9,7
	.long	02C24120H
GBLOB4:
	.word	18,17,9,8
	.long	02C24B20H
GPOOL1:
	.word	42,44,0,0
	.long	02C255C0H
GPOOL4:
	.word	42,39,0,0
	.long	02C29240H
GPOOL5:
	.word	40,41,0,0
	.long	02C2C7E0H
FLG2:
	.word	37,39,0,0
	.long	02C2FB20H
FLG3:
	.word	36,39,0,0
	.long	02C32BE0H
FLG4:
	.word	37,39,0,0
	.long	02C357C0H
FLG5:
	.word	37,39,0,0
	.long	02C38880H
BROKN:
	.word	39,59,0,0
	.long	02C3B940H
BROKN2:
	.word	32,38,0,0
	.long	02C40300H
CRT3:
	.word	32,31,0,0
	.long	02C42900H
OPC2:
	.word	9,6,4,2
	.long	02C44800H
OPC3:
	.word	13,10,5,4
	.long	02C44A40H
OPC4:
	.word	11,15,4,7
	.long	02C44F40H
OPC5:
	.word	12,19,5,9
	.long	02C454E0H
OPC6:
	.word	12,25,6,12
	.long	02C45C00H
OPC7:
	.word	11,15,6,7
	.long	02C46560H
OPC8:
	.word	11,7,5,3
	.long	02C46B00H
OPC9:
	.word	9,4,4,1
	.long	02C46DA0H
FLAG2:
	.word	38,39,0,0
	.long	02C46F20H
FLAG3:
	.word	37,39,0,0
	.long	02C49FE0H
FLAG4:
	.word	38,39,0,0
	.long	02C4D0A0H
FLAG5:
	.word	38,39,0,0
	.long	02C50160H
CRT1:
	.word	35,42,0,0
	.long	02C53220H
BRRL2:
	.word	17,28,0,0
	.long	02C56160H
LTRBOX1:
	.word	24,21,0,0
	.long	02C572E0H
	.long	LBOXP1
LTRBOX2:
	.word	24,21,0,0
	.long	02C572E0H
	.long	LBOXP2
DET1:
	.word	12,12,0,0
	.long	02C582A0H
	.long	STUFFP
BMBLETS:
	.word	17,19,0,0
	.long	02C58720H
	.long	STUFFP
MEP1:
	.word	65,18,0,0
	.long	02C59300H
	.long	STUFFP
MEP2:
	.word	64,18,0,0
	.long	02C5B940H
	.long	STUFFP
RACKBLK:
	.word	46,46,0,0
	.long	02C5DD40H
	.long	STUFFP
GEMS1:
	.word	39,32,2,-6
	.long	02C62240H
	.long	STUFFP
LFTARRW:
	.word	28,31,0,0
	.long	02C64A40H
	.long	STUFFP
UPARRW:
	.word	27,28,0,0
	.long	02C66560H
	.long	STUFFP
RGTARRW:
	.word	28,31,0,0
	.long	02C67DE0H
	.long	STUFFP
SPRAY:
	.word	24,21,0,0
	.long	02C69900H
	.long	STUFFP
RING:
	.word	23,13,0,0
	.long	02C6A8C0H
	.long	STUFFP
PLAYER:
	.word	26,29,0,0
	.long	02C6B280H
	.long	STUFFP
KEY:
	.word	32,22,0,0
	.long	02C6CBE0H
	.long	STUFFP
NONSTOP:
	.word	27,19,0,0
	.long	02C6E1E0H
	.long	STUFFP
SMART:
	.word	16,20,0,0
	.long	02C6F280H
	.long	STUFFP
SHOES:
	.word	36,25,0,0
	.long	02C6FC80H
	.long	STUFFP
GRENADE:
	.word	38,21,0,0
	.long	02C718A0H
	.long	STUFFP
STAT6:
	.word	64,32,0,0
	.long	02C732E0H
	.long	STATICP
SPDGUN:
	.word	38,20,0,0
	.long	02C772E0H
	.long	STUFFP
FIRE:
	.word	36,22,0,0
	.long	02C78BE0H
	.long	STUFFP
BLADE:
	.word	24,22,0,0
	.long	02C7A4A0H
	.long	STUFFP
JEM1:
	.word	16,12,6,5
	.long	02C7B520H
	.long	STUFFP
JEM2:
	.word	18,15,8,6
	.long	02C7BB20H
	.long	STUFFP
JEM3:
	.word	17,11,7,4
	.long	02C7C480H
	.long	STUFFP
SHOES2:
	.word	27,22,0,0
	.long	02C7CB60H
	.long	STUFFP
CRS12V1:
	.word	28,83,13,19
	.long	02C7DEA0H
	.long	STUFFP
XHAIR:
	.word	20,20,0,0
	.long	02C82740H
	.long	STUFFP
USFLG:
	.word	22,14,0,0
	.long	02C833C0H
	.long	STUFFP
MAPBUTN:
	.word	39,20,0,0
	.long	02C83E40H
	.long	STUFFP
BALL1:
	.word	4,5,1,2
	.long	02C85740H
	.long	STUFFP
BALL6:
	.word	14,15,7,7
	.long	02C857E0H
	.long	STUFFP
SHADW:
	.word	9,7,4,3
	.long	02C85F60H
	.long	STUFFP
DET2:
	.word	12,12,0,0
	.long	02C86200H
DET3:
	.word	12,12,0,0
	.long	02C86680H
BALL2:
	.word	6,7,3,3
	.long	02C86B00H
BALL3:
	.word	8,9,4,4
	.long	02C86CC0H
BALL4:
	.word	10,11,5,5
	.long	02C86F00H
BALL5:
	.word	12,13,6,6
	.long	02C87320H
BALL7:
	.word	18,19,9,9
	.long	02C87800H
GEMS2:
	.word	39,32,2,-6
	.long	02C883E0H
GEMS3:
	.word	39,32,2,-6
	.long	02C8ABE0H
GEMS4:
	.word	39,32,2,-6
	.long	02C8D3E0H
STAT1:
	.word	64,32,0,0
	.long	02C8FBE0H
STAT2:
	.word	64,32,0,0
	.long	02C93BE0H
STAT3:
	.word	64,32,0,0
	.long	02C97BE0H
STAT4:
	.word	64,32,0,0
	.long	02C9BBE0H
STAT5:
	.word	64,32,0,0
	.long	02C9FBE0H
JEM1B:
	.word	16,12,6,5
	.long	02CA3BE0H
JEM1C:
	.word	16,12,6,5
	.long	02CA41E0H
JEM1D:
	.word	19,14,9,7
	.long	02CA47E0H
JEM2B:
	.word	18,15,8,6
	.long	02CA50A0H
JEM2C:
	.word	18,15,8,6
	.long	02CA5A00H
JEM2D:
	.word	18,16,8,7
	.long	02CA6360H
JEM3B:
	.word	17,12,7,5
	.long	02CA6D60H
JEM3C:
	.word	17,14,7,7
	.long	02CA74E0H
JEM3D:
	.word	19,16,9,9
	.long	02CA7DA0H
CRS12V2:
	.word	17,60,8,14
	.long	02CA87A0H
CRS12V3:
	.word	13,38,6,9
	.long	02CAAD20H
CRS12V4:
	.word	10,21,5,6
	.long	02CAC020H
CRS12V5:
	.word	12,16,6,5
	.long	02CAC800H
CRS12V6:
	.word	10,10,5,6
	.long	02CACE00H
CRS12V7:
	.word	7,6,3,6
	.long	02CAD1C0H
I1:
	.word	7,7,3,3
	.long	02CAD340H
	.long	IBALLP
RP1:
	.word	5,6,2,2
	.long	02CAD500H
	.long	RBPAL
RSR1:
	.word	8,4,3,1
	.long	02CAD680H
	.long	RBPAL
I2:
	.word	12,10,5,4
	.long	02CAD780H
I3:
	.word	14,11,5,5
	.long	02CADB40H
I4:
	.word	13,17,6,8
	.long	02CAE0C0H
I5:
	.word	19,17,11,9
	.long	02CAE940H
I6:
	.word	17,19,9,10
	.long	02CAF3E0H
RP2:
	.word	8,8,3,3
	.long	02CAFFC0H
RP3:
	.word	5,13,2,6
	.long	02CB01C0H
RP4:
	.word	9,14,4,6
	.long	02CB0500H
RP5:
	.word	17,11,8,5
	.long	02CB0A40H
RP6:
	.word	14,21,6,9
	.long	02CB1120H
RP7:
	.word	14,34,6,16
	.long	02CB1BA0H
RP8:
	.word	14,21,7,11
	.long	02CB2CA0H
RP9:
	.word	8,8,3,4
	.long	02CB3720H
RP10:
	.word	5,6,2,2
	.long	02CB3920H
RSR2:
	.word	9,6,4,2
	.long	02CB3AA0H
RSR3:
	.word	13,9,6,4
	.long	02CB3CE0H
RSR4:
	.word	11,15,5,8
	.long	02CB4160H
RSR5:
	.word	10,19,5,10
	.long	02CB4700H
RSR6:
	.word	11,25,7,13
	.long	02CB4E20H
RSR7:
	.word	11,15,6,8
	.long	02CB5780H
RSR8:
	.word	11,8,5,4
	.long	02CB5D20H
RSR9:
	.word	9,4,4,1
	.long	02CB6020H
BULLFT:
	.word	8,1,0,0
	.long	02CB61A0H
	.long	BULLET
BULUPLFT:
	.word	7,7,0,0
	.long	02CB61E0H
	.long	BULLET
BULUP:
	.word	1,8,0,0
	.long	02CB63A0H
	.long	BULLET
M1:
	.word	15,15,7,6
	.long	02CB64A0H
	.long	BULLET
FRBAL1:
	.word	8,9,3,4
	.long	02CB6C20H
	.long	BULLET
CNNBLL:
	.word	6,5,2,2
	.long	02CB6E60H
	.long	BULLET
B245:
	.word	10,10,4,4
	.long	02CB6FA0H
	.long	BULLET
B2SIDE:
	.word	12,5,6,2
	.long	02CB7360H
	.long	BULLET
B2UP:
	.word	5,12,2,6
	.long	02CB7540H
	.long	BULLET
ELECT1:
	.word	18,16,8,3
	.long	02CB7840H
	.long	BULLET
CSHIN:
	.word	28,16,0,0
	.long	02CB8240H
	.long	BULLET
SPDBL:
	.word	10,9,4,4
	.long	02CB9040H
	.long	BULLET
FIRE1:
	.word	7,8,3,4
	.long	02CB93A0H
	.long	BULLET
M2:
	.word	4,3,2,1
	.long	02CB95A0H
	.long	BULLET
GSHAD1:
	.word	9,9,4,4
	.long	02CB9600H
	.long	BULLET
CNNBLL2:
	.word	6,5,3,2
	.long	02CB9960H
	.long	BULLET
MSL1:
	.word	14,7,6,3
	.long	02CB9AA0H
	.long	BULLET
ELECT1A:
	.word	23,19,10,6
	.long	02CB9E20H
ELECT1B:
	.word	22,18,10,5
	.long	02CBAC60H
ELECT1C:
	.word	24,22,11,8
	.long	02CBB9E0H
EXPb1:
	.word	7,8,3,3
	.long	02CBCA60H
EXPb2:
	.word	15,15,7,7
	.long	02CBCC60H
EXPb3:
	.word	21,20,11,9
	.long	02CBD3E0H
EXPb4:
	.word	31,29,16,14
	.long	02CBE2E0H
EXPb5:
	.word	46,41,23,20
	.long	02CBFFE0H
EXPb6:
	.word	51,46,26,23
	.long	02CC3D60H
EXPb7:
	.word	54,47,27,24
	.long	02CC8820H
EXPb8:
	.word	57,53,28,27
	.long	02CCDA60H
EXPb9:
	.word	58,53,30,28
	.long	02CD3DC0H
M3:
	.word	5,4,2,1
	.long	02CDA120H
M4:
	.word	8,7,3,3
	.long	02CDA220H
M5:
	.word	11,9,5,4
	.long	02CDA3E0H
M6:
	.word	15,12,7,5
	.long	02CDA740H
FIRE2:
	.word	9,10,4,5
	.long	02CDAD40H
FIRE3:
	.word	10,11,4,5
	.long	02CDB100H
FIRE4:
	.word	14,13,8,6
	.long	02CDB520H
FIRE5:
	.word	15,17,7,7
	.long	02CDBBA0H
FIRE6:
	.word	18,20,9,10
	.long	02CDC420H
KBM1:
	.word	12,11,6,5
	.long	02CDD0A0H
KBM2:
	.word	22,22,11,11
	.long	02CDD4C0H
KBM3:
	.word	33,32,16,16
	.long	02CDE540H
KBM4:
	.word	34,34,18,18
	.long	02CE0940H
KBM5:
	.word	34,34,17,18
	.long	02CE2F80H
KBM6:
	.word	31,29,16,14
	.long	02CE55C0H
KBM7:
	.word	30,30,16,15
	.long	02CE72C0H
FRBAL2:
	.word	9,10,4,5
	.long	02CDAD40H
FRBAL3:
	.word	10,11,4,5
	.long	02CDB100H
FRBAL4:
	.word	14,13,8,6
	.long	02CDB520H
FRBAL5:
	.word	15,17,7,7
	.long	02CDBBA0H
FRBAL6:
	.word	18,20,9,10
	.long	02CDC420H
MSL2:
	.word	14,7,6,1
	.long	02CE90C0H
MSL3:
	.word	13,8,6,2
	.long	02CE9440H
MSL4:
	.word	13,9,5,3
	.long	02CE9840H
MSL5:
	.word	13,11,5,4
	.long	02CE9CC0H
MSL6:
	.word	11,11,4,4
	.long	02CEA240H
MSL7:
	.word	10,12,3,4
	.long	02CEA660H
MSL8:
	.word	8,12,2,5
	.long	02CEAAE0H
MSL9:
	.word	9,12,3,5
	.long	02CEADE0H
RRD0:
	.word	7,9,0,0
	.long	02CEB260H
	.long	SCOREPAL
RRD1:
	.word	7,9,0,0
	.long	02CEB4A0H
	.long	SCOREPAL
RRD2:
	.word	7,9,0,0
	.long	02CEB6E0H
	.long	SCOREPAL
RRD3:
	.word	7,9,0,0
	.long	02CEB920H
	.long	SCOREPAL
RRD4:
	.word	7,9,0,0
	.long	02CEBB60H
	.long	SCOREPAL
RRD5:
	.word	7,9,0,0
	.long	02CEBDA0H
	.long	SCOREPAL
RRD6:
	.word	7,9,0,0
	.long	02CEBFE0H
	.long	SCOREPAL
RRD7:
	.word	7,9,0,0
	.long	02CEC220H
	.long	SCOREPAL
RRD8:
	.word	7,9,0,0
	.long	02CEC460H
	.long	SCOREPAL
RRD9:
	.word	7,9,0,0
	.long	02CEC6A0H
	.long	SCOREPAL
BWORD:
	.word	36,8,0,0
	.long	02CEC8E0H
	.long	SCOREPAL
TSCORE:
	.word	127,27,0,0
	.long	02CED1E0H
	.long	SCOREPAL
FIVE:
	.word	20,8,0,0
	.long	02CF3DE0H
	.long	SCOREPAL
PHD1:
	.word	87,41,0,0
	.long	02CF42E0H
	.long	SCOREPAL
PHD2:
	.word	87,41,0,0
	.long	02CFB3A0H
	.long	SCOREPAL
DROPIT:
	.word	68,33,0,0
	.long	02D02460H
	.long	SCOREPAL
TAKEIT:
	.word	90,34,0,0
	.long	02D06A80H
	.long	SCOREPAL
PATH:
	.word	97,18,0,0
	.long	02D0CC40H
	.long	SCOREPAL
PRESS2:
	.word	159,8,0,0
	.long	02D10480H
	.long	SCOREPAL
MISN1:
	.word	68,18,0,0
	.long	02D12C80H
	.long	SCOREPAL
TCWAY:
	.word	90,33,0,0
	.long	02D152C0H
	.long	SCOREPAL
LOSSWAY:
	.word	98,28,0,0
	.long	02D1B1A0H
	.long	SCOREPAL
PHD2A:
	.word	87,41,0,0
	.long	02D20920H
	.long	SCOREPAL
BXTOP:
	.word	123,28,0,0
	.long	02D279E0H
	.long	SCOREPAL
BXMID:
	.word	123,60,0,0
	.long	02D2E660H
	.long	SCOREPAL
MISN2:
	.word	70,18,0,0
	.long	02D3CEE0H
	.long	SCOREPAL
MISN3:
	.word	70,18,0,0
	.long	02D3F760H
	.long	SCOREPAL
YOUARE:
	.word	63,32,0,0
	.long	02D41FE0H
	.long	SCOREPAL
PAINFUL:
	.word	123,32,0,0
	.long	02D45FE0H
	.long	SCOREPAL
ORCUS:
	.word	104,22,0,0
	.long	02D4DBE0H
	.long	SCOREPAL
YOUARE2:
	.word	68,32,0,0
	.long	02D52360H
	.long	SCOREPAL
LV0:
	.word	15,9,0,0
	.long	02D56760H
	.long	SCOREPAL
LV1:
	.word	15,9,0,0
	.long	02D56BE0H
	.long	SCOREPAL
LV2:
	.word	15,9,0,0
	.long	02D57060H
	.long	SCOREPAL
LV3:
	.word	15,9,0,0
	.long	02D574E0H
	.long	SCOREPAL
LV4:
	.word	15,9,0,0
	.long	02D57960H
	.long	SCOREPAL
LV5:
	.word	15,9,0,0
	.long	02D57DE0H
	.long	SCOREPAL
LV6:
	.word	15,9,0,0
	.long	02D58260H
	.long	SCOREPAL
LV7:
	.word	15,9,0,0
	.long	02D586E0H
	.long	SCOREPAL
LV8:
	.word	15,9,0,0
	.long	02D58B60H
	.long	SCOREPAL
LV9:
	.word	15,9,0,0
	.long	02D58FE0H
	.long	SCOREPAL
BMB0:
	.word	30,10,0,0
	.long	02D59460H
	.long	SCOREPAL
BMB1:
	.word	30,10,0,0
	.long	02D59E60H
	.long	SCOREPAL
BMB2:
	.word	30,10,0,0
	.long	02D5A860H
	.long	SCOREPAL
BMB3:
	.word	30,10,0,0
	.long	02D5B260H
	.long	SCOREPAL
BMB4:
	.word	30,10,0,0
	.long	02D5BC60H
	.long	SCOREPAL
BMB5:
	.word	30,10,0,0
	.long	02D5C660H
	.long	SCOREPAL
BMB6:
	.word	30,10,0,0
	.long	02D5D060H
	.long	SCOREPAL
BMB7:
	.word	30,10,0,0
	.long	02D5DA60H
	.long	SCOREPAL
BMB8:
	.word	30,10,0,0
	.long	02D5E460H
	.long	SCOREPAL
BMB9:
	.word	30,10,0,0
	.long	02D5EE60H
	.long	SCOREPAL
PRESS:
	.word	34,18,0,0
	.long	02D5F860H
INSERT:
	.word	39,18,0,0
	.long	02D60CA0H
TIMES:
	.word	6,5,0,0
	.long	02D62320H
DCLR:
	.word	95,11,0,0
	.long	02D85F80H
	.long	DIAGP
FIEND1:
	.word	23,40,16,-8
	.long	02D88080H
	.long	FNDP
SHAD1:
	.word	17,11,9,-41
	.long	02D89E80H
	.long	FNDP
FNDSIT:
	.word	29,24,1,-46
	.long	02D8A560H
	.long	FNDP
FNDSITB:
	.word	29,24,1,-46
	.long	02D8A560H
	.long	FNDPRED
FNDSITC:
	.word	29,24,1,-46
	.long	02D8A560H
	.long	FNDPBLU
FNDSITD:
	.word	29,24,1,-46
	.long	02D8A560H
	.long	FNDPGRN
FNDSITE:
	.word	29,24,1,-46
	.long	02D8A560H
	.long	FNDPPUR
FNDJUMP12C1:
	.word	28,51,13,1
	.long	02D8BD60H
FNDJUMP12C2:
	.word	29,55,13,2
	.long	02D8EA00H
FNDJUMP6C1:
	.word	28,50,14,0
	.long	02D92100H
FNDJUMP6C2:
	.word	30,57,15,2
	.long	02D94CC0H
FIEND2:
	.word	21,40,13,-8
	.long	02D985C0H
FIEND3:
	.word	24,40,13,-8
	.long	02D9A3C0H
FIEND4:
	.word	23,40,14,-8
	.long	02D9C1C0H
FIEND5:
	.word	24,40,14,-8
	.long	02D9DFC0H
FIEND6:
	.word	24,41,13,-8
	.long	02D9FDC0H
FIEND7:
	.word	22,40,13,-8
	.long	02DA1C80H
FNSTND6:
	.word	26,46,14,-8
	.long	02DA3A80H
FNSTND7:
	.word	20,42,11,-8
	.long	02DA62C0H
FNSTND9:
	.word	17,42,7,-8
	.long	02DA7D00H
FNSTND12:
	.word	23,42,11,-9
	.long	02DA9740H
FSQUAT6:
	.word	36,45,19,-9
	.long	02DAB6C0H
FSQUAT6A:
	.word	33,43,17,-11
	.long	02DAE960H
FSQUAT7:
	.word	24,45,12,-9
	.long	02DB19C0H
FSQUAT7A:
	.word	26,42,12,-9
	.long	02DB3B80H
FSQUAT9:
	.word	18,44,8,-9
	.long	02DB6040H
FSQUAT9A:
	.word	19,43,9,-10
	.long	02DB7BC0H
FSQUAT10:
	.word	23,43,13,-11
	.long	02DB96A0H
FSQUAT10A:
	.word	23,42,13,-12
	.long	02DBB6E0H
FSQUAT12A:
	.word	27,39,13,-12
	.long	02DBD660H
FNSTND10:
	.word	18,45,10,-9
	.long	02DBF880H
FJUMP6A:
	.word	31,45,16,-9
	.long	02DC14A0H
FJUMP6B:
	.word	31,43,16,-11
	.long	02DC41A0H
FJUMP6C:
	.word	25,44,13,-2
	.long	02DC6CA0H
FJUMP12A:
	.word	27,41,13,-10
	.long	02DC9320H
FJUMP12B:
	.word	29,39,14,-11
	.long	02DCB700H
FJUMP12C:
	.word	23,44,11,-2
	.long	02DCDE00H
CLD1:
	.word	9,9,4,4
	.long	02EF2640H
	.long	BLUBOOM
CLD1A:
	.word	9,9,4,4
	.long	02EF2640H
	.long	GREYPAL
OKBM1:
	.word	12,11,6,5
	.long	02EF29A0H
	.long	RDBOOM
BBS1:
	.word	4,5,1,2
	.long	02EF2DC0H
	.long	RDBOOM
OKBM2:
	.word	22,22,11,11
	.long	02EF2E60H
OKBM3:
	.word	33,32,16,16
	.long	02EF3EE0H
OKBM4:
	.word	34,34,18,18
	.long	02EF62E0H
OKBM5:
	.word	34,34,17,18
	.long	02EF8920H
OKBM6:
	.word	31,29,16,14
	.long	02EFAF60H
OKBM7:
	.word	30,30,16,15
	.long	02EFCC60H
BBS2:
	.word	6,7,2,3
	.long	02EFEA60H
BBS3:
	.word	11,9,5,4
	.long	02EFEC20H
BBS4:
	.word	17,13,7,5
	.long	02EFEF80H
BBS5:
	.word	26,21,12,9
	.long	02EFF7A0H
CLD2:
	.word	25,29,12,15
	.long	02F00A00H
CLD3:
	.word	29,32,15,17
	.long	02F02360H
CLD4:
	.word	25,31,13,18
	.long	02F04360H
CLD4A:
	.word	28,37,14,26
	.long	02F05E80H
CLD4B:
	.word	32,38,17,29
	.long	02F07EE0H
CLD5:
	.word	36,34,19,30
	.long	02F0A4E0H
CLD6:
	.word	36,36,20,32
	.long	02F0CB20H
CLD7:
	.word	36,36,20,32
	.long	02F0F3A0H
CLD8:
	.word	32,32,18,31
	.long	02F11C20H
CLD9:
	.word	30,29,17,28
	.long	02F13C20H
CLD10:
	.word	29,30,15,29
	.long	02F15920H
CLD11:
	.word	29,30,16,29
	.long	02F17720H
bldclt1:
	.word	3,4,0,-20
	.long	02F19520H
bldclt2:
	.word	4,5,1,-20
	.long	02F195A0H
bldclt3:
	.word	8,9,2,-19
	.long	02F19640H
bldclt4:
	.word	14,15,3,-17
	.long	02F19880H
bldclt5:
	.word	20,21,6,-14
	.long	02F1A000H
bldclt6:
	.word	20,22,6,-13
	.long	02F1AD20H
bldclt7:
	.word	26,28,8,-11
	.long	02F1BAE0H
bldclt8:
	.word	33,30,13,-10
	.long	02F1D360H
rblot9:
	.word	8,6,3,-21
	.long	02F1F520H
rblot10:
	.word	7,5,3,-22
	.long	02F1F6A0H
rblot1:
	.word	3,4,1,-22
	.long	02F1F7E0H
rblot2:
	.word	5,6,2,-22
	.long	02F1F860H
rblot3:
	.word	12,8,6,-22
	.long	02F1F9E0H
rblot4:
	.word	12,13,6,-19
	.long	02F1FCE0H
rblot5:
	.word	9,16,4,-17
	.long	02F201C0H
rblot6:
	.word	10,15,5,-17
	.long	02F207C0H
rblot7:
	.word	13,10,6,-19
	.long	02F20D60H
rblot8:
	.word	10,5,5,-22
	.long	02F21260H
XPLD1:
	.word	58,56,30,29
	.long	02F21440H
	.long	RDBOOM
X1BLU:
	.word	58,56,30,29
	.long	02F21440H
	.long	BLUBOOM
X1GRN:
	.word	58,56,30,29
	.long	02F21440H
	.long	GRNBOOM
GNFR1:
	.word	25,25,12,13
	.long	02F27D40H
	.long	RDBOOM
LFLM1:
	.word	26,52,13,-8
	.long	02F29320H
	.long	RDBOOM
FLM1:
	.word	48,61,29,-20
	.long	02F2C0A0H
	.long	RDBOOM
JTFLM1:
	.word	31,30,19,-12
	.long	02F31C20H
	.long	BLUBOOM
XPLD2:
	.word	69,66,35,37
	.long	02F477A0H
XPLD3:
	.word	83,81,42,54
	.long	02F50C20H
XPLD4:
	.word	88,88,45,63
	.long	02F5E0C0H
XPLD5:
	.word	87,87,45,69
	.long	02F6D2C0H
XPLD6:
	.word	86,85,43,71
	.long	02F7C200H
XPLD7:
	.word	87,84,44,80
	.long	02F8ABC0H
XPLD8:
	.word	87,84,42,85
	.long	02F992C0H
XPLD9:
	.word	85,79,42,87
	.long	02FA79C0H
XPLD10:
	.word	75,65,37,85
	.long	02FB5300H
LFLM2:
	.word	35,54,13,-6
	.long	02FBED60H
LFLM3:
	.word	31,64,12,4
	.long	02FC2A20H
LFLM4:
	.word	33,62,12,3
	.long	02FC6A20H
LFLM5:
	.word	35,63,15,4
	.long	02FCAFE0H
LFLM6:
	.word	29,64,15,5
	.long	02FCF6C0H
JTFLM2:
	.word	27,22,15,-16
	.long	02FD36C0H
FLM2:
	.word	65,64,32,-17
	.long	02FD4A00H
FLM3:
	.word	55,71,32,-10
	.long	02FDD200H
FLM4:
	.word	60,68,30,-13
	.long	02FE4E40H
FLM5:
	.word	63,69,33,-12
	.long	02FECDC0H
FLM6:
	.word	53,71,35,-11
	.long	02FF57C0H
GNFR2:
	.word	19,20,9,10
	.long	02FFD400H
GNFR3:
	.word	12,12,6,6
	.long	02FFE080H
PLFR1:
	.word	38,52,20,5
	.long	02FFE500H
PLFR2:
	.word	31,61,18,14
	.long	03002600H
PLFR3:
	.word	30,67,18,20
	.long	03006300H
PLFR4:
	.word	31,66,18,19
	.long	0300A600H
PLFR5:
	.word	30,75,18,28
	.long	0300E800H
PLFR6:
	.word	30,68,18,21
	.long	03013300H
PLFR7:
	.word	30,57,18,10
	.long	03017700H
PLFR8:
	.word	32,39,20,-8
	.long	0301B000H
PLFR9:
	.word	32,36,21,-11
	.long	0301D700H
PLFR10:
	.word	32,31,22,-16
	.long	0301FB00H
PLFR11:
	.word	31,28,24,-18
	.long	03021A00H
PLFR12:
	.word	30,27,25,-22
	.long	03023600H
PLFR13:
	.word	30,27,25,-26
	.long	03025100H
PLFR14:
	.word	38,34,33,-28
	.long	03026C00H
PLFR15:
	.word	47,34,42,-36
	.long	03029680H
PLFR16:
	.word	46,41,41,-29
	.long	0302C980H
PLFR17:
	.word	46,46,41,-24
	.long	03030700H
PLFR18:
	.word	44,51,41,-18
	.long	03034C00H
PLFR19:
	.word	40,56,38,-13
	.long	03039220H
PLFR20:
	.word	39,60,38,-6
	.long	0303D820H
PLFR21:
	.word	37,57,37,0
	.long	03042320H
PLFR22:
	.word	37,58,37,7
	.long	03046A60H
PLFR23:
	.word	37,56,37,12
	.long	0304B2E0H
PLFR24:
	.word	1,33,17,15
	.long	0304F8E0H
PLFR25:
	.word	1,21,17,17
	.long	0304FD00H
IPIECE:
	.word	72,20,73,-29
	.long	0304FFA0H
	.long	PLLT
IPC2:
	.word	23,17,41,-32
	.long	03052CA0H
	.long	PLLT
TPHD:
	.word	47,23,48,-6
	.long	03053960H
	.long	PLLT
UPPRJAW:
	.word	72,36,73,-49
	.long	03055BE0H
	.long	PLLT
INNRMTH:
	.word	72,28,73,-59
	.long	0305ACE0H
	.long	PLLT
CHK1:
	.word	19,42,92,-45
	.long	0305EBE0H
	.long	PLLT
CHK2:
	.word	19,42,92,-45
	.long	03060620H
	.long	PLLT
CHK3:
	.word	19,42,92,-45
	.long	03062060H
	.long	PLLT
CHK3A:
	.word	8,31,81,-87
	.long	03063AA0H
	.long	PLLT
CHK2A:
	.word	6,23,79,-87
	.long	03064260H
	.long	PLLT
SOLDR1:
	.word	91,111,43,-20
	.long	03064820H
	.long	SOLDB
BOD1:
	.word	91,80,92,-87
	.long	03078740H
	.long	PLLT
BOD1A:
	.word	91,80,43,-5
	.long	03078740H
	.long	PLLT
BOD2:
	.word	55,95,147,-72
	.long	03086D40H
	.long	PLLT
BOD2A:
	.word	55,95,31,-5
	.long	03086D40H
	.long	PLLT
BTTMJAW:
	.word	72,80,73,-64
	.long	03091380H
	.long	PLLT
BTJ2:
	.word	72,80,73,-83
	.long	03091380H
	.long	PLLT
BTJ3:
	.word	72,80,73,-90
	.long	03091380H
	.long	PLLT
SOLDR3:
	.word	60,48,28,-6
	.long	0309C780H
SOLDR4:
	.word	50,75,54,-35
	.long	030A2180H
IPC3:
	.word	23,17,41,-32
	.long	030A9B60H
IPC4:
	.word	23,17,41,-32
	.long	030AA820H
IPC5:
	.word	23,17,41,-32
	.long	030AB4E0H
IPC1A:
	.word	23,17,41,-32
	.long	030AC1A0H
IRAQMAP1:
	.word	158,190,0,0
	.long	030ACE60H
	.long	MAPP
IRAQMAP2:
	.word	217,190,0,0
	.long	030E8460H
	.long	MAPP
MISSION1:
	.word	78,132,0,0
	.long	03139EA0H
	.long	MAPP
MISSION2:
	.word	78,132,0,0
	.long	0314E8A0H
	.long	MAPP
MISSION3:
	.word	84,95,0,0
	.long	031632A0H
	.long	MAPP
POINTER:
	.word	68,38,0,0
	.long	03172C00H
	.long	DOMEP
PDOME:
	.word	44,29,0,0
	.long	03177CC0H
	.long	DOMEP
DPC2:
	.word	79,63,0,0
	.long	0317A4A0H
	.long	DISHPAL
DPC3:
	.word	25,33,0,0
	.long	03184220H
	.long	DISHPAL
DPC4:
	.word	89,79,0,0
	.long	03185F00H
T72BLAST1:
	.word	21,22,10,-3
	.long	03194220H
	.long	TNKPAL
FNDGUN9A:
	.word	56,25,48,-23
	.long	031952A0H
	.long	TNKPAL
T72TURET1:
	.word	8,74,3,-72
	.long	03197E60H
	.long	TNKPAL
TNKTRED1:
	.word	9,97,44,-17
	.long	031990E0H
	.long	TNKPAL
TNKTRED1A:
	.word	30,8,45,-114
	.long	0319B540H
	.long	TNKPAL
TNKSHAD1:
	.word	97,17,40,-112
	.long	0319BD40H
	.long	TNKPAL
TNKSHAD2:
	.word	14,91,-9,-41
	.long	0319F260H
	.long	TNKPAL
TNKBUL:
	.word	5,21,0,0
	.long	031A1FE0H
	.long	TNKPAL
GUNBUL:
	.word	10,9,5,4
	.long	031A2520H
	.long	TNKPAL
T72TNK:
	.word	80,104,39,-10
	.long	031A2880H
	.long	TNKPAL
T72BLAST2:
	.word	30,31,14,-3
	.long	031B2C80H
	.long	TNKPAL
ABLST1:
	.word	21,17,11,8
	.long	031B4B80H
	.long	TNKPAL
T72BLAST3:
	.word	49,44,24,-4
	.long	031B5840H
T72BLAST4:
	.word	48,41,24,-5
	.long	031B9FC0H
T72BLAST5:
	.word	47,40,23,-5
	.long	031BDD40H
T72BLAST6:
	.word	47,38,24,-5
	.long	031C1940H
T72BLAST7:
	.word	46,38,23,-5
	.long	031C5240H
ABLST3:
	.word	49,44,25,22
	.long	031B5840H
ABLST4:
	.word	48,41,26,22
	.long	031B9FC0H
ABLST5:
	.word	47,40,24,22
	.long	031BDD40H
ABLST6:
	.word	47,38,23,21
	.long	031C1940H
ABLST7:
	.word	46,38,25,21
	.long	031C5240H
T72BLAST8:
	.word	46,38,23,-5
	.long	031C8B40H
ABLST2:
	.word	30,25,15,13
	.long	031CC440H
FNDGUN10A:
	.word	56,30,47,-17
	.long	031CDD40H
FNDGUN10B:
	.word	64,36,55,-11
	.long	031D11C0H
FNDGUN115A:
	.word	33,46,19,-1
	.long	031D59C0H
FNDGUN115B:
	.word	41,56,26,9
	.long	031D8D80H
FNDGUN11A:
	.word	43,45,33,-2
	.long	031DDA80H
FNDGUN11B:
	.word	47,49,37,2
	.long	031E1860H
FNDGUN12A:
	.word	25,47,13,0
	.long	031E61E0H
FNDGUN12B:
	.word	29,55,15,8
	.long	031E8B00H
FNDGUN6A:
	.word	30,53,15,-23
	.long	031EC200H
FNDGUN6B:
	.word	28,60,14,-23
	.long	031EF700H
FNDGUN7A:
	.word	32,48,22,-23
	.long	031F2B80H
FNDGUN7B:
	.word	37,55,27,-23
	.long	031F5B80H
FNDGUN85A:
	.word	55,34,44,-23
	.long	031FA040H
FNDGUN85B:
	.word	62,39,51,-23
	.long	031FDBC0H
FNDGUN8A:
	.word	44,43,35,-23
	.long	032029C0H
FNDGUN8B:
	.word	51,50,42,-23
	.long	032064E0H
FNDGUN9B:
	.word	67,26,59,-23
	.long	0320B620H
T72TNK2:
	.word	100,112,45,-11
	.long	0320ED60H
T72TURET2:
	.word	8,67,3,-72
	.long	03224B60H
TNKTRED2:
	.word	9,97,44,-17
	.long	03225C20H
TNKTRED2A:
	.word	30,8,45,-114
	.long	03228080H

	.include BGNDTBL.GLO
