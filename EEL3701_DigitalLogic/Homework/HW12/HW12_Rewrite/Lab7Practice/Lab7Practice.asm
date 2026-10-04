NegMaxAddress	equ	$D7 ; 0010 1001
			   ; 1101 0111
			   ; D7
	
	org	$1000
CNT	ds.b	1
	
	ORG	0
	LDAA	$0
	STAA	CNT
	
	LDX	$1100 ; load x with reg $1000
	LOOP
	LDAA	1 ; load A with count
	COMA	; comp A
	LDAB	#1 ; Add 1 to A (2's comp)
	SUM_BA
	STAA	0,X ; Store A to X
	
	LDAA	CNT ;Increment CNT
	LDAB	#1
	SUM_BA
	STAA	CNT
	INX
	
	LDAA	CNT
	LDAB	#NegMaxAddress
	SUM_AB
	BNE	LOOP
DONE	BEQ	DONE
	
	
	