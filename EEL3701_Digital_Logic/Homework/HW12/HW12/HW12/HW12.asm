ORG $0 ; assembler directive (origin) to tell where code will be placed in memory
LDX #$1100 ; pointer to data
LDAA #$10 ; counter value
STAA $1200 ; counter will be saved in memory to free up a CPU register
LOOP: LDAA 0,X ; get 1st data value
LDAB $10,X ; get 2nd data value
SUM_AB ; data1 + data2
SHFB_R ; divide sum by 2
STAB $20,X ; store average. value
INX ; increment pointer
LDAB #$FF ; -1 in 2’s complement format
LDAA $1200 ; count = count – 1
SUM_BA
BEQ DONE ; branch to done if count is zero
STAA $1200 ; else, save counter value
BNE LOOP ; and repeat loop
DONE: BEQ DONE ; loop forever