	.FILE "imgtbl.asm"
	.OPTION B,D,L,T

	.include imgtbl.glo
	.DATA
	.even
ARPRT9:
	.word	30,61,0,0
	.long	027C80E0H
	.long	ARPRTPL
GBUL12:
	.word	9,14,4,6
	.long	027CBDE0H
	.long	FING1
GBUL115:
	.word	9,12,4,5
	.long	027CC320H
	.long	FING1
GBUL11:
	.word	11,11,5,5
	.long	027CC7A0H
	.long	FING1
GBUL10:
	.word	13,10,6,5
	.long	027CCBC0H
	.long	FING1
GBUL9:
	.word	15,7,7,3
	.long	027CD0C0H
	.long	FING1
GBUL85:
	.word	13,10,6,5
	.long	027CD440H
	.long	FING1
GBUL8:
	.word	11,11,5,5
	.long	027CD940H
	.long	FING1
GBUL7:
	.word	9,12,4,6
	.long	027CDD60H
	.long	FING1
GBUL6:
	.word	9,14,4,8
	.long	027CE1E0H
	.long	FING1
PTGNR1:
	.word	30,61,15,-9
	.long	027CE720H
	.long	FING1
GNNRBUL12:
	.word	3,14,1,7
	.long	027D2420H
	.long	FING1
GNNRBUL115:
	.word	7,12,3,6
	.long	027D25E0H
	.long	FING1
GNNRBUL11:
	.word	10,9,5,4
	.long	027D28E0H
	.long	FING1
GNNRBUL10:
	.word	14,8,8,4
	.long	027D2C40H
	.long	FING1
GNNRBUL9:
	.word	15,3,8,1
	.long	027D3040H
	.long	FING1
GNNRBUL85:
	.word	14,8,8,3
	.long	027D31C0H
	.long	FING1
GNNRBUL8:
	.word	10,9,5,4
	.long	027D35C0H
	.long	FING1
GNNRBUL7:
	.word	7,12,4,4
	.long	027D3920H
	.long	FING1
GNNRBUL6:
	.word	3,14,1,6
	.long	027D3C20H
	.long	FING1
PTGNR2:
	.word	36,60,19,-8
	.long	027D3DE0H
PTGNR3:
	.word	49,54,29,-7
	.long	027D8160H
PTGNR4:
	.word	60,42,36,-11
	.long	027DD920H
PTGNR5:
	.word	70,39,39,-22
	.long	027E27E0H
PTGNR6:
	.word	58,50,31,-15
	.long	027E7FA0H
PTGNR7:
	.word	50,55,23,-10
	.long	027EDD60H
PTGNR8:
	.word	39,61,15,-6
	.long	027F36C0H
PTGNR9:
	.word	29,63,15,-5
	.long	027F8300H
CLIFF2A:
	.word	57,48,0,0
	.long	027FC200H
	.long	DESRTPL
CLIFF3A:
	.word	60,55,0,0
	.long	02801C00H
	.long	DESRTPL
GUNPIT2:
	.word	75,89,0,0
	.long	0280BDA0H
VGUNPIT2:
	.word	65,63,0,0
	.long	02819100H
WARP:
	.word	142,53,0,0
	.long	028216E0H
	.long	WARPP
ARW2:
	.word	9,5,0,0
	.long	02830560H
	.long	WARPP
SPIN1:
	.word	31,28,0,0
	.long	02830740H
	.long	WARPP
WTIMER1:
	.word	5,7,0,0
	.long	02832340H
	.long	WARPP
OTHERP:
	.word	5,7,0,0
	.long	02832340H
	.long	WARPP2
VBOLT1:
	.word	16,97,8,47
	.long	02AD79C0H
	.long	KRACK
VBOLT2:
	.word	15,90,6,42
	.long	02ADAA40H
	.long	KRACK
VBOLT3:
	.word	15,91,6,41
	.long	02ADD740H
	.long	KRACK
OGUNBUL:
	.word	10,9,5,4
	.long	02AE04C0H
	.long	AHMEDP
EXPL1:
	.word	8,8,4,3
	.long	02AE0820H
	.long	EORNGPAL
EXPL2:
	.word	20,20,10,9
	.long	02AE0A20H
EXPL3:
	.word	30,28,15,13
	.long	02AE16A0H
EXPL4:
	.word	35,31,18,15
	.long	02AE32A0H
EXPL5:
	.word	43,41,20,20
	.long	02AE5580H
EXPL6:
	.word	50,55,24,25
	.long	02AE8DE0H
EXPL7:
	.word	62,56,31,28
	.long	02AEE740H
EXPL8:
	.word	69,62,35,30
	.long	02AF5740H
EXPL9:
	.word	67,57,34,27
	.long	02AFE2C0H
EXPL10:
	.word	55,46,29,22
	.long	02B05BE0H
EXPL11:
	.word	54,47,27,22
	.long	02B0AC60H
EXPL12:
	.word	54,47,27,24
	.long	02B0FEA0H
MTNK10:
	.word	50,38,20,8
	.long	02B150E0H
	.long	MTNKP
RTNK:
	.word	50,38,20,8
	.long	02B150E0H
	.long	MTNKP2
ANT:
	.word	5,29,0,0
	.long	02B18EA0H
	.long	MTNKP
MTNK11:
	.word	49,36,22,11
	.long	02B195E0H
	.long	MTNKP
MTNK12:
	.word	37,36,14,12
	.long	02B1D060H
	.long	MTNKP
MTNK12B:
	.word	37,36,14,12
	.long	02B1FD60H
	.long	MTNKP
MTNK6:
	.word	37,36,15,8
	.long	02B22A60H
	.long	MTNKP
MTNK6B:
	.word	37,36,15,8
	.long	02B25760H
	.long	MTNKP
MTNK7:
	.word	45,37,19,7
	.long	02B28460H
	.long	MTNKP
MTNK8:
	.word	45,36,21,8
	.long	02B2BBE0H
	.long	MTNKP
MTNK9:
	.word	41,34,18,8
	.long	02B2F1E0H
	.long	MTNKP
MTNK9B:
	.word	41,34,18,8
	.long	02B320A0H
	.long	MTNKP
BTR60:
	.word	182,98,64,-35
	.long	02B34F60H
	.long	BTRP
TURT12:
	.word	29,66,14,-7
	.long	02B582E0H
	.long	BTRP
BTIRE1:
	.word	37,36,18,26
	.long	02B5C4E0H
	.long	BTRP
SCUD1:
	.word	228,106,87,-29
	.long	02B5F1E0H
	.long	SCUDP
MISSLE:
	.word	201,56,48,-10
	.long	02B8E520H
	.long	SCUDP
TURT9:
	.word	59,33,44,-40
	.long	02BA4A20H
	.long	BTRP
SCUD2:
	.word	19,12,0,-17
	.long	02BA8800H
	.long	SCUDP
BTRECK:
	.word	182,98,64,-35
	.long	02BA8F80H
BTIRE2:
	.word	37,36,18,26
	.long	02BCC300H
TURT12A:
	.word	29,47,14,-26
	.long	02BCF000H
TURT11:
	.word	37,60,22,-13
	.long	02BD1F00H
TURT11A:
	.word	29,44,13,-29
	.long	02BD6A00H
TURT10:
	.word	48,54,33,-19
	.long	02BD9600H
TURT10A:
	.word	33,39,18,-34
	.long	02BDE700H
TURT9A:
	.word	44,33,29,-40
	.long	02BE12E0H
TURT9B:
	.word	54,43,39,-30
	.long	02BE4040H
TURT9BA:
	.word	38,36,23,-37
	.long	02BE8B80H
TURT8:
	.word	57,36,42,-40
	.long	02BEB880H
TURT8A:
	.word	41,33,26,-40
	.long	02BEFC00H
TURT7:
	.word	49,49,34,-40
	.long	02BF2960H
TURT7A:
	.word	37,37,22,-40
	.long	02BF7900H
TURT6:
	.word	29,62,14,-40
	.long	02BFA740H
TURT6A:
	.word	29,48,14,-40
	.long	02BFE540H
TURT6B:
	.word	37,58,22,-40
	.long	02C01540H
TURT6BA:
	.word	30,44,15,-40
	.long	02C05DC0H
DOC1:
	.word	18,37,8,-9
	.long	02C089C0H
	.long	PPLP
BM1:
	.word	5,11,2,-30
	.long	02C0A0E0H
	.long	PPLP
NSDR1:
	.word	19,38,9,-7
	.long	02C0A3A0H
	.long	PPLP
BGRL1:
	.word	15,38,8,-11
	.long	02C0BB60H
	.long	PPLP
GN1:
	.word	17,38,9,-11
	.long	02C0CE60H
	.long	PPLP
SLUD1:
	.word	12,8,4,3
	.long	02C0E620H
	.long	PPLP
GRL1:
	.word	12,34,6,-5
	.long	02C0E920H
	.long	PPLP
NSDRRUN1:
	.word	15,32,9,-7
	.long	02C0F5E0H
	.long	PPLP
PILOT1:
	.word	16,33,0,0
	.long	02C105E0H
	.long	PPLP
BABE1:
	.word	25,31,12,4
	.long	02C11660H
	.long	PPLP
REPO1:
	.word	28,40,13,-12
	.long	02C13180H
	.long	PPLP
SHCAKLDD1:
	.word	30,42,13,-12
	.long	02C15480H
	.long	PPLP
SHCAKLDD2:
	.word	30,43,13,-11
	.long	02C17E80H
	.long	PPLP
SHCAKLDD3:
	.word	30,45,13,-9
	.long	02C1A980H
	.long	PPLP
SHCAKLDE1:
	.word	23,41,11,-11
	.long	02C1D680H
	.long	PPLP
SHCAKLDF1:
	.word	24,40,12,-10
	.long	02C1F540H
	.long	PPLP
SHACKX1:
	.word	24,39,8,-12
	.long	02C21340H
	.long	PPLP
SHACKX2:
	.word	29,39,13,-12
	.long	02C23080H
	.long	PPLP
SHACKX3:
	.word	26,39,10,-12
	.long	02C25780H
	.long	PPLP
SECBON:
	.word	41,18,0,0
	.long	02C279A0H
	.long	PPLP
SHACKY1:
	.word	25,38,9,-13
	.long	02C29260H
	.long	PPLP
SHACKY2:
	.word	38,38,17,-13
	.long	02C2B3A0H
	.long	PPLP
SHACKY3:
	.word	28,41,12,-10
	.long	02C2E320H
	.long	PPLP
BIGBONE:
	.word	66,25,38,17
	.long	02C30700H
	.long	PPLP
PTS1:
	.word	36,19,19,-14
	.long	02C33C20H
PTS2:
	.word	36,19,19,-14
	.long	02C35180H
PTS3:
	.word	36,19,19,-14
	.long	02C366E0H
PTS4:
	.word	36,19,19,-14
	.long	02C37C40H
PTS5:
	.word	36,19,19,-14
	.long	02C391A0H
PTS6:
	.word	36,19,19,-14
	.long	02C3A700H
PTS7:
	.word	36,19,19,-14
	.long	02C3BC60H
PTS8:
	.word	36,19,19,-14
	.long	02C3D1C0H
PTS9:
	.word	36,19,19,-14
	.long	02C3E720H
PTS10:
	.word	36,19,19,-14
	.long	02C3FC80H
BABE2:
	.word	26,32,12,5
	.long	02C411E0H
BABE3:
	.word	23,32,11,4
	.long	02C42DE0H
BABE4:
	.word	25,31,12,4
	.long	02C445E0H
DOC2:
	.word	23,37,11,-9
	.long	02C46100H
DOC3:
	.word	24,37,12,-9
	.long	02C47CC0H
DOC4:
	.word	24,37,12,-9
	.long	02C49880H
BM2:
	.word	11,22,5,-25
	.long	02C4B440H
BM3:
	.word	15,29,7,-20
	.long	02C4BC80H
BM4:
	.word	19,34,9,-17
	.long	02C4CB00H
BM5:
	.word	19,46,9,-11
	.long	02C4E040H
BM6:
	.word	19,46,9,-10
	.long	02C4FD00H
BM7:
	.word	19,46,9,-10
	.long	02C519C0H
BM8:
	.word	19,46,9,-10
	.long	02C53680H
BM9:
	.word	19,46,9,-10
	.long	02C55340H
BM10:
	.word	17,46,9,-10
	.long	02C57000H
NSDR2:
	.word	20,38,10,-7
	.long	02C58CC0H
NSDR3:
	.word	20,37,10,-8
	.long	02C5A480H
NSDR4:
	.word	19,36,9,-8
	.long	02C5BBA0H
NSDR8:
	.word	19,38,9,-7
	.long	02C5D220H
NSDR9:
	.word	20,38,10,-7
	.long	02C5E9E0H
SWAVE1:
	.word	19,42,9,-3
	.long	02C601A0H
SWAVE2:
	.word	19,40,9,-5
	.long	02C61BE0H
SWAVE3:
	.word	24,38,12,-7
	.long	02C634E0H
BGRL2:
	.word	24,36,12,-13
	.long	02C65160H
BGRL3:
	.word	15,37,8,-12
	.long	02C66C60H
GN2:
	.word	18,38,9,-11
	.long	02C67EE0H
GN3:
	.word	18,38,9,-11
	.long	02C696A0H
GN4:
	.word	18,38,9,-11
	.long	02C6AE60H
GN5:
	.word	18,38,9,-11
	.long	02C6C620H
GN6:
	.word	18,38,9,-11
	.long	02C6DDE0H
SLUD2:
	.word	9,11,3,4
	.long	02C6F5A0H
SLUD3:
	.word	12,10,5,5
	.long	02C6F9C0H
SLUD4:
	.word	15,9,8,4
	.long	02C6FD80H
SLUD5:
	.word	13,11,4,6
	.long	02C70200H
SLUD6:
	.word	11,8,4,3
	.long	02C70780H
GRL2:
	.word	13,34,6,-5
	.long	02C70A80H
GRL3:
	.word	13,33,5,-6
	.long	02C71B80H
GRL4:
	.word	12,33,4,-6
	.long	02C72C00H
SLMD1:
	.word	8,7,3,2
	.long	02C73860H
SLMD2:
	.word	11,14,5,4
	.long	02C73A20H
SLMD3:
	.word	16,23,7,6
	.long	02C73F60H
SLMD4:
	.word	17,27,7,6
	.long	02C74AE0H
NSDRRUN2:
	.word	18,32,9,-7
	.long	02C75BC0H
NSDRRUN3:
	.word	17,32,8,-7
	.long	02C76FC0H
NSDRRUN4:
	.word	16,33,8,-7
	.long	02C783C0H
PILOT2:
	.word	16,32,0,0
	.long	02C79440H
PILOT3:
	.word	16,32,0,0
	.long	02C7A440H
PILOT4:
	.word	16,33,0,0
	.long	02C7B440H
SCHAKLDA1:
	.word	25,43,9,-8
	.long	02C7C4C0H
SCHAKLDA2:
	.word	27,40,11,-11
	.long	02C7EA60H
SCHAKLDA3:
	.word	25,38,9,-13
	.long	02C80D60H
SCHAKLDB1:
	.word	27,40,11,-11
	.long	02C82EA0H
SCHAKLDB2:
	.word	24,40,8,-11
	.long	02C851A0H
SCHAKLDB3:
	.word	25,40,9,-11
	.long	02C86FA0H
SCHAKLDB4:
	.word	24,40,8,-11
	.long	02C892A0H
SHCAKLDC1:
	.word	25,41,9,-14
	.long	02C8B0A0H
SHCAKLDC2:
	.word	25,41,9,-14
	.long	02C8D480H
SHCAKLDC3:
	.word	29,41,13,-14
	.long	02C8F860H
SHCAKLDC4:
	.word	23,41,7,-14
	.long	02C92160H
BLLN1:
	.word	21,29,0,0
	.long	02C94020H
	.long	BLLNP5
BLLN2:
	.word	22,29,0,0
	.long	02C955E0H
	.long	BLLNP5
BLLN3:
	.word	23,21,0,0
	.long	02C96BA0H
	.long	BLLNP5
SQUAD:
	.word	115,23,0,0
	.long	02C97B60H
	.long	BLLNP3
GSCOTT:
	.word	65,25,0,0
	.long	02C9CEC0H
	.long	BLLNP5
BOON1:
	.word	73,59,0,0
	.long	02CA03E0H
	.long	BLLNP5
BOON2:
	.word	33,15,0,0
	.long	02CA9000H
	.long	BLLNP5
BOON2B:
	.word	23,35,0,0
	.long	02CAA0E0H
	.long	BLLNP5
DARM1:
	.word	134,60,107,-20
	.long	02CB0080H
	.long	DHNDP
THUMB:
	.word	41,29,-43,10
	.long	02CBFF80H
	.long	DHNDP
DHND1:
	.word	122,60,-27,-19
	.long	02CC2760H
	.long	DHNDP
DHND2:
	.word	86,61,-27,-19
	.long	02CD0FE0H
	.long	DHNDP
CENS1:
	.word	56,71,1,0
	.long	02CDB7A0H
	.long	CENSP
CENS2:
	.word	50,79,0,0
	.long	02CE33E0H
	.long	CENSP
CENS3:
	.word	45,77,1,1
	.long	02CEB440H
	.long	CENSP
CENS4:
	.word	71,78,0,0
	.long	02CF27C0H
	.long	CENSP
VBOX1:
	.word	16,1,8,-27
	.long	02D55800H
	.long	BOXP
HBOX1:
	.word	52,37,27,-9
	.long	02D55880H
	.long	BOXP
VBOX6:
	.word	52,37,27,-9
	.long	02D594A0H
VBOX2:
	.word	22,7,11,-24
	.long	02D5D0C0H
VBOX3:
	.word	27,13,14,-21
	.long	02D5D600H
VBOX4:
	.word	34,19,18,-18
	.long	02D5E160H
VBOX5:
	.word	40,25,21,-15
	.long	02D5F6C0H
HBOX6:
	.word	52,37,27,-9
	.long	02D61600H
HBOX2:
	.word	52,37,27,-9
	.long	02D65220H
HBOX3:
	.word	52,37,27,-9
	.long	02D68E40H
HBOX4:
	.word	52,37,27,-9
	.long	02D6CA60H
HBOX5:
	.word	52,37,27,-9
	.long	02D70680H
PODA:
	.word	11,11,5,5
	.long	02D742A0H
	.long	GOOBP
FLG1:
	.word	35,39,0,0
	.long	02D746C0H
	.long	FRTCLS
GOOBR:
	.word	16,58,0,0
	.long	02D772A0H
	.long	GOOBP
GOOBB:
	.word	68,14,0,0
	.long	02D78FA0H
	.long	GOOBP
RCTRPC1:
	.word	33,44,0,0
	.long	02D7AD60H
	.long	REACTR
RCTRPC2:
	.word	25,52,0,0
	.long	02D7DEE0H
	.long	REACTR
GOOB1:
	.word	6,5,3,2
	.long	02D80C60H
	.long	GOOBP
WSTPOOL:
	.word	58,44,0,0
	.long	02D80DA0H
	.long	GOOBP
RCTR2:
	.word	104,114,0,0
	.long	02D86020H
	.long	REACTR
OPC1:
	.word	8,4,3,1
	.long	02D9D2A0H
	.long	REACTR
FLAG1:
	.word	36,39,0,0
	.long	02D9D3A0H
	.long	GOOBP
GOOB2:
	.word	8,7,4,3
	.long	02D9FF80H
GOOB3:
	.word	10,9,5,4
	.long	02DA0140H
GOOB4:
	.word	12,12,6,6
	.long	02DA04A0H
GOOB5:
	.word	14,14,7,6
	.long	02DA0920H
GOOB6:
	.word	19,19,9,9
	.long	02DA1020H
GOOB7:
	.word	18,20,9,9
	.long	02DA1C00H
GOOB8:
	.word	16,18,9,9
	.long	02DA2880H
GOOB9:
	.word	22,18,11,8
	.long	02DA3180H
GOOB10:
	.word	27,23,13,9
	.long	02DA3F00H
GSLMD1:
	.word	8,8,3,4
	.long	02DA5320H
GSLMD2:
	.word	11,15,5,5
	.long	02DA5520H
GSLMD3:
	.word	16,23,8,7
	.long	02DA5AC0H
GSLMD4:
	.word	17,27,8,7
	.long	02DA6640H
GBLOB1:
	.word	10,9,5,4
	.long	02DA7720H
GBLOB2:
	.word	13,14,6,6
	.long	02DA7A80H
GBLOB3:
	.word	19,16,9,7
	.long	02DA8180H
GBLOB4:
	.word	18,17,9,8
	.long	02DA8B80H
GPOOL1:
	.word	42,44,0,0
	.long	02DA9620H
GPOOL4:
	.word	42,39,0,0
	.long	02DAD2A0H
GPOOL5:
	.word	40,41,0,0
	.long	02DB0840H
FLG2:
	.word	37,39,0,0
	.long	02DB3B80H
FLG3:
	.word	36,39,0,0
	.long	02DB6C40H
FLG4:
	.word	37,39,0,0
	.long	02DB9820H
FLG5:
	.word	37,39,0,0
	.long	02DBC8E0H
BROKN:
	.word	39,59,0,0
	.long	02DBF9A0H
BROKN2:
	.word	32,38,0,0
	.long	02DC4360H
CRT3:
	.word	32,31,0,0
	.long	02DC6960H
OPC2:
	.word	9,6,4,2
	.long	02DC8860H
OPC3:
	.word	13,10,5,4
	.long	02DC8AA0H
OPC4:
	.word	11,15,4,7
	.long	02DC8FA0H
OPC5:
	.word	12,19,5,9
	.long	02DC9540H
OPC6:
	.word	12,25,6,12
	.long	02DC9C60H
OPC7:
	.word	11,15,6,7
	.long	02DCA5C0H
OPC8:
	.word	11,7,5,3
	.long	02DCAB60H
OPC9:
	.word	9,4,4,1
	.long	02DCAE00H
FLAG2:
	.word	38,39,0,0
	.long	02DCAF80H
FLAG3:
	.word	37,39,0,0
	.long	02DCE040H
FLAG4:
	.word	38,39,0,0
	.long	02DD1100H
FLAG5:
	.word	38,39,0,0
	.long	02DD41C0H
CRT1:
	.word	35,42,0,0
	.long	02DD7280H
BRRL2:
	.word	17,28,0,0
	.long	02DDA1C0H
LTRBOX1:
	.word	24,21,0,0
	.long	02DDB340H
	.long	LBOXP1
LTRBOX2:
	.word	24,21,0,0
	.long	02DDB340H
	.long	LBOXP2
DET1:
	.word	12,12,0,0
	.long	02DDC300H
	.long	STUFFP
BMBLETS:
	.word	17,19,0,0
	.long	02DDC780H
	.long	STUFFP
MEP1:
	.word	65,18,0,0
	.long	02DDD360H
	.long	STUFFP
MEP2:
	.word	64,18,0,0
	.long	02DDF9A0H
	.long	STUFFP
RACKBLK:
	.word	46,46,0,0
	.long	02DE1DA0H
	.long	STUFFP
GEMS1:
	.word	39,32,2,-6
	.long	02DE62A0H
	.long	STUFFP
LFTARRW:
	.word	28,31,0,0
	.long	02DE8AA0H
	.long	STUFFP
UPARRW:
	.word	27,28,0,0
	.long	02DEA5C0H
	.long	STUFFP
RGTARRW:
	.word	28,31,0,0
	.long	02DEBE40H
	.long	STUFFP
SPRAY:
	.word	24,21,0,0
	.long	02DED960H
	.long	STUFFP
RING:
	.word	23,13,0,0
	.long	02DEE920H
	.long	STUFFP
PLAYER:
	.word	26,29,0,0
	.long	02DEF2E0H
	.long	STUFFP
KEY:
	.word	32,22,0,0
	.long	02DF0C40H
	.long	STUFFP
NONSTOP:
	.word	27,19,0,0
	.long	02DF2240H
	.long	STUFFP
SMART:
	.word	16,20,0,0
	.long	02DF32E0H
	.long	STUFFP
SHOES:
	.word	36,25,0,0
	.long	02DF3CE0H
	.long	STUFFP
GRENADE:
	.word	38,21,0,0
	.long	02DF5900H
	.long	STUFFP
STAT6:
	.word	64,32,0,0
	.long	02DF7340H
	.long	STATICP
SPDGUN:
	.word	38,20,0,0
	.long	02DFB340H
	.long	STUFFP
FIRE:
	.word	36,22,0,0
	.long	02DFCC40H
	.long	STUFFP
BLADE:
	.word	24,22,0,0
	.long	02DFE500H
	.long	STUFFP
JEM1:
	.word	16,12,6,5
	.long	02DFF580H
	.long	STUFFP
JEM2:
	.word	18,15,8,6
	.long	02DFFB80H
	.long	STUFFP
JEM3:
	.word	17,11,7,4
	.long	02E004E0H
	.long	STUFFP
SHOES2:
	.word	27,22,0,0
	.long	02E00BC0H
	.long	STUFFP
CRS12V1:
	.word	28,83,13,19
	.long	02E01F00H
	.long	STUFFP
XHAIR:
	.word	20,20,0,0
	.long	02E067A0H
	.long	STUFFP
USFLG:
	.word	22,14,0,0
	.long	02E07420H
	.long	STUFFP
MAPBUTN:
	.word	39,20,0,0
	.long	02E07EA0H
	.long	STUFFP
BALL1:
	.word	4,5,1,2
	.long	02E097A0H
	.long	STUFFP
BALL6:
	.word	14,15,7,7
	.long	02E09840H
	.long	STUFFP
SHADW:
	.word	9,7,4,3
	.long	02E09FC0H
	.long	STUFFP
MSLB1:
	.word	28,12,15,5
	.long	02E0A260H
	.long	STUFFP
DET2:
	.word	12,12,0,0
	.long	02E0ACE0H
DET3:
	.word	12,12,0,0
	.long	02E0B160H
BALL2:
	.word	6,7,3,3
	.long	02E0B5E0H
BALL3:
	.word	8,9,4,4
	.long	02E0B7A0H
BALL4:
	.word	10,11,5,5
	.long	02E0B9E0H
BALL5:
	.word	12,13,6,6
	.long	02E0BE00H
BALL7:
	.word	18,19,9,9
	.long	02E0C2E0H
GEMS2:
	.word	39,32,2,-6
	.long	02E0CEC0H
GEMS3:
	.word	39,32,2,-6
	.long	02E0F6C0H
GEMS4:
	.word	39,32,2,-6
	.long	02E11EC0H
STAT1:
	.word	64,32,0,0
	.long	02E146C0H
STAT2:
	.word	64,32,0,0
	.long	02E186C0H
STAT3:
	.word	64,32,0,0
	.long	02E1C6C0H
STAT4:
	.word	64,32,0,0
	.long	02E206C0H
STAT5:
	.word	64,32,0,0
	.long	02E246C0H
JEM1B:
	.word	16,12,6,5
	.long	02E286C0H
JEM1C:
	.word	16,12,6,5
	.long	02E28CC0H
JEM1D:
	.word	19,14,9,7
	.long	02E292C0H
JEM2B:
	.word	18,15,8,6
	.long	02E29B80H
JEM2C:
	.word	18,15,8,6
	.long	02E2A4E0H
JEM2D:
	.word	18,16,8,7
	.long	02E2AE40H
JEM3B:
	.word	17,12,7,5
	.long	02E2B840H
JEM3C:
	.word	17,14,7,7
	.long	02E2BFC0H
JEM3D:
	.word	19,16,9,9
	.long	02E2C880H
CRS12V2:
	.word	17,60,8,14
	.long	02E2D280H
CRS12V3:
	.word	13,38,6,9
	.long	02E2F800H
CRS12V4:
	.word	10,21,5,6
	.long	02E30B00H
CRS12V5:
	.word	12,16,6,5
	.long	02E312E0H
CRS12V6:
	.word	10,10,5,6
	.long	02E318E0H
CRS12V7:
	.word	7,6,3,6
	.long	02E31CA0H
MSLB2:
	.word	27,14,12,4
	.long	02E31E20H
MSLB3:
	.word	25,16,12,5
	.long	02E32A60H
MSLB4:
	.word	25,19,12,7
	.long	02E33860H
MSLB5:
	.word	20,20,8,7
	.long	02E34900H
MSLB6:
	.word	17,21,7,10
	.long	02E35580H
MSLB7:
	.word	16,22,6,10
	.long	02E362A0H
MSLB8:
	.word	14,23,6,10
	.long	02E36DA0H
MSLB9:
	.word	12,24,6,12
	.long	02E37920H
I1:
	.word	7,7,3,3
	.long	02E38220H
	.long	IBALLP
RP1:
	.word	5,6,2,2
	.long	02E383E0H
	.long	RBPAL
RSR1:
	.word	8,4,3,1
	.long	02E38560H
	.long	RBPAL
I2:
	.word	12,10,5,4
	.long	02E38660H
I3:
	.word	14,11,5,5
	.long	02E38A20H
I4:
	.word	13,17,6,8
	.long	02E38FA0H
I5:
	.word	19,17,11,9
	.long	02E39820H
I6:
	.word	17,19,9,10
	.long	02E3A2C0H
RP2:
	.word	8,8,3,3
	.long	02E3AEA0H
RP3:
	.word	5,13,2,6
	.long	02E3B0A0H
RP4:
	.word	9,14,4,6
	.long	02E3B3E0H
RP5:
	.word	17,11,8,5
	.long	02E3B920H
RP6:
	.word	14,21,6,9
	.long	02E3C000H
RP7:
	.word	14,34,6,16
	.long	02E3CA80H
RP8:
	.word	14,21,7,11
	.long	02E3DB80H
RP9:
	.word	8,8,3,4
	.long	02E3E600H
RP10:
	.word	5,6,2,2
	.long	02E3E800H
RSR2:
	.word	9,6,4,2
	.long	02E3E980H
RSR3:
	.word	13,9,6,4
	.long	02E3EBC0H
RSR4:
	.word	11,15,5,8
	.long	02E3F040H
RSR5:
	.word	10,19,5,10
	.long	02E3F5E0H
RSR6:
	.word	11,25,7,13
	.long	02E3FD00H
RSR7:
	.word	11,15,6,8
	.long	02E40660H
RSR8:
	.word	11,8,5,4
	.long	02E40C00H
RSR9:
	.word	9,4,4,1
	.long	02E40F00H
BULLFT:
	.word	8,1,0,0
	.long	02E41080H
	.long	BULLET
BULUPLFT:
	.word	7,7,0,0
	.long	02E410C0H
	.long	BULLET
BULUP:
	.word	1,8,0,0
	.long	02E41280H
	.long	BULLET
M1:
	.word	15,15,7,6
	.long	02E41380H
	.long	BULLET
FRBAL1:
	.word	8,9,3,4
	.long	02E41B00H
	.long	BULLET
CNNBLL:
	.word	6,5,2,2
	.long	02E41D40H
	.long	BULLET
B245:
	.word	10,10,4,4
	.long	02E41E80H
	.long	BULLET
B2SIDE:
	.word	12,5,6,2
	.long	02E42240H
	.long	BULLET
B2UP:
	.word	5,12,2,6
	.long	02E42420H
	.long	BULLET
ELECT1:
	.word	18,16,8,3
	.long	02E42720H
	.long	BULLET
CSHIN:
	.word	28,16,0,0
	.long	02E43120H
	.long	BULLET
SPDBL:
	.word	10,9,4,4
	.long	02E43F20H
	.long	BULLET
FIRE1:
	.word	7,8,3,4
	.long	02E44280H
	.long	BULLET
M2:
	.word	4,3,2,1
	.long	02E44480H
	.long	BULLET
GSHAD1:
	.word	9,9,4,4
	.long	02E444E0H
	.long	BULLET
CNNBLL2:
	.word	6,5,3,2
	.long	02E44840H
	.long	BULLET
MSL1:
	.word	14,7,6,3
	.long	02E44980H
	.long	BULLET
KBM1:
	.word	12,11,6,5
	.long	02E44D00H
	.long	BULLET
EXPb1:
	.word	7,8,3,3
	.long	02E45120H
	.long	BULLET
NEARTNK:
	.word	88,24,0,0
	.long	02E45320H
	.long	BULLET
ELECT1A:
	.word	23,19,10,6
	.long	02E49520H
ELECT1B:
	.word	22,18,10,5
	.long	02E4A360H
ELECT1C:
	.word	24,22,11,8
	.long	02E4B0E0H
EXPb2:
	.word	15,15,7,7
	.long	02E4C160H
EXPb3:
	.word	21,20,11,9
	.long	02E4C8E0H
EXPb4:
	.word	31,29,16,14
	.long	02E4D7E0H
EXPb5:
	.word	46,41,23,20
	.long	02E4F4E0H
EXPb6:
	.word	51,46,26,23
	.long	02E53260H
EXPb7:
	.word	54,47,27,24
	.long	02E57D20H
EXPb8:
	.word	57,53,28,27
	.long	02E5CF60H
EXPb9:
	.word	58,53,30,28
	.long	02E632C0H
M3:
	.word	5,4,2,1
	.long	02E69620H
M4:
	.word	8,7,3,3
	.long	02E69720H
M5:
	.word	11,9,5,4
	.long	02E698E0H
M6:
	.word	15,12,7,5
	.long	02E69C40H
FIRE2:
	.word	9,10,4,5
	.long	02E6A240H
FIRE3:
	.word	10,11,4,5
	.long	02E6A600H
FIRE4:
	.word	14,13,8,6
	.long	02E6AA20H
FIRE5:
	.word	15,17,7,7
	.long	02E6B0A0H
FIRE6:
	.word	18,20,9,10
	.long	02E6B920H
KBM2:
	.word	22,22,11,11
	.long	02E6C5A0H
KBM3:
	.word	33,32,16,16
	.long	02E6D620H
KBM4:
	.word	34,34,18,18
	.long	02E6FA20H
KBM5:
	.word	34,34,17,18
	.long	02E72060H
KBM6:
	.word	31,29,16,14
	.long	02E746A0H
KBM7:
	.word	30,30,16,15
	.long	02E763A0H
FRBAL2:
	.word	9,10,4,5
	.long	02E6A240H
FRBAL3:
	.word	10,11,4,5
	.long	02E6A600H
FRBAL4:
	.word	14,13,8,6
	.long	02E6AA20H
FRBAL5:
	.word	15,17,7,7
	.long	02E6B0A0H
FRBAL6:
	.word	18,20,9,10
	.long	02E6B920H
MSL2:
	.word	14,7,6,1
	.long	02E781A0H
MSL3:
	.word	13,8,6,2
	.long	02E78520H
MSL4:
	.word	13,9,5,3
	.long	02E78920H
MSL5:
	.word	13,11,5,4
	.long	02E78DA0H
MSL6:
	.word	11,11,4,4
	.long	02E79320H
MSL7:
	.word	10,12,3,4
	.long	02E79740H
MSL8:
	.word	8,12,2,5
	.long	02E79BC0H
MSL9:
	.word	9,12,3,5
	.long	02E79EC0H
RRD0:
	.word	7,9,0,0
	.long	02E7A340H
	.long	SCOREPAL
RRD1:
	.word	7,9,0,0
	.long	02E7A580H
	.long	SCOREPAL
RRD2:
	.word	7,9,0,0
	.long	02E7A7C0H
	.long	SCOREPAL
RRD3:
	.word	7,9,0,0
	.long	02E7AA00H
	.long	SCOREPAL
RRD4:
	.word	7,9,0,0
	.long	02E7AC40H
	.long	SCOREPAL
RRD5:
	.word	7,9,0,0
	.long	02E7AE80H
	.long	SCOREPAL
RRD6:
	.word	7,9,0,0
	.long	02E7B0C0H
	.long	SCOREPAL
RRD7:
	.word	7,9,0,0
	.long	02E7B300H
	.long	SCOREPAL
RRD8:
	.word	7,9,0,0
	.long	02E7B540H
	.long	SCOREPAL
RRD9:
	.word	7,9,0,0
	.long	02E7B780H
	.long	SCOREPAL
BWORD:
	.word	36,8,0,0
	.long	02E7B9C0H
	.long	SCOREPAL
TSCORE:
	.word	127,27,0,0
	.long	02E7C2C0H
	.long	SCOREPAL
FIVE:
	.word	25,8,0,0
	.long	02E82EC0H
	.long	SCOREPAL
PHD1:
	.word	87,41,0,0
	.long	02E835C0H
	.long	SCOREPAL
PHD2:
	.word	87,41,0,0
	.long	02E8A680H
	.long	SCOREPAL
DROPIT:
	.word	68,33,0,0
	.long	02E91740H
	.long	SCOREPAL
TAKEIT:
	.word	90,34,0,0
	.long	02E95D60H
	.long	SCOREPAL
PATH:
	.word	97,18,0,0
	.long	02E9BF20H
	.long	SCOREPAL
PRESS2:
	.word	159,8,0,0
	.long	02E9F760H
	.long	SCOREPAL
MISN1:
	.word	68,18,0,0
	.long	02EA1F60H
	.long	SCOREPAL
TCWAY:
	.word	90,33,0,0
	.long	02EA45A0H
	.long	SCOREPAL
LOSSWAY:
	.word	98,28,0,0
	.long	02EAA480H
	.long	SCOREPAL
PHD2A:
	.word	87,41,0,0
	.long	02EAFC00H
	.long	SCOREPAL
BXTOP:
	.word	123,28,0,0
	.long	02EB6CC0H
	.long	SCOREPAL
BXMID:
	.word	123,60,0,0
	.long	02EBD940H
	.long	SCOREPAL
MISN2:
	.word	70,18,0,0
	.long	02ECC1C0H
	.long	SCOREPAL
MISN3:
	.word	70,18,0,0
	.long	02ECEA40H
	.long	SCOREPAL
YOUARE:
	.word	63,32,0,0
	.long	02ED12C0H
	.long	SCOREPAL
PAINFUL:
	.word	123,32,0,0
	.long	02ED52C0H
	.long	SCOREPAL
ORCUS:
	.word	104,22,0,0
	.long	02EDCEC0H
	.long	SCOREPAL
YOUARE2:
	.word	68,32,0,0
	.long	02EE1640H
	.long	SCOREPAL
SNEAK:
	.word	91,32,0,0
	.long	02EE5A40H
	.long	SCOREPAL
LV0:
	.word	15,9,0,0
	.long	02EEB640H
	.long	SCOREPAL
LV1:
	.word	15,9,0,0
	.long	02EEBAC0H
	.long	SCOREPAL
LV2:
	.word	15,9,0,0
	.long	02EEBF40H
	.long	SCOREPAL
LV3:
	.word	15,9,0,0
	.long	02EEC3C0H
	.long	SCOREPAL
LV4:
	.word	15,9,0,0
	.long	02EEC840H
	.long	SCOREPAL
LV5:
	.word	15,9,0,0
	.long	02EECCC0H
	.long	SCOREPAL
LV6:
	.word	15,9,0,0
	.long	02EED140H
	.long	SCOREPAL
LV7:
	.word	15,9,0,0
	.long	02EED5C0H
	.long	SCOREPAL
LV8:
	.word	15,9,0,0
	.long	02EEDA40H
	.long	SCOREPAL
LV9:
	.word	15,9,0,0
	.long	02EEDEC0H
	.long	SCOREPAL
USEBMB:
	.word	66,24,0,0
	.long	02EEE340H
	.long	SCOREPAL
FINDKEYS:
	.word	99,23,0,0
	.long	02EF1640H
	.long	SCOREPAL
BMB0:
	.word	30,10,0,0
	.long	02EF5E20H
	.long	SCOREPAL
BMB1:
	.word	30,10,0,0
	.long	02EF6820H
	.long	SCOREPAL
BMB2:
	.word	30,10,0,0
	.long	02EF7220H
	.long	SCOREPAL
BMB3:
	.word	30,10,0,0
	.long	02EF7C20H
	.long	SCOREPAL
BMB4:
	.word	30,10,0,0
	.long	02EF8620H
	.long	SCOREPAL
BMB5:
	.word	30,10,0,0
	.long	02EF9020H
	.long	SCOREPAL
BMB6:
	.word	30,10,0,0
	.long	02EF9A20H
	.long	SCOREPAL
BMB7:
	.word	30,10,0,0
	.long	02EFA420H
	.long	SCOREPAL
BMB8:
	.word	30,10,0,0
	.long	02EFAE20H
	.long	SCOREPAL
BMB9:
	.word	30,10,0,0
	.long	02EFB820H
	.long	SCOREPAL
PRESS:
	.word	34,18,0,0
	.long	02EFC220H
INSERT:
	.word	39,18,0,0
	.long	02EFD660H
TIMES:
	.word	6,5,0,0
	.long	02EFECE0H
DCLR:
	.word	95,11,0,0
	.long	02F22AE0H
	.long	DIAGP
FIEND1:
	.word	23,40,16,-8
	.long	02F24BE0H
	.long	FNDP
SHAD1:
	.word	17,11,9,-41
	.long	02F269E0H
	.long	FNDP
FNDSIT:
	.word	29,24,1,-46
	.long	02F270C0H
	.long	FNDP
FNDSITB:
	.word	29,24,1,-46
	.long	02F270C0H
	.long	FNDPRED
FNDSITC:
	.word	29,24,1,-46
	.long	02F270C0H
	.long	FNDPBLU
FNDSITD:
	.word	29,24,1,-46
	.long	02F270C0H
	.long	FNDPGRN
FNDSITE:
	.word	29,24,1,-46
	.long	02F270C0H
	.long	FNDPPUR
FNDJUMP12C1:
	.word	28,51,13,1
	.long	02F288C0H
FNDJUMP12C2:
	.word	29,55,13,2
	.long	02F2B560H
FNDJUMP6C1:
	.word	28,50,14,0
	.long	02F2EC60H
FNDJUMP6C2:
	.word	30,57,15,2
	.long	02F31820H
FIEND2:
	.word	21,40,13,-8
	.long	02F35120H
FIEND3:
	.word	24,40,13,-8
	.long	02F36F20H
FIEND4:
	.word	23,40,14,-8
	.long	02F38D20H
FIEND5:
	.word	24,40,14,-8
	.long	02F3AB20H
FIEND6:
	.word	24,41,13,-8
	.long	02F3C920H
FIEND7:
	.word	22,40,13,-8
	.long	02F3E7E0H
FNSTND6:
	.word	26,46,14,-8
	.long	02F405E0H
FNSTND7:
	.word	20,42,11,-8
	.long	02F42E20H
FNSTND9:
	.word	17,42,7,-8
	.long	02F44860H
FNSTND12:
	.word	23,42,11,-9
	.long	02F462A0H
FSQUAT6:
	.word	36,45,19,-9
	.long	02F48220H
FSQUAT6A:
	.word	33,43,17,-11
	.long	02F4B4C0H
FSQUAT7:
	.word	24,45,12,-9
	.long	02F4E520H
FSQUAT7A:
	.word	26,42,12,-9
	.long	02F506E0H
FSQUAT9:
	.word	18,44,8,-9
	.long	02F52BA0H
FSQUAT9A:
	.word	19,43,9,-10
	.long	02F54720H
FSQUAT10:
	.word	23,43,13,-11
	.long	02F56200H
FSQUAT10A:
	.word	23,42,13,-12
	.long	02F58240H
FSQUAT12A:
	.word	27,39,13,-12
	.long	02F5A1C0H
FNSTND10:
	.word	18,45,10,-9
	.long	02F5C3E0H
FJUMP6A:
	.word	31,45,16,-9
	.long	02F5E000H
FJUMP6B:
	.word	31,43,16,-11
	.long	02F60D00H
FJUMP6C:
	.word	25,44,13,-2
	.long	02F63800H
FJUMP12A:
	.word	27,41,13,-10
	.long	02F65E80H
FJUMP12B:
	.word	29,39,14,-11
	.long	02F68260H
FJUMP12C:
	.word	23,44,11,-2
	.long	02F6A960H
GRNTFLM1:
	.word	26,51,15,13
	.long	0308F1A0H
	.long	RDBOOM
CLD1:
	.word	9,9,4,4
	.long	03091E40H
	.long	BLUBOOM
CLD1A:
	.word	9,9,4,4
	.long	03091E40H
	.long	GREYPAL
OKBM1:
	.word	12,11,6,5
	.long	030921A0H
	.long	RDBOOM
BBS1:
	.word	4,5,1,2
	.long	030925C0H
	.long	RDBOOM
bldclt1:
	.word	3,4,0,-20
	.long	03092660H
	.long	RDBOOM
CLDB1:
	.word	12,11,6,20
	.long	030926E0H
	.long	BLUBOOM
CLDB1YELL:
	.word	12,11,6,20
	.long	030926E0H
	.long	YELLPAL
CLDB1WHT:
	.word	12,11,6,20
	.long	030926E0H
	.long	WHTPAL
CLDB1ORNG:
	.word	12,11,6,20
	.long	030926E0H
	.long	ORNGPAL
CLDB1LGRY:
	.word	12,11,6,20
	.long	030926E0H
	.long	LGRYPAL
CLDB1GRN:
	.word	12,11,6,20
	.long	030926E0H
	.long	GRNPAL
CLDB1PURP:
	.word	12,11,6,20
	.long	030926E0H
	.long	PURPPAL
GRNTFLM2:
	.word	18,50,11,13
	.long	03092B00H
GRNTFLM3:
	.word	15,54,10,17
	.long	03094A40H
GRNTFLM4:
	.word	11,62,8,27
	.long	03096540H
GRNTFLM5:
	.word	8,60,5,26
	.long	03097C80H
GRNTFLM6:
	.word	5,43,6,13
	.long	03098B80H
OKBM2:
	.word	22,22,11,11
	.long	03099640H
OKBM3:
	.word	33,32,16,16
	.long	0309A6C0H
OKBM4:
	.word	34,34,18,18
	.long	0309CAC0H
OKBM5:
	.word	34,34,17,18
	.long	0309F100H
OKBM6:
	.word	31,29,16,14
	.long	030A1740H
OKBM7:
	.word	30,30,16,15
	.long	030A3440H
BBS2:
	.word	6,7,2,3
	.long	030A5240H
BBS3:
	.word	11,9,5,4
	.long	030A5400H
BBS4:
	.word	17,13,7,5
	.long	030A5760H
BBS5:
	.word	26,21,12,9
	.long	030A5F80H
CLD2:
	.word	25,29,12,15
	.long	030A71E0H
CLD3:
	.word	29,32,15,17
	.long	030A8B40H
CLD4:
	.word	25,31,13,18
	.long	030AAB40H
CLD4A:
	.word	28,37,14,26
	.long	030AC660H
CLD4B:
	.word	32,38,17,29
	.long	030AE6C0H
CLD5:
	.word	36,34,19,30
	.long	030B0CC0H
CLD6:
	.word	36,36,20,32
	.long	030B3300H
CLD7:
	.word	36,36,20,32
	.long	030B5B80H
CLD8:
	.word	32,32,18,31
	.long	030B8400H
CLD9:
	.word	30,29,17,28
	.long	030BA400H
CLD10:
	.word	29,30,15,29
	.long	030BC100H
CLD11:
	.word	29,30,16,29
	.long	030BDF00H
bldclt2:
	.word	4,5,1,-20
	.long	030BFD00H
bldclt3:
	.word	8,9,2,-19
	.long	030BFDA0H
bldclt4:
	.word	14,15,3,-17
	.long	030BFFE0H
bldclt5:
	.word	20,21,6,-14
	.long	030C0760H
bldclt6:
	.word	20,22,6,-13
	.long	030C1480H
bldclt7:
	.word	26,28,8,-11
	.long	030C2240H
bldclt8:
	.word	33,30,13,-10
	.long	030C3AC0H
rblot9:
	.word	8,6,3,-21
	.long	030C5C80H
rblot10:
	.word	7,5,3,-22
	.long	030C5E00H
rblot1:
	.word	3,4,1,-22
	.long	030C5F40H
rblot2:
	.word	5,6,2,-22
	.long	030C5FC0H
rblot3:
	.word	12,8,6,-22
	.long	030C6140H
rblot4:
	.word	12,13,6,-19
	.long	030C6440H
rblot5:
	.word	9,16,4,-17
	.long	030C6920H
rblot6:
	.word	10,15,5,-17
	.long	030C6F20H
rblot7:
	.word	13,10,6,-19
	.long	030C74C0H
rblot8:
	.word	10,5,5,-22
	.long	030C79C0H
CLDB2:
	.word	22,22,13,25
	.long	030C7BA0H
CLDB3:
	.word	28,30,16,28
	.long	030C8C20H
CLDB4:
	.word	32,31,17,29
	.long	030CA660H
XPLD1:
	.word	58,56,30,29
	.long	030CC560H
	.long	RDBOOM
X1BLU:
	.word	58,56,30,29
	.long	030CC560H
	.long	BLUBOOM
X1GRN:
	.word	58,56,30,29
	.long	030CC560H
	.long	GRNBOOM
GNFR1:
	.word	25,25,12,13
	.long	030D2E60H
	.long	RDBOOM
LFLM1:
	.word	26,52,13,-8
	.long	030D4440H
	.long	RDBOOM
FLM1:
	.word	48,61,29,-20
	.long	030D71C0H
	.long	RDBOOM
JTFLM1:
	.word	31,30,19,-12
	.long	030DCD40H
	.long	BLUBOOM
XPLD2:
	.word	69,66,35,37
	.long	030F28C0H
XPLD3:
	.word	83,81,42,54
	.long	030FBD40H
XPLD4:
	.word	88,88,45,63
	.long	031091E0H
XPLD5:
	.word	87,87,45,69
	.long	031183E0H
XPLD6:
	.word	86,85,43,71
	.long	03127320H
XPLD7:
	.word	87,84,44,80
	.long	03135CE0H
XPLD8:
	.word	87,84,42,85
	.long	031443E0H
XPLD9:
	.word	85,79,42,87
	.long	03152AE0H
XPLD10:
	.word	75,65,37,85
	.long	03160420H
LFLM2:
	.word	35,54,13,-6
	.long	03169E80H
LFLM3:
	.word	31,64,12,4
	.long	0316DB40H
LFLM4:
	.word	33,62,12,3
	.long	03171B40H
LFLM5:
	.word	35,63,15,4
	.long	03176100H
LFLM6:
	.word	29,64,15,5
	.long	0317A7E0H
JTFLM2:
	.word	27,22,15,-16
	.long	0317E7E0H
FLM2:
	.word	65,64,32,-17
	.long	0317FB20H
FLM3:
	.word	55,71,32,-10
	.long	03188320H
FLM4:
	.word	60,68,30,-13
	.long	0318FF60H
FLM5:
	.word	63,69,33,-12
	.long	03197EE0H
FLM6:
	.word	53,71,35,-11
	.long	031A08E0H
GNFR2:
	.word	19,20,9,10
	.long	031A8520H
GNFR3:
	.word	12,12,6,6
	.long	031A91A0H
PLFR1:
	.word	38,52,20,5
	.long	031A9620H
PLFR2:
	.word	31,61,18,14
	.long	031AD720H
PLFR3:
	.word	30,67,18,20
	.long	031B1420H
PLFR4:
	.word	31,66,18,19
	.long	031B5720H
PLFR5:
	.word	30,75,18,28
	.long	031B9920H
PLFR6:
	.word	30,68,18,21
	.long	031BE420H
PLFR7:
	.word	30,57,18,10
	.long	031C2820H
PLFR8:
	.word	32,39,20,-8
	.long	031C6120H
PLFR9:
	.word	32,36,21,-11
	.long	031C8820H
PLFR10:
	.word	32,31,22,-16
	.long	031CAC20H
PLFR11:
	.word	31,28,24,-18
	.long	031CCB20H
PLFR12:
	.word	30,27,25,-22
	.long	031CE720H
PLFR13:
	.word	30,27,25,-26
	.long	031D0220H
PLFR14:
	.word	38,34,33,-28
	.long	031D1D20H
PLFR15:
	.word	47,34,42,-36
	.long	031D47A0H
PLFR16:
	.word	46,41,41,-29
	.long	031D7AA0H
PLFR17:
	.word	46,46,41,-24
	.long	031DB820H
PLFR18:
	.word	44,51,41,-18
	.long	031DFD20H
PLFR19:
	.word	40,56,38,-13
	.long	031E4340H
PLFR20:
	.word	39,60,38,-6
	.long	031E8940H
PLFR21:
	.word	37,57,37,0
	.long	031ED440H
PLFR22:
	.word	37,58,37,7
	.long	031F1B80H
PLFR23:
	.word	37,56,37,12
	.long	031F6400H
PLFR24:
	.word	1,33,17,15
	.long	031FAA00H
PLFR25:
	.word	1,21,17,17
	.long	031FAE20H
IPIECE:
	.word	72,20,73,-29
	.long	031FB0C0H
	.long	PLLT
IPC2:
	.word	23,17,41,-32
	.long	031FDDC0H
	.long	PLLT
TPHD:
	.word	47,23,48,-6
	.long	031FEA80H
	.long	PLLT
UPPRJAW:
	.word	72,36,73,-49
	.long	03200D00H
	.long	PLLT
INNRMTH:
	.word	72,28,73,-59
	.long	03205E00H
	.long	PLLT
CHK1:
	.word	19,42,92,-45
	.long	03209D00H
	.long	PLLT
CHK2:
	.word	19,42,92,-45
	.long	0320B740H
	.long	PLLT
CHK3:
	.word	19,42,92,-45
	.long	0320D180H
	.long	PLLT
CHK3A:
	.word	8,31,81,-87
	.long	0320EBC0H
	.long	PLLT
CHK2A:
	.word	6,23,79,-87
	.long	0320F380H
	.long	PLLT
SOLDR1:
	.word	91,111,43,-20
	.long	0320F940H
	.long	SOLDB
BOD1:
	.word	91,80,92,-87
	.long	03223860H
	.long	PLLT
BOD1A:
	.word	91,80,43,-5
	.long	03223860H
	.long	PLLT
BOD2:
	.word	55,95,147,-72
	.long	03231E60H
	.long	PLLT
BOD2A:
	.word	55,95,31,-5
	.long	03231E60H
	.long	PLLT
BTTMJAW:
	.word	72,80,73,-64
	.long	0323C4A0H
	.long	PLLT
BTJ2:
	.word	72,80,73,-83
	.long	0323C4A0H
	.long	PLLT
BTJ3:
	.word	72,80,73,-90
	.long	0323C4A0H
	.long	PLLT
SOLDR3:
	.word	60,48,28,-6
	.long	032478A0H
SOLDR4:
	.word	50,75,54,-35
	.long	0324D2A0H
IPC3:
	.word	23,17,41,-32
	.long	03254C80H
IPC4:
	.word	23,17,41,-32
	.long	03255940H
IPC5:
	.word	23,17,41,-32
	.long	03256600H
IPC1A:
	.word	23,17,41,-32
	.long	032572C0H
IRAQMAP1:
	.word	158,190,0,0
	.long	03257F80H
	.long	MAPP
IRAQMAP2:
	.word	217,190,0,0
	.long	03293580H
	.long	MAPP
MISSION1:
	.word	78,132,0,0
	.long	032E4FC0H
	.long	MAPP
MISSION2:
	.word	78,132,0,0
	.long	032F99C0H
	.long	MAPP
MISSION3:
	.word	84,95,0,0
	.long	0330E3C0H
	.long	MAPP
POINTER:
	.word	68,38,0,0
	.long	0331DD20H
	.long	DOMEP
PDOME:
	.word	44,29,0,0
	.long	03322DE0H
	.long	DOMEP
DPC2:
	.word	79,63,0,0
	.long	033255C0H
	.long	DISHPAL
DPC3:
	.word	25,33,0,0
	.long	0332F340H
	.long	DISHPAL
DPC4:
	.word	89,79,0,0
	.long	03331020H
T72BLAST1:
	.word	21,22,10,-3
	.long	0333F340H
	.long	TNKPAL
FNDGUN9A:
	.word	56,25,48,-23
	.long	033403C0H
	.long	TNKPAL
T72TURET1:
	.word	8,74,3,-72
	.long	03342F80H
	.long	TNKPAL
TNKTRED1:
	.word	9,97,44,-17
	.long	03344200H
	.long	TNKPAL
TNKTRED1A:
	.word	30,8,45,-114
	.long	03346660H
	.long	TNKPAL
TNKSHAD1:
	.word	97,17,40,-112
	.long	03346E60H
	.long	TNKPAL
TNKSHAD2:
	.word	14,91,-9,-41
	.long	0334A380H
	.long	TNKPAL
TNKBUL:
	.word	5,21,0,0
	.long	0334D100H
	.long	TNKPAL
GUNBUL:
	.word	10,9,5,4
	.long	0334D640H
	.long	TNKPAL
T72TNK:
	.word	80,104,39,-10
	.long	0334D9A0H
	.long	TNKPAL
T72BLAST2:
	.word	30,31,14,-3
	.long	0335DDA0H
	.long	TNKPAL
ABLST1:
	.word	21,17,11,8
	.long	0335FCA0H
	.long	TNKPAL
T72BLAST3:
	.word	49,44,24,-4
	.long	03360960H
T72BLAST4:
	.word	48,41,24,-5
	.long	033650E0H
T72BLAST5:
	.word	47,40,23,-5
	.long	03368E60H
T72BLAST6:
	.word	47,38,24,-5
	.long	0336CA60H
T72BLAST7:
	.word	46,38,23,-5
	.long	03370360H
ABLST3:
	.word	49,44,25,22
	.long	03360960H
ABLST4:
	.word	48,41,26,22
	.long	033650E0H
ABLST5:
	.word	47,40,24,22
	.long	03368E60H
ABLST6:
	.word	47,38,23,21
	.long	0336CA60H
ABLST7:
	.word	46,38,25,21
	.long	03370360H
T72BLAST8:
	.word	46,38,23,-5
	.long	03373C60H
ABLST2:
	.word	30,25,15,13
	.long	03377560H
FNDGUN10A:
	.word	56,30,47,-17
	.long	03378E60H
FNDGUN10B:
	.word	64,36,55,-11
	.long	0337C2E0H
FNDGUN115A:
	.word	33,46,19,-1
	.long	03380AE0H
FNDGUN115B:
	.word	41,56,26,9
	.long	03383EA0H
FNDGUN11A:
	.word	43,45,33,-2
	.long	03388BA0H
FNDGUN11B:
	.word	47,49,37,2
	.long	0338C980H
FNDGUN12A:
	.word	25,47,13,0
	.long	03391300H
FNDGUN12B:
	.word	29,55,15,8
	.long	03393C20H
FNDGUN6A:
	.word	30,53,15,-23
	.long	03397320H
FNDGUN6B:
	.word	28,60,14,-23
	.long	0339A820H
FNDGUN7A:
	.word	32,48,22,-23
	.long	0339DCA0H
FNDGUN7B:
	.word	37,55,27,-23
	.long	033A0CA0H
FNDGUN85A:
	.word	55,34,44,-23
	.long	033A5160H
FNDGUN85B:
	.word	62,39,51,-23
	.long	033A8CE0H
FNDGUN8A:
	.word	44,43,35,-23
	.long	033ADAE0H
FNDGUN8B:
	.word	51,50,42,-23
	.long	033B1600H
FNDGUN9B:
	.word	67,26,59,-23
	.long	033B6740H
T72TNK2:
	.word	100,112,45,-11
	.long	033B9E80H
T72TURET2:
	.word	8,67,3,-72
	.long	033CFC80H
TNKTRED2:
	.word	9,97,44,-17
	.long	033D0D40H
TNKTRED2A:
	.word	30,8,45,-114
	.long	033D31A0H

	.include BGNDTBL.GLO
