	.TITLE	"TOTAL CARNAGE"
	.WIDTH	132
	.OPTION	B,D,L,T
	.MNOLIST
;
; INITIATED:		 APRIL 26,1989
; MODIFIED:		 !
; SOFTWARE:		 MARK TURMELL
;
; COPYRIGHT (C) 1989 WILLIAMS ELECTRONICS GAMES, INC.
;
;
; GET THE SYSTEM STUFF

	.INCLUDE	"MPROC.EQU"		;MPROC EQUATES
	.INCLUDE	"DISP.EQU"		;DISPLAY PROC. EQUATES
	.include	"sys.inc"	;z unit system equates
	.include	"macros.hdr"	;macros definitions
	.INCLUDE	"IMGTBL.GLO"
	.INCLUDE	"GAME.EQU"
	.INCLUDE	"MAC2.ASM"		;MACRO 2 DEFINITIONS
	.INCLUDE	"AUDIT.EQU"
;
;SOUND
;
;
;SYMBOLS EXTERNALLY DEFINED
;
	.REF	RANGRAND,HALT,OBJON,OBJOFF,RANDPER,P1DATA,P2DATA,INAWARP
	.REF	GPALOBJ,STFOBJ,INSOBJ,PLYROBJS,FRANIM
	.REF	CURRENT,WAVE,GAMSTATE,COLCYC

	.REF	HULK_DN,LOTS_FLAG,BOSS,STATUS
	.REF	MAXHULK,MAXLYR,MAXAHMD,MAXFND,MAXSKPR,SPAWN_MOM
	.REF	SPAWN_HULKS,SPAWN_RUNNR,SPAWN_JEEPS,SKIPR_DN
	.REF	SPAWN_FND,SPAWN_LYR,SPAWN_AHMD,SPAWN_T72,SPAWN_SKIPR,SPAWN_SNEUT2
	.REF	SPAWN_SNEUT,SPAWN_JEEPS2,HTYPE

;
;SYMBOLS DEFINED IN THIS FILE
;
	.DEF	GET_VALID_XY,ICN3,ICONS_DN,ICN4,KEYS_LOST,ICN5,ICN6,ICN7
	.DEF	SEND_ICON,ICN1,FREETOT,ICLIST,CLEANUP,IP,DO_ALL_STUFF,ICN2
	.DEF	WAVE_RAM,DOLORD,ICN8
;
;UNINITIALIZED RAM DEFINITIONS
;
	.BSS	WAVE_RAM,6*16*10	;6=ELEMENTS,16=WORD SIZE

	.BSS	TMP,16
	.BSS	KEYS_LOST,16		;TOTAL KEYS LOST FOR BOTH PLAYERS
	.BSS	ICONS_DN,16
	.BSS	FREETOT,16		;FREE MEN COLLECTED
	.BSS	ICLIST,32
	.BSS	PALTMP,16*32*2 		;ALLOCATE 2 X COLOR AREA IN RAM

	.TEXT

DO_ALL_STUFF
	CALLA	GPALOBJ			;ALLOCATE A COLOR PALETTE
	CALLA	STFOBJ			;STUFF OBJECT DATA
	MOVE	A13,*A0(OPLINK),L
	CALLA	INSOBJ			;INSERT OBJECT INTO LIST
	RETS

;SEND_ICON - PUT A RANDOM ICON TYPE ONTO PLAYFIELD AT VALID SPOT
;ICLIST POINTS TO CURRENT SELECTION LIST OF ICONS!  THIS IS CHANGED WHEN
;RECTANGLE COLLISIONS ARE CHANGED.
SEND_ICON:
	SLEEP	4*60
	CLR	A0
	MOVE	A0,@ICONS_DN
ICONLUP	MOVE	@ICONS_DN,A0
	JRNZ	IDIE
	MOVE	@HALT,A0
	JRNE	NOKZ			;IF HALT ON, SKIP THIS
	MOVK	030,A9			;ICON 20 WIDE
	CALLR	GET_VALID_XY
	JRNC	GOOD
AGAIN	SLEEPK	4			;ON HEAD, TRY AGAIN
	JRUC	ICONLUP
NOKZ	SLEEP	3*60			;4
	JRUC	ICONLUP

GOOD:
;A10,A11 ARE VALID
	MOVE	@ICLIST,A9,L		;RAM PNTR TO CURRENT ICON LIST
	CLR	B0
	MOVK	30,B1
	CALLA	RANGRAND
;NEVER A 0
	SLL	3,A0
	ADD	A9,A0			;RANDOM ICON NOW SELECTED
	MOVB	*A0,A14
;	MOVK	GRENX,A14
;	MOVK	NSTPX,A14
	JRZ	NOKZ
	CMPI	XTRAX,A14
	JRNE	NOX
;TRYING TO PLACE AN EXTRA MAN ICON!  SHOULD I?
	MOVE	@FREETOT,A0
	CMPI	2,A0		   ;2	;3 PER CIRCUIT CAN BE PICKED UP!
	JRGT	AGAIN
	MOVI	100,A0
	CALLA	RANDPER
	JRNC	AGAIN
NOX
	CMPI	KEYX,A14
	JRNE	NOXA
;TRYING TO PLACE A KEY ICON!  SHOULD I?
	MOVE	@INAWARP,A0
	JRZ	AGAIN
NOXA
	SLL	5,A14
	ADDI	ICINIT,A14
	MOVE	*A14,A14,L
	CALLR	DO_ALL_STUFF
	MOVE	A0,A8
	MOVE	A10,*A8(OYPOS),W
	MOVE	A11,*A8(OXPOS),W
WAITAA
;A9=COLOR TO FLASH WITH
;A8=IMAGE PNTR TO FLASH
;FLASH MORE?
	MOVK	8,A11
FLP	MOVE	*A8(OPAL),A10,L
	ORI	09090000H,A10
	MOVE	A10,*A8(OPAL),L
	MOVE	*A8(OFLAGS),A0,W
	ORI	8,A0
	MOVE	A0,*A8(OFLAGS),W
	SLEEPK	2
	ANDI	0FFFFH,A10
	MOVE	A10,*A8(OPAL),L
	MOVE	*A8(OFLAGS),A0,W
	ANDI	0FFF7H,A0
	MOVE	A0,*A8(OFLAGS),W
	SLEEPK	5
	DSJ	A11,FLP
	SLEEP	4*54-0			;ABOUT 3 1/2 SECONDS ON SCREEN!
	MOVE	@HALT,A0
	JRNZ	WAITAA
;BLINK ICON
WAITB
	MOVK	7,A10
;ABOUT 1 SECOND OF BLINK
BK
	MOVE	A8,A0
	CALLA	OBJOFF
	SLEEPK	5
	MOVE	A8,A0
	CALLA	OBJON
	SLEEPK	5
	DSJS	A10,BK
	SLEEPK	30

	MOVE	*A8(OIMG),A0
	CMPI	KEY,A0
	JRNZ	IPIP

	MOVE	@KEYS_LOST,A0		;KEY ICONS NOT PICKED UP
	INC	A0
	MOVE	A0,@KEYS_LOST

;WHEN AN ICON IS PICKED UP, SEND ITS PROCESS TO HERE SO IT MAY BE CLEANED UP!
IPIP	MOVE	A8,A0
	CALLA	DELOBJ			;ICONS NOW GONE FOREVER!
IP
	SLEEP	140			;70
;TIE THIS SLEEP IN WITH DIFFICULTY SETTING!

;MAYBE PLACE SOME BOMBS DOWN
	MOVE	@P1DATA+BMB_CNT,A0
	MOVE	@P2DATA+BMB_CNT,A1
	ADD	A0,A1
	CMPI	6,A1		;5
	JRGT	NOBMB
;MAYBE DROP SOME BOMBS
	MOVI	550,A0
	CALLA	RANDPER
	JRNC	NOBMB
	ANDI	03,A0
;A0=BMB # TO LAYDOWN
	MOVE	A0,A9
	JRNZ	NOMOD
	MOVK	1,A9
NOMOD	CREATE	CMAN,LAYBMB
NOBMB
;TRY TO LAY SOME JEWELS DOWN
	MOVE	@WAVE,A0
	SLL	4,A0
	ADDI	CASHTBL,A0
	MOVE	*A0,A0
	JRZ	ICONLUP		;DON'T WANT ANY IN THIS AREA!
	CALLA	RANDPER
	JRNC	ICONLUP
;ANY ON SCREEN?
	CLR	A1
	NOT	A1
	MOVI	CLSNEUT|TYPICON|SUBCSH,A0
	CALLA	EXISTOBJ
	JRNZ	ICONLUP
;NO CASH ON SCREEN!  LETS GET SOME.
;CHECK TO SEE IF ICONPID IS STILL AROUND.
;IF NOT, THEN PLYRS ARE LEAVING ARENA

	MOVE	@GAMSTATE,A0
	CMPI	INAMODE,A0
	JRZ	ICONLUP

	CREATE	CMAN,SEND_CSH
	JRUC	ICONLUP

;CASH PILE PERCENTAGE FOR CIRCUIT 1 WAVES.
CASHTBL		.WORD	0,500,500,40,210,0,300,300,300,300	;WAVE #
		.WORD	500,150,150,0,250,300,0,150,0
		.WORD	500,500,40,250,0,0,300,50,0
		.WORD	500,500,40,250,0,300,300,300,300

;DO JEWELS ON GROUND
SEND_CSH
	SLEEP	120

LAYJWL	MOVE	@HALT,A0
	JRNE	AAIN		       ;IF HALT ON, SKIP THIS
	MOVI	090,A9			;JEWEL AREA 75 WIDE X 75 HIGH
	CALLR	GET_VALID_XY
	JRNC	AGOOD2
AAIN	SLEEPK	4			;ON HEAD OR IN RECTANGLE, TRY AGAIN
	JRUC	LAYJWL

AGOOD2
;A10=UPLFT X OF AREA
;A11=UPLFT Y OF AREA
	SWAP	A10,A11
	CLR	A0
	MOVE	A0,@TMP
	MOVK	8,B0		;10
	MOVK	20,B1		;25
	CALLA	RANGRAND
	MOVE	A0,A9		;A9=# OF CASH ITEMS TO LAY DOWN
	CMPI	16,A0		;19
	JRNC	LPQ
	ANDI	07,A0
	INC	A0
	MOVE	A0,@TMP
LPQ
	CLR	B0
	MOVI	75,B1
	CALLA	RANGRAND
	MMTM	SP,A10,A11
	ADD	A0,A10

	CLR	B0
	MOVI	50,B1
	CALLA	RANGRAND
	ADD	A0,A11
	MOVE	@TMP,A1
	JRZ	LPQ1
;SINGLES TO BE DISPERSED!
	MOVE	A1,A0
	SLL	5,A0
	ADDI	CZ2LST,A0
	JRUC	LPQ2
LPQ1	ANDI	07,A0
	SLL	5,A0
	ADDI	CZLST,A0
LPQ2	MOVE	*A0,A14,L
	CALLA	DO_ALL_STUFF
	MOVE	A0,A8
	MOVE	A10,*A8(OXPOS),W
	MOVE	A11,*A8(OYPOS),W
	MMFM	SP,A10,A11
	MOVE	*A8(OIMG),A0,L
	CMPI	USFLG,A0
	JRZ	USS
	CREATE	CMAN,ANIJEW
USS	SLEEPK	4			;3
	DEC	A9
	JRNZ	LPQ
IDIE	DIE
ANIJEW	MOVE	*A8(OIMG),A0,L
	MOVI	JM1,A9
	CMPI	JEM1,A0
	JRZ	DOJ
	CMPI	JEM2,A0
	JRZ	AX2
	MOVI	JM3,A9
DOJ
	MOVE	A9,A10
DOJ0	CLR	A1
	JSRP	FRANIM
	JRC	DOJ1
 	MOVE	*A8(OZPOS),A0
	CMPI	500,A0
	JRZ	EXT
	JRUC	DOJ0
DOJ1	
	SLEEPK	10
	MOVE	A10,A9
DOJ2	CLR	A1
	JSRP	FRANIM
	JRC	EXT
 	MOVE	*A8(OZPOS),A0
	CMPI	500,A0
	JRZ	EXT
	JRUC	DOJ2
EXT
	DIE
AX2	MOVI	JM2,A9
	JRUC	DOJ
JM1
	.LONG	JEM1
	.WORD	4
	.LONG	JEM1B
	.WORD	4
	.LONG	JEM1C
	.WORD	4
	.LONG	JEM1D
	.WORD	4
	.LONG	JEM1C
	.WORD	4
	.LONG	JEM1B
	.WORD	4
	.LONG	0
JM2	.LONG	JEM2B
	.WORD	4
	.LONG	JEM2C
	.WORD	4
	.LONG	JEM2D
	.WORD	4
	.LONG	JEM2C
	.WORD	4
	.LONG	JEM2B
	.WORD	4
	.LONG	JEM2
	.WORD	4
	.LONG	0
JM3	.LONG	JEM3B
	.WORD	4
	.LONG	JEM3C
	.WORD	4
	.LONG	JEM3D
	.WORD	4
	.LONG	JEM3C
	.WORD	4
	.LONG	JEM3B
	.WORD	4
	.LONG	JEM3
	.WORD	4
	.LONG	0

CZLST	.LONG	CASH0,CNS0,GLD0,USFLG0,USFLG0,USFLG0,CASH0,CNS0
CZ2LST	.LONG	0,CASH0,GLD0,CNS0,USFLG0,USFLG0,CASH0,GLD0,USFLG0
CNS0:
	.LONG	0,0,JEM1
;	.WORD	70,DMAWNZ|M_NOCOLL,CLSNEUT|TYPICON|SUBCSH
	.WORD	70,DMAWNZ,CLSNEUT|TYPICON|SUBCSH
	.LONG	0,0
USFLG0:
	.LONG	0,0,USFLG
	.WORD	70,DMAWNZ,CLSNEUT|TYPICON|SUBCSH
	.LONG	0,0
GLD0:
	.LONG	0,0,JEM2
;	.WORD	70,DMAWNZ|M_NOCOLL,CLSNEUT|TYPICON|SUBCSH
	.WORD	70,DMAWNZ,CLSNEUT|TYPICON|SUBCSH
	.LONG	0,0
CASH0:
	.LONG	0,0,JEM3
;	.WORD	70,DMAWNZ|M_NOCOLL,CLSNEUT|TYPICON|SUBCSH
	.WORD	70,DMAWNZ,CLSNEUT|TYPICON|SUBCSH
	.LONG	0,0

CLEANUP
;WHEN AN ICON IS PICKED UP, SEND ITS PROCESS TO HERE SO IT MAY BE CLEANED UP!
	MOVE	A8,A0
	CALLA	DELOBJ			;ICONS NOW GONE FOREVER!
	MOVE	A9,A0		;STILL SLEEP APPROX WHAT WAS TO HAPPEN
	CALLA	PRCSLP
	JRUC	IP

GET_VALID_XY:
;A9=SUB VALUE FROM RIGHT EDGE
	MOVK	10,B0
	MOVI	400,A0
	SUB	A9,A0
	MOVE	A0,B1
	CALLA	RANGRAND
	MOVE	A0,A11			;A11=X POSITION
	MOVK	10,B0
	MOVI	260,A0
	SUB	A9,A0
	MOVE	A0,B1
	CALLA	RANGRAND
	MOVE	A0,A10			;A10=Y POS
	MOVE	@PLYROBJS,A0,L
	JRZ	A
	CALLR	CK_HDS
	JRC	NOK
A	MOVE	@PLYROBJS+32,A0,L
	JRZ	OK
	CALLR	CK_HDS
	JRNC	OK
NOK
	SETC
	RETS
OK:
;WILL NOT LAND ON ANYONES HEAD
;NOW CHECK PLAYERS CURRENT RECTANGLES!
	MOVE	@WORLDTLX,A0,L
	SRL	16,A0
	ADD	A0,A11
	MOVE	@WORLDTLY,A0,L
	SRL	16,A0
	ADD	A0,A10
	MOVE	@CURRENT,A0,L		;CURRENT RECT LIST
	JRZ	OUT
NEXT0	MOVE	*A0+,A1,W
	JRZ	OUT
	SUB	A9,A1			;ICON 20 PIXELS WIDE
	CMP	A1,A11
	JRLT	NEXT			;IF BRNCH RECT LFT EDGE > PLYR X
	MOVE	*A0+,A1,W
	SUB	A9,A1
	CMP	A1,A10
	JRLT	NEXTA			;IF BRNCH RECT TOP EDGE > PLYR Y
	MOVE	*A0+,A1,W
	CMP	A1,A11
	JRGT	NEXTB			;IF BRNCH RECT RGT EDGE < PLYR X
	MOVE	*A0+,A1,W
	ADDK	20,A1			;GET ICON OFF TOP WALLS ;10
	CMP	A1,A10
	JRGT	NEXT0			;IF BRNCH RECT BOT EDGE < PLYR Y
;TOUCHING WALL RECTANGLE
	JRUC	NOK

NEXT	ADDI	48,A0
	JRUC	NEXT0
NEXTA	ADDK	32,A0
	JRUC	NEXT0
NEXTB	ADDK	16,A0
	JRUC	NEXT0

OUT
;NOT IN RECTANGLE
	CLRC
	RETS

LAYBMB
	MOVI	60,B0
	MOVI	5*60,B1
	CALLA	RANGRAND
	CALLA	PRCSLP
;A9=1-3
;LAY DOWN 1,2,3 BOMBS
;BLINK THEM OUT AFTER A TIME
;DIE
	MOVE	@HALT,A0
	JRNE	GAIN			;IF HALT ON, SKIP THIS
	PUSH	A9
	MOVK	029,A9			;DOUBLE BOMB WIDTH 20 WIDE
	CALLR	GET_VALID_XY
	PULL	A9
	JRNC	GOOD2
GAIN	SLEEPK	4			;ON HEAD OR IN RECTANGLE, TRY AGAIN
	JRUC	LAYBMB

GOOD2:
;A10,A11 ARE VALID
;LAY DOWN A9 BOMBS
	CREATE	CMAN,WAITBMB
	DSJS	A9,GOOD2
	DIE

XYADJ	.LONG	0,[0,0],[0,16],[12,8]

WAITBMB
	MOVE	A9,A0
	SLL	5,A0
	ADDI	XYADJ,A0
	MOVE	*A0,A0,L
	MOVY	A0,A1
	SRL	16,A1
	ADD	A1,A10
	ANDI	0FFH,A0
	ADD	A0,A11
	MOVI	BMBIMG,A14
	CALLR	DO_ALL_STUFF
	MOVE	A0,A8
	MOVE	A10,*A8(OYPOS),W
	MOVE	A11,*A8(OXPOS),W
WAB
	SLEEP	5*54-50			;ABOUT 3 1/2 SECONDS ON SCREEN!
	MOVE	@HALT,A0
	JRNZ	WAB
;BLINK BMB
WAITBM
	MOVK	7,A10
;ABOUT 1 SECOND OF BLINK
BKM
	MOVE	A8,A0
	CALLA	OBJOFF
	SLEEPK	5
	MOVE	A8,A0
	CALLA	OBJON
	SLEEPK	5
	DSJS	A10,BKM
	SLEEPK	30
	MOVE	A8,A0
	CALLA	DELOBJ
	DIE


CK_HDS:
;DON'T LAND ON PLAYERS HEAD!
;CHECK BOTH PLAYER 1 AND 2
;	MOVB	@BOSSON,A2
;	JRNZ	ICONOK
	MOVE	*A0(OYVAL),A2,L
	MOVE	*A0(OXVAL),A3,L
	MOVE	@WORLDTLY,A4,L
	MOVE	@WORLDTLX,A5,L
	SUB	A4,A2
	SUB	A5,A3
	SRL	16,A2
	SRL	16,A3
	SUB	A10,A2
	ABS	A2
	SUBK	25,A2			;30
	JRLT	NOICON
	SUB	A11,A3
	ABS	A3
	SUBK	30,A3			;40
	JRGT	ICONOK
NOICON:	SETC
	RETS
ICONOK:
	CLRC			;OKAY
	RETS



;
FIREX	.EQU	1
SPDRX	.EQU	2
SPRYX	.EQU	3
HLPRX	.EQU	4
XTRAX	.EQU	5
GRENX	.EQU	6
KEYX	.EQU	7
RINGX	.EQU	8
NSTPX	.EQU	9
SHOEX	.EQU	10
SMRTX	.EQU	11
SHOE2X	.EQU	12
BMBLTSX	.EQU	13

ICINIT	.LONG	0,FIREI,SPDRI,SPRYI,HLPRI,XTRAI
	.LONG	GRENI,KEYI,RINGI,NSTPI,SHOEI,SMARTI,SHOE2I,BMBLTI

***********************************************
ICN1
;FIRST LIST OF ICONS
;EACH ICON LISTED INDIVIDUALLY, TOTAL MUST = 30
	.BYTE	0
;GUNS HERE
;FAST SPEED GUN
	.BYTE	SPDRX,SPDRX,SPDRX,SPDRX,SPDRX
;SPRAY
	.BYTE	SPRYX,SPRYX,SPRYX,SPRYX,SPRYX
;NOSTOP
	.BYTE	NSTPX,NSTPX,NSTPX
;GRENADE LAUNCHER
;FLAME THROWER
	.BYTE	FIREX,FIREX,FIREX
;TENNIS SHOES
	.BYTE	SHOE2X,SHOE2X,SHOE2X
;SMART
	.BYTE	SMRTX,SMRTX,SMRTX
;HELPER BLADE
	.BYTE	HLPRX,HLPRX
;EXTRA MAN
	.BYTE	XTRAX
;RINGS
	.BYTE	RINGX,RINGX,RINGX
;FLYING BOOTS
;KEY/MAP
	.BYTE	KEYX
;BOMBLETS
	.BYTE	BMBLTSX
	.EVEN
***********************************************
***********************************************
ICN2
;USED IN WARP 1 LOCKDOWN
;EACH ICON LISTED INDIVIDUALLY, TOTAL MUST = 30
	.BYTE	0
;GUNS HERE
;FAST SPEED GUN
	.BYTE	SPDRX,SPDRX,SPDRX,SPDRX
;SPRAY
	.BYTE	SPRYX,SPRYX
;NOSTOP
	.BYTE	NSTPX,NSTPX,NSTPX
;GRENADE LAUNCHER
;FLAME THROWER
	.BYTE	FIREX,FIREX,FIREX,FIREX,FIREX
***********************************************

;TENNIS SHOES
	.BYTE	SHOE2X,SHOE2X,SHOE2X,SHOE2X
;SMART
	.BYTE	SMRTX,SMRTX,SMRTX
;HELPER BLADE
	.BYTE	HLPRX
;EXTRA MAN
	.BYTE	XTRAX
;RINGS
	.BYTE	RINGX,RINGX
;FLYING BOOTS
;KEY/MAP
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
;BOMBLETS
	.BYTE	BMBLTSX,BMBLTSX
	.EVEN
***********************************************
***********************************************

ICN3
;FIRST LIST OF ICONS
;EACH ICON LISTED INDIVIDUALLY, TOTAL MUST = 30
	.BYTE	0
;GUNS HERE
;FAST SPEED GUN
	.BYTE	SPDRX,SPDRX,SPDRX
;SPRAY
	.BYTE	SPRYX,SPRYX,SPRYX,SPRYX
;NOSTOP
	.BYTE	NSTPX,NSTPX,NSTPX
;GRENADE LAUNCHER
;FLAME THROWER
	.BYTE	FIREX,FIREX,FIREX,FIREX
***********************************************

;TENNIS SHOES
	.BYTE	SHOE2X,SHOE2X,SHOE2X
;SMART
	.BYTE	SMRTX,SMRTX
;HELPER BLADE
	.BYTE	HLPRX,HLPRX
;EXTRA MAN
	.BYTE	XTRAX
;RINGS
	.BYTE	RINGX,RINGX
;FLYING BOOTS
	.BYTE	SHOEX,SHOEX,SHOEX
;KEY/MAP
	.BYTE	KEYX
;BOMBLETS
	.BYTE	BMBLTSX,BMBLTSX
	.EVEN
***********************************************
***********************************************

ICN4
;USED ON ROAD
;EACH ICON LISTED INDIVIDUALLY, TOTAL MUST = 30
	.BYTE	0
;GUNS HERE
;FAST SPEED GUN
;SPRAY
;NOSTOP
;GRENADE LAUNCHER
;FLAME THROWER
***********************************************
;TENNIS SHOES
	.BYTE	SHOE2X,SHOE2X,SHOE2X
	.BYTE	SHOE2X,SHOE2X,SHOE2X
	.BYTE	SHOE2X,SHOE2X,SHOE2X
	.BYTE	SHOE2X,SHOE2X,SHOE2X
;SMART
	.BYTE	SMRTX,SMRTX,SMRTX
;HELPER BLADE
	.BYTE	HLPRX,HLPRX
	.BYTE	HLPRX,HLPRX,HLPRX
;EXTRA MAN
	.BYTE	XTRAX
;RINGS
	.BYTE	RINGX,RINGX
	.BYTE	RINGX,RINGX
;FLYING BOOTS
;KEY/MAP
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
;BOMBLETS
	.BYTE	BMBLTSX
	.EVEN
***********************************************
ICN5
;ORCUS BOSS LIST OF ICONS
;EACH ICON LISTED INDIVIDUALLY, TOTAL MUST = 30
	.BYTE	0
;GUNS HERE
;FAST SPEED GUN
	.BYTE	SPDRX,SPDRX,SPDRX
;SPRAY
	.BYTE	SPRYX,SPRYX,SPRYX,SPRYX,SPRYX,SPRYX
	.BYTE	SPRYX
;NOSTOP
	.BYTE	NSTPX,NSTPX,NSTPX
;GRENADE LAUNCHER
	.BYTE	GRENX,GRENX
	.BYTE	GRENX,GRENX
	.BYTE	GRENX,GRENX
;FLAME THROWER
	.BYTE	FIREX,FIREX
	.BYTE	FIREX
;TENNIS SHOES
	.BYTE	SHOE2X,SHOE2X,SHOE2X,SHOE2X
;SMART
;HELPER BLADE
	.BYTE	HLPRX
;EXTRA MAN
;RINGS
	.BYTE	RINGX,RINGX,RINGX
;FLYING BOOTS
;KEY/MAP
;BOMBLETS
	.EVEN
***********************************************
***********************************************

ICN6
;USED ON ROAD WITH LOTS OF JEEPS
;EACH ICON LISTED INDIVIDUALLY, TOTAL MUST = 30
	.BYTE	0,0,0,0,0,0,0,0,0
;GUNS HERE
;FAST SPEED GUN
;SPRAY
;NOSTOP
;GRENADE LAUNCHER
;FLAME THROWER
***********************************************
;TENNIS SHOES
	.BYTE	SHOE2X,SHOE2X,SHOE2X
	.BYTE	SHOE2X,SHOE2X,SHOE2X
	.BYTE	SHOE2X,SHOE2X
;SMART
;HELPER BLADE
;EXTRA MAN
	.BYTE	XTRAX
	.BYTE	XTRAX
	.BYTE	XTRAX
;RINGS
	.BYTE	RINGX,RINGX
;FLYING BOOTS
	.BYTE	SHOEX
;KEY/MAP
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
;BOMBLETS
	.BYTE	BMBLTSX
	.EVEN
***********************************************
***********************************************

ICN7
;USED ON TARMAC
;EACH ICON LISTED INDIVIDUALLY, TOTAL MUST = 30
	.BYTE	0,0,0,0,0,0,0,0,0,0,0,0
	.BYTE	0,0,0,0
;GUNS HERE
;FAST SPEED GUN
;SPRAY
;NOSTOP
;GRENADE LAUNCHER
;FLAME THROWER
***********************************************
;TENNIS SHOES
	.BYTE	SHOE2X,SHOE2X,SHOE2X
	.BYTE	SHOE2X,SHOE2X
;SMART
;HELPER BLADE
;EXTRA MAN
	.BYTE	XTRAX
	.BYTE	XTRAX
;RINGS
	.BYTE	RINGX
;FLYING BOOTS
	.BYTE	SHOEX
;KEY/MAP
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
;BOMBLETS
	.EVEN
***********************************************
ICN8
;EACH ICON LISTED INDIVIDUALLY, TOTAL MUST = 30
	.BYTE	0
;GUNS HERE
;FAST SPEED GUN
;SPRAY
	.BYTE	SPRYX
	.BYTE	SPRYX
	.BYTE	SPRYX
;NOSTOP
	.BYTE	NSTPX,NSTPX
	.BYTE	NSTPX,NSTPX
;GRENADE LAUNCHER
;FLAME THROWER
	.BYTE	FIREX,FIREX
	.BYTE	FIREX,FIREX
	.BYTE	FIREX,FIREX
	.BYTE	FIREX,FIREX
;TENNIS SHOES
	.BYTE	SHOE2X,SHOE2X,SHOE2X
	.BYTE	SHOE2X,SHOE2X
	.BYTE	SHOE2X,SHOE2X
;SMART
	.BYTE	SMRTX,SMRTX
;HELPER BLADE
	.BYTE	HLPRX
	.BYTE	HLPRX
;EXTRA MAN
;RINGS
;FLYING BOOTS
;KEY/MAP
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
	.BYTE	KEYX
;BOMBLETS
	.EVEN
***********************************************


HLPRI:
	.LONG	0,0,BLADE
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBHLP
	.LONG	0,0
KEYI:
	.LONG	0,0,KEY
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBKEY
	.LONG	0,0
NSTPI:
	.LONG	0,0,NONSTOP
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBNSTP
	.LONG	0,0
RINGI:
	.LONG	0,0,RING
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBRING
	.LONG	0,0
GRENI:
	.LONG	0,0,GRENADE
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBGREN
	.LONG	0,0
XTRAI:
	.LONG	0,0,PLAYER
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBMAN
	.LONG	0,0
SPRYI:
	.LONG	0,0,SPRAY
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBSPRY1
	.LONG	0,0
SPDRI:
	.LONG	0,0,SPDGUN
	.WORD	71,DMAWNZ|M_FLIPH,CLSNEUT|TYPICON|SUBSPDG
	.LONG	0,0
FIREI:
	.LONG	0,0,FIRE
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBFIRE
	.LONG	0,0
SHOEI:
	.LONG	0,0,SHOES
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBSHOE
	.LONG	0,0
SHOE2I:
	.LONG	0,0,SHOES2
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBSHOE
	.LONG	0,0
BMBLTI:
	.LONG	0,0,BMBLETS
	.WORD	71,DMAWNZ|M_FLIPH,CLSNEUT|TYPICON|SUBBLET
	.LONG	0,0
SMARTI:
	.LONG	0,0,SMART
	.WORD	71,DMAWNZ,CLSNEUT|TYPICON|SUBSMRT
	.LONG	0,0
BMBIMG:
	.LONG	0,0,DET1
	.WORD	71,DMAWNZ|M_FLIPH,CLSNEUT|TYPICON|SUBBMB
	.LONG	0,0
;

;	.BSS	EXPTLXY,32
;	.BSS	EXPLRXY,32
;COVER
;	SLEEP	7*60
;	MOVI	[78H,10H],A0
;	MOVE	A0,@EXPTLXY,L
;	MOVI	[0FCH,0CEH],A0
;	MOVE	A0,@EXPLRXY,L
;	MOVI	70H,A10
;	CALLA	CLUSTER
;	DIE
;
; CLUSTER - MAKE SMALL EXPLOSIONS WITHIN SPECIFIED TARGET AREA
; PARAMS:
; EXPTLXY = TOP LEFT X AND Y (X,Y PACKED) 16.16
; EXPLRXY = LOWER RIGHT X AND Y	(X,Y PACKED) 16.16
; A10 = # OF EXPLOSIONS
; RETURNS:								
;	NOTHING AT ALL
;CLUSTER:
;	SRL	1,A10
;	CREATE	DUM_ID,MASSEXP
;	RETS
;
;MASSEXP:
;	CALLR	SETEXP
;	CALLR	SETEXP
;	SLEEP	1
;	DSJ	A10,MASSEXP		;NEXT EXPLOSION PLEASE
;	DIE
;FLASH:
;;SOUNDS OFF IN DEMO
;	ADJUST	ADJMUSIC	;GET MUSIC ON OFF FOR DEMO
;	MOVE	A0,A0
;	JRNZ	NONO
;
;	MOVI	EXP3HI,A0
;	CALLA	ONESND
;NONO	MOVI	MEDEXP,A9
;	MOVK	1,A1
;	JSRP	FRANIM
;	MOVE	A8,A0			;DELETE EXPLOSION FROM OBJ LIST
;;	CALLA	DELPAL			;ALSO ITS PALLETTE
;	CALLA	DELOBJ
;	DIE
;SETEXP:
;	MOVI	EXPLODE,A14
;	CALLR	DO_ALL_STUFF
;	MOVE	A0,A8
;	JRZ	OBJFAIL
;	MOVE	@EXPTLXY,B0,W
;	MOVE	@EXPLRXY,B1,W
;	CALLA	RANGRAND
;	MOVE	A0,*A8(OXPOS),W
;	MOVE	@EXPTLXY,B0,L
;	MOVE	@EXPLRXY,B1,L
;	SRL	16,B0
;	SRL	16,B1
;	CALLA	RANGRAND
;	MOVE	A0,*A8(OYPOS),W
;	MOVE	A8,A0
;	CALLA	ADJSTWTL
;	CREATE	DUM_ID,FLASH
;OBJFAIL:
;	RETS
;;EXPLOSION LIST
;MEDEXP:	
;	.LONG	EXPb1
;	.WORD	NEWPALET|3
;	.LONG	BULLET			;NEW PAL NAME
;	.LONG	EXPb2
;	.WORD	4
;	.LONG	EXPb3
;	.WORD	4
;	.LONG	EXPb4
;	.WORD	4
;	.LONG	EXPb5
;	.WORD	4
;	.LONG	EXPb6
;	.WORD	4
;	.LONG	EXPb7
;	.WORD	4
;	.LONG	EXPb8
;	.WORD	4
;	.LONG	0	
;EXPLODE:
;	.LONG	0,0,EXPb1
;	.WORD	07FFFH,DMAWNZ,CLSNEUT
;	.LONG	0,0
;


*****************************************************************************

SETMAX:
;FOR HULK/GRUNT
	MOVE	@WAVE,A0
	SLL	3,A0
	ADDI	HMAX,A0
	MOVB	*A0,A0
	MOVK	5,A1			;SUBTRACT THIS AMOUNT IF 1 PLYR GAME
	CALLR	ONEPADJ
;	CALLR	ADJMAX			;DIFFICULTY ADJUST
	MOVE	A0,@MAXHULK
 	
	MOVE	@WAVE,A0
	SLL	3,A0
	ADDI	HTYP,A0
	MOVB	*A0,A0
	MOVE	A0,@HTYPE
	
;FOR MINE LAYER
	MOVE	@WAVE,A0
	SLL	3,A0
	ADDI	LMAX,A0
	MOVB	*A0,A0
	CLR	A1			;SUBTRACT THIS AMOUNT IF 1 PLYR GAME
	CALLR	ONEPADJ
;	CALLR	ADJMAX			;DIFFICULTY ADJUST
	MOVE	A0,@MAXLYR
;FOR AHMED FLAME THROWER
	MOVE	@WAVE,A0
	SLL	3,A0
	ADDI	AMAX,A0
	MOVB	*A0,A0
	CLR	A1			;SUBTRACT THIS AMOUNT IF 1 PLYR GAME
	CALLR	ONEPADJ
;	CALLR	ADJMAX			;DIFFICULTY ADJUST
	MOVE	A0,@MAXAHMD
;FOR FIENDS
	MOVE	@WAVE,A0
	SLL	3,A0
	ADDI	FMAX,A0
	MOVB	*A0,A0
	CLR	A1			;SUBTRACT THIS AMOUNT IF 1 PLYR GAME
	CALLR	ONEPADJ
;	CALLR	ADJMAX			;DIFFICULTY ADJUST
	MOVE	A0,@MAXFND
;FOR SKIPPERS
	MOVE	@WAVE,A0
	SLL	3,A0
	ADDI	SMAX,A0
	MOVB	*A0,A0
	MOVK	3,A1			;SUBTRACT THIS AMOUNT IF 1 PLYR GAME
	CALLR	ONEPADJ
;	CALLR	ADJMAX			;DIFFICULTY ADJUST
	MOVE	A0,@MAXSKPR
	RETS

ONEPADJ
	MOVE	@STATUS,A2
	CMPI	3,A2
	JRZ	TWEEK1
	SUB	A1,A0
TWEEK1
	RETS

HTYP
;0=REGULAR SOLDIER GRUNT
;1=AXE CARRYING DEMON GRUNT
;2=AHMED FLAME THROWER GRUNT
	.BYTE	1,1,1,1,1,1,1,1,1,0,0,0,0,1,0,0,0,1,1,2,1,0,2,0,0    ;WV 24
	.BYTE	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

HMAX	.BYTE	2,28,29,28,26,25,20,25,30,20,19		;(WAVE 10 AT END)
	.BYTE	25,20,20,28,20,20,20,20,34,20,20	;GRUNT/HULK
	.BYTE	25,20,20,20,31,20,20,27,20,20,20	
SMAX	.BYTE	2,20,24,28,26,25,20,25,30,20,15		;SKIPER GRUNT
	.BYTE	25,20,20,20,20,20,20,20,20,20,20
	.BYTE	25,20,20,18,20,18,20,5,20,20,20
LMAX	.BYTE	2,2,2,2,2,2,2,2,2,2,2
	.BYTE	1,1,1,1,1,1,1,1,1,1,1			;MINE LAYER
	.BYTE	2,1,1,1,1,1,1,1,1,1,1
AMAX	.BYTE	3,3,3,3,3,3,3,3,3,0,0
	.BYTE	0,3,3,8,1,3,3,3,0,0,0			;AHMED GRUNT
	.BYTE	5,3,5,5,4,5,3,3,3,3,3			
FMAX	.BYTE	10,10,10,10,10,10,10,10,10,10,10
	.BYTE	10,10,10,10,10,10,10,10,10,10,5		;FIEND
	.BYTE	10,10,10,10,10,10,10,1,10,10,10
	.EVEN

WAVE_INFO:
;RECORDS LOOK LIKE THIS
;TYPES:DIFFERENT ID'S
;#:TOTAL NUMBER PER WAVE
;DIFFICULTY:0,1,2,3 0=EASIEST
;RATE:# OF CYCLES/3 (SLP CNTR) BEFORE SPAWN IS CALLED
;ONSCRN:# OF TYPE ON SCREEN AT START OF WAVE
;CNTR USED IN WAVE RAM UPDATING

;RECORD LAYOUT
;TYPE #	LEVEL RATE ONSCRN CNTR
;WAVE 1
	.WORD	HULK,265,4,8,0,20
	.WORD	0
;WAVE 2
	.WORD	HULK,235,4,1,0,1
	.WORD	0
;WAVE 3
	.WORD	HULK,390,2,9,0,1	;REACTOR AREA
	.WORD	0
;WAVE 4
	.WORD	HULK,405,2,8,0,1	;NEAR ELEVATOR DOWN
	.WORD	0
;WAVE 5
	.WORD	HULK,95,2,15,0,1	;SECRET PATH REACTOR AREA
	.WORD	0
;WAVE 6
	.WORD	HULK,65,3,20,0,20	;SECRET PATH MIDDLE AREA
	.WORD	0
;WAVE 7
	.WORD	HULK,245,4,13,0,1	;SECRET PATH ROADWAY AREA,CARS ETC.
	.WORD	0
;WAVE 8
	.WORD	HULK,285,4,10,0,90	;SECRET PATH TOP AREA (END)
	.WORD	0
;WAVE 9
	.WORD	HULK,285,4,10,0,90	;UN USED
	.WORD	0
;WAVE 10
;	.WORD	SNEUT2,60,0,8,0,10
	.WORD	HULK,280,2,3,0,1	;START OF GAME AT DESERT - 1ST LOCKDOWN
	.WORD	TANK,5,3,50,0,200
	.WORD	AT72,1,0,0,0,600  	;695
	.WORD	0
;WAVE 11
	.WORD	HULK,72,2,30,0,1	;AS PATHB BEGINS AFTER 1ST LOCKDOWN
	.WORD	0
;WAVE 12
	.WORD	HULK,43,4,20,0,1	;AS PATHA BEGINS
	.WORD	0
;WAVE 13				;AT FIRST HUT/LOCKDOWN #2 IN DESERT
	.WORD	HULK,130,10,10,0,90	;
	.WORD	0
;WAVE 14				;AT FIRST HUT AFTER TAUNT
	.WORD	HULK,480,2,3,0,728H
	.WORD	AHMD,15,2,10,0,570H
	.WORD	FND,110,1,8,0,154H
	.WORD	RUNNRS,2,0,200,0,780H
	.WORD	0
;WAVE 15				;SCROLLING UP AFTER FIRST HUT LOCKDOWN
;	.WORD	HULK,10,5,15,0,150	;
	.WORD	JEEPS,1,0,1,0,70
	.WORD	0
;WAVE 16
	.WORD	HULK,3,4,9,0,1		;
;	.WORD	ORC,1,0,07FFFH,0,90	;ORCUS BOSS MONSTER
	.WORD	0
;WAVE 17	 			;ROADWAY
	.WORD	0
;WAVE 18
	.WORD	0
;WAVE 19		       		;1ST LOCKDOWN IN AIRPORT
;	.WORD	HULK,10,2,1,0,5
	.WORD	HULK,400,2,1,0,525
	.WORD	SNEUT2,35,0,8,0,140
	.WORD	RUNNRS,2,0,380,0,100
	.WORD	0
;WAVE 20				;FIRST WARP LOCK DOWN
	.WORD	HULK,410,4,9,0,1	;
	.WORD	JEEPS,10,0,60,0,1	;
	.WORD	AHMD,7,2,150,0,1D0H
	.WORD	SNEUT,7,0,260,0,10
	.WORD	RUNNRS,3,0,281,0,100
	.WORD	0
;WAVE 21				;2ND WARP LOCK DOWN - MINE FIELD
	.WORD	FND,16H,1,15,0,110
	.WORD	HULK,50H,4,2,0,720	;
	.WORD	SNEUT,2,0,350,0,280
	.WORD	RUNNRS,2,0,380,0,600
	.WORD	0
;WAVE 22				;3RD WARP NEAR TRIPLE GUNNER
	.WORD	HULK,210H,3,2,0,378H	;
	.WORD	AHMD,17,6,10,0,1C0H
	.WORD	TANK,6,1,50H,0,480H
	.WORD	JEEPS,3,1,60,0,400H
	.WORD	SNEUT,3,0,300,0,200
	.WORD	0
;WAVE 23				;4TH WARP AT AIRPORT 1ST LOCKDWN
	.WORD	SNEUT,15,0,180,0,40*60/3
	.WORD	JEEPS2,105,1,7,0,2*60*60/3+24*60/3-15*60/3+1*60/3
	.WORD	0
;WAVE 24				;AIRPLANES BLOWING UP AREA
	.WORD	0
;WAVE 25				;AFTER AIRPLANES BLOWING UP AREA
	.WORD	0
;WAVE 26				;LOCKDOWN MIDDLE OF AIRPORT
	.WORD	MOM,4,0,80,0,900
	.WORD	AHMD,22,4,18,0,170
	.WORD	HULK,360,3,3,0,2420
	.WORD	SKIPR,440,4,2,0,825
	.WORD	SNEUT,6,0,240,0,280
	.WORD	RUNNRS,4,0,380,0,1000
	.WORD	JEEPS,4,2,60,0,2450
	.WORD	SNEUT2,55,0,8,0,3210
	.WORD	0
;WAVE 27				;LOCKDOWN UP INTO AIRPORT AREA
	.WORD	0
;WAVE 28				;LOCKDOWN UP INTO AIRPORT AREA #2
	.WORD	SNEUT,8,0,180,0,50
	.WORD	0			;GUN PIT DUDES
;WAVE 29				;LOCK DOWN IN AIRPORT NEAR FENCE
	.WORD	HULK,405,1,3,0,70
	.WORD	SKIPR,10,4,52,0,250
	.WORD	SNEUT,1,0,200,450
	.WORD	FND,20,4,80,0,300
	.WORD	0

TYP_TBL2:
;FOR SPAWNING
	.LONG	SPAWN_HULKS,SPAWN_LYR,SPAWN_AHMD,SPAWN_T72,SPAWN_JEEPS
	.LONG	SPAWN_FND,SPAWN_SKIPR,SPAWN_SNEUT,SPAWN_RUNNR,SP_BOSS
	.LONG	SPAWN_SNEUT2,SPAWN_JEEPS2,SPAWN_MOM

SP_BOSS	CREATE	FUTUREPID,BOSS
	RETS

OVERLORD:
	SLEEPK	3
	MOVI	BMBPID,A0
	CLR	A1
	NOT	A1
	CALLA	EXISTP
	JRNZ	OVERLORD

	CALLR	SETMAX

	CLR	A3
	MOVE	A3,@HULK_DN
	MOVE	A3,@SKIPR_DN
	MOVE	A3,@LOTS_FLAG
	MOVI	WAVE_INFO,A1	
	MOVE	@WAVE,A0		;WAVE 1 IS THE FIRST WAVE
	DEC	A0
	JRNZ	OL00
	MOVE	A1,A5
OL00:	CLR	A4
OL0:	INC	A4
	MOVE	*A1,A2,W
	JRZ	OL1
	ADDI	6*16,A1
	JRUC	OL0
OL1:	CMPI	0,A0			
	JRZ	GOTIT
	ADDK	16,A1			;POINT TO NEXT WAVE INFO TABLE
	INC	A3
	CMP	A0,A3
	JRNE	OL00
	MOVE	A1,A5
GOTIT:
	MOVE	A5,A1			;A5=ADDR OF THIS WAVE IN ROM
; CLEAR WAVE RAM
	MOVI	WAVE_RAM,A0
	CLR	A6
	MOVK	29,A7
GT00	MOVE	A6,*A0+,L
	DSJS	A7,GT00

; PUT WAVE INFO INTO RAM FOR UPDATING

	MOVK	8,A4			;CAN IT AT 8!

	MOVI	WAVE_RAM,A0
GT0	MOVK	6,A3			;# OF FIELDS PER BAD GUY
GT	MOVE	*A1+,*A0+,W
	DSJS	A3,GT
	DSJS	A4,GT0
; NOW PUT ONSCRN # OF EACH TYPE ONTO SCREEN!	

	SLEEP	60*2			;DELAY BEFORE BAD GUYS MOVE

RLSE:
;DISPERSE ENEMIES THROUGHOUT WAVE
	MOVI	WAVE_RAM,A0	
	MOVE	@HALT,A1,W
	JRNZ	RDN
RTOP
	MOVE	*A0(0),A1
	JRZ	RDN
	MOVE	*A0(16),A1		;A1=HOW MANY ARE LEFT	
	JRZ	NXTR
	MOVE	*A0(5*16),A1		;SPAWN RATE CNTR
	DEC	A1
	MOVE	A1,*A0(5*16)
	JRNZ	NXTR
	MOVE	*A0(3*16),A1		;SPAWN RATE IN CYCLES
	MOVE	A1,*A0(5*16)
;TIME TO SPAWN
	MOVE	*A0(0),A1
	DEC	A1
	SLL	5,A1
	ADDI	TYP_TBL2,A1
	MOVE	*A1,A1,L
	PUSH	A0
	CALL	A1
	PULL	A0
NXTR	ADDI	6*16,A0
	JRUC	RTOP
;ALL ENEMIES HAVE BEEN CHECKED FOR RELEASE
RDN	SLEEPK	3
	JRUC	RLSE
DOLORD	MOVE	A0,@WAVE
;A0=WAVE # TO START
	MOVI	LORDPID,A0
	CLR	A1
	NOT	A1
	CALLA	EXISTP
	JRZ	STR
	CALLA	KILL
STR	CREATE	LORDPID,OVERLORD
	RETS

	.END

