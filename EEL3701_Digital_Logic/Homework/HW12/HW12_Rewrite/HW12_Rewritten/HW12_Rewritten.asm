;#$1100-110F data 1
;#$1110-111F data 2
;#$1120-112F output
	
;#$10 counter value (to LDAA)
	
;#$1200 store counter value
	
;add data 1[n] + data 2[n], divide by two, output

NegOne		equ	$FF
One		equ	$01		
CountReg 	equ	$1200	
Count		equ	$10
Data		equ	$1100
		
ORG	$0
LDAA	#Count
STAA	CountReg
LDX	#Data
	
LOOP:	LDAA	0, X; data 1[n[
	LDAB	$10, X ; data 2[n]
	SUM_AB; sum
	SHFB_R; 1/2 sum
	STAB	$20, X
	LDAA	CountReg
	LDAB	#NegOne
	SUM_BA
	BEQ	DONE
	STAA	CountReg
	BNE	LOOP
DONE:	BEQ	DONE
	
