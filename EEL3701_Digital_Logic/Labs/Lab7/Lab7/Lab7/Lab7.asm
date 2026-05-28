NegOne		equ	$FF
One		equ	$0001
Zero		equ	$0000
	
LoopTrack	equ	$1000
TableAddress	equ	$1E4B
	
	
		org	TableAddress
TableData	dc.b	$57, $1A, $03
		dc.b	$FF, $0F
		dc.b	$0A, 03
		dc.b	$05, 04
	
		org	Zero
		LDX	#TableData
		LDY	TableAddress
		LDAA	02, X
		STAA	LoopTrack
Loop		LDAA	#One
		LDAB	04, X
		COMB
		SUM_AB
		LDAA	03, X
		SUM_AB
		STAB	00, Y
		INY
		INX
		INX
		LDAA	LoopTrack
		LDAB	#NegOne
		SUM_BA
		STAA	LoopTrack
		BNE	Loop
Done		BEQ	Done