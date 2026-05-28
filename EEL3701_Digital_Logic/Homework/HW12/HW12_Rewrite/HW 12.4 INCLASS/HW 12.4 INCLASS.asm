	MaxAddress	equ	$6 ;$1080
	Neg1		equ	$FF
	Neg37		equ	$DB
	;00100101
	;11011010
	;11011011 -37

	Table		equ	$1000
	
	ORG	$1000
	TableData	dc.b	0,1,37,37,1,0
	
	
	ORG	$1100

	Amount37	ds.b	1
	LoopCount	ds.b	1
	
	ORG	$0000
	LDAA	#0
	STAA	Amount37
	LDAA	#MaxAddress
	STAA	LoopCount
	LDX	#Table ;load data
	
LOOP	LDAA	LoopCount
	BEQ	DONE
	
	LDAB	#Neg1
	Sum_BA
	STAA	LoopCount
	
	LDAA	0,X
	LDAB	#Neg37
	SUM_BA
	
	INX
	
	BEQ	IsEqual
	BNE	LOOP
	
IsEqual	
	LDAA	Amount37
	LDAB	#1
	SUM_BA
	STAA	Amount37
	LDAA	#0
	BEQ	LOOP
	
DONE 	BEQ	DONE	
		
	
	

	