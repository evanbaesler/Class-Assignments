;RegA/RegB loaded w/ unknown value
;100 - 102: STAA $1400
;103: COMA
;104: AND_BA
;105-107: STAA $1401
;108-10A: LDAA $1400
;10B: COMB
;10C: AND_BA
;10D: TAB
;10E-110: LDAA $1401
;111: OR_BA
	
; Store A to $1400
; Complement A
; AND with B, send to A
; Store A to $1401 (B & /A)
; LDAA with original A ($1400)
; Complement B
; AND A & B, send to A (A & /B)
; A -> B
; LDAA with $1401 (B & /A)
; OR RegA & RegB (A & /B) or (B & /A)