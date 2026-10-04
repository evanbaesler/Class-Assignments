N	equ	$0137 ;In N
M	equ	$0138 ;In M
Count	equ	$1000		
	org	N ; jump to N reg
	dc.b	$02, $03
	; Store $02, $03 in N, M
	Loop	
	LDAA	37
	STAA	Count; Store to Count ($1000)
	LDAA	N ; Load N
	LDAB	#-1 ; Load -1
	SUM_BA
	; Subtract 1 from A til
	; 0 thru N value is 37
	BNE	Loop ; Loop if not A = 0
	