One		equ	$01
NegOne		equ	$FF
Count		equ	9
Check		equ	37
		
	org	$1000
Table	dc.b	0, 1, 2, 37, 4, 5, 37, 7, 8 ; loads values

	LDX	#$1000 ; loads data of x[n] to $1000
	
	LDAA	#Count ; count 9
	STAA	$1200 ; stores count amount to 9
	
	LDAA	#0 ; loads amount of 37's as 0 to 1201
	STAA	$1201
	
LOOP:
	LDAA	0, X ; loads A with x[n]
	LDAB	#One ; loads B with one
	COMA	; creates 2's comp of A -> A
	SUM_BA
	LDAB	#Check ; loads B with the check value
	SUM_BA	; Sees if they equal 0 -> A to determine branch
	INX	; increments X
	BEQ	IsEqual
	BNE	CONTINUE
	
CONTINUE:
	
	LDAA	$1200 ; Loads count
	LDAB	#NegOne ; Loads -1
	SUM_BA	; Decrements count
	STAA	$1200 ; Stores decremented count to $1200
	
	BNE	LOOP
	BEQ	DONE
	
IsEqual:
	
	LDAA	#One ; Loads A with 1
	LDAB	$1201 ; Loads B with value in 1201
	SUM_BA	; Increments B -> A
	STAA	$1201 ; Stores #$1201+1 to $1201
	LDAA	#0 ; Loads A with 0 to continue
	BEQ	CONTINUE
	
DONE:	BEQ	DONE
	