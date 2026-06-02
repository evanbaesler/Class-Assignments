/*
 * Lab2_4.asm
 *
 *  Created: 5/31/2026 10:24:41 PM
 *   Author: Evan Baesler
 */ 

 ;******************************************************************************
;  File name: lab2_u26_4_skeleton.asm
;  Author: Christopher Crary
;  Last Modified By: Dr. Schwartz
;  Last Modified On: 20 May 2026
;  Purpose: To allow LED animations to be created with the OOTB uPAD, 
;			OOTB SLB, and OOTB MB.
;
;  NOTE: The use of this file is NOT required! This file is just given
;        as an example for how to potentially write code more effectively.
;******************************************************************************

;*******INCLUDES*************************************

; The inclusion of the following file is REQUIRED for our course, since
; it is intended that you understand concepts regarding how to specify an 
; "include file" to an assembler. 
.include "ATxmega128a1udef.inc"
;*******END OF INCLUDES******************************

;*******DEFINED SYMBOLS******************************
.equ ANIMATION_START_ADDR	=	0x2000 ; Start Address specified
.equ ANIMATION_SIZE			=	0x2000	; 0x2000 - 0x3FFF
;*******END OF DEFINED SYMBOLS***********************

;*******MEMORY CONSTANTS*****************************
; data memory allocation
.dseg

.org ANIMATION_START_ADDR
ANIMATION:
.byte ANIMATION_SIZE
;*******END OF MEMORY CONSTANTS**********************

;*******MAIN PROGRAM*********************************
.cseg
; upon system reset, jump to main program (instead of executing
; instructions meant for interrupt vectors)
.org 0
	rjmp MAIN

; place the main program somewhere after interrupt vectors (ignore for now)
.org 0x0100		; >= 0xFD
MAIN:
; initialize the stack pointer
	ldi r16, low(RAMEND)
	sts CPU_SPL, r16
	ldi r16, high(RAMEND)
	sts CPU_SPH, r16
; initialize relevant I/O modules (switches and LEDs)
	rcall IO_INIT

; initialize (but do not start) the relevant timer/counter module(s)
	rcall TC_INIT

; Initialize the X and Y indices to point to the beginning of the 
; animation table. (Although one pointer could be used to both
; store frames and playback the current animation, it is simpler
; to utilize a separate index for each of these operations.)
; Note: recognize that the animation table is in DATA memory

	ldi XL, low(ANIMATION_START_ADDR)
    ldi XH, high(ANIMATION_START_ADDR)

    ldi YL, low(ANIMATION_START_ADDR)
    ldi YH, high(ANIMATION_START_ADDR)

; begin main program loop 
	
; "EDIT" mode
EDIT:
	
; Check if it is intended that "PLAY" mode be started, i.e.,
; determine if the relevant switch has been pressed.

lds r16, PORTF_IN ; Read the input from S1 on the SLB to go to PLAY (PF2)

; If it is determined that relevant switch was pressed, 
; go to "PLAY" mode.
sbrs r16, 2 ; active low, if the bit is set it is not pressed
rjmp PLAY ; skip if not pressed

; Otherwise, if the "PLAY" mode switch was not pressed,
; update display LEDs with the voltage values from relevant DIP switches
; and check if it is intended that a frame be stored in the animation
; (determine if this relevant switch has been pressed).

lds r17, PORTA_IN ; take inputs, place in outputs
sts PORTC_OUT, r17

sbrc r16, 3 ; Skip loop to EDIt if S2 on SLB is pressed, which is PF3

; If the "STORE_FRAME" switch was not pressed,
; branch back to "EDIT".

rjmp EDIT

; Otherwise, if it was determined that relevant switch was pressed,
; perform debouncing process, e.g., start relevant timer/counter
; and wait for it to overflow. (Write to CTRLA and loop until
; the OVFIF flag within INTFLAGS is set.)

ldi r16, low(156)
sts TCC0_PER, r16
ldi r16, high(156)
sts TCC0_PER+1, r16 
; 5ms at DIV64, longest recorded bounce was 1.5ms, 3.5ms buffer

ldi r16, TC_CLKSEL_DIV64_gc
sts TCC0_CTRLA, r16

DEBOUNCE_LOOP:

lds r16, TCC0_INTFLAGS
sbrs r16, 0
rjmp DEBOUNCE_LOOP
	
; After relevant timer/counter has overflowed (i.e., after
; the relevant debounce period), disable this timer/counter,
; clear the relevant timer/counter OVFIF flag,
; and then read switch value again to verify that it was
; actually pressed. If so, perform intended functionality, and
; otherwise, do not; however, in both cases, wait for switch to
; be released before jumping back to "EDIT".

ldi r16, TC_CLKSEL_OFF_gc ; turn off timer
sts TCC0_CTRLA, r16

; clear OVFIF
ldi r16, 1 ; setting bit 0 clears OVFIF for TCC0
sts TCC0_INTFLAGS, r16

; read S2 on SLB (PF3) again to ensure it is still pressed; i.e. not bounce
lds r16, PORTF_IN
sbrc r16, 3 ; skip if it is still pressed
rjmp EDIT ; if not still pressed, stay in EDIT

; Store DIP switches to memory
lds r17, PORTA_IN
st Y+, r17

; Wait for the "STORE FRAME" switch to be released
; before jumping to "EDIT".
STORE_FRAME_SWITCH_RELEASE_WAIT_LOOP: ; this is S2 on the SLB; PF3 again

lds r16, PORTF_IN 
sbrs r16, 3 ; skip if not pressed, i.e. action is done
rjmp STORE_FRAME_SWITCH_RELEASE_WAIT_LOOP

rjmp EDIT
	
; "PLAY" mode
PLAY:

; Reload the relevant index to the first memory location
; within the animation table to play animation from first frame.
	ldi XL, low(ANIMATION_START_ADDR)
	ldi XH, high(ANIMATION_START_ADDR)

PLAY_LOOP:

; Check if it is intended that "EDIT" mode be started
; i.e., check if the relevant switch has been pressed.`

lds r16, PORTE_IN

; If it is determined that relevant switch was pressed, 
; go to "EDIT" mode.

; S2 on OOTB MB (E1)
sbrs r16, 1 ; Check if unpressed
rjmp EDIT

; Otherwise, if the "EDIT" mode switch was not pressed,
; determine if index used to load frames has the same
; address as the index used to store frames, i.e., if the end
; of the animation has been reached during playback.
; (Placing this check here will allow animations of all sizes,
; including zero, to playback properly.)
; To efficiently determine if these index values are equal,
; a combination of the "CP" and "CPC" instructions is recommended.

cp XL, YL ; compares the input/output tables
cpc XH, YH

; If index values are equal, branch back to "PLAY" to
; restart the animation.

breq PLAY

; Otherwise, load animation frame from table, 
; display this "frame" on the relevant LEDs,
; start relevant timer/counter,
; wait until this timer/counter overflows (to more or less
; achieve the "frame rate"), and then after the overflow,
; stop the timer/counter,
; clear the relevant OVFIF flag,
; and then jump back to "PLAY_LOOP".

ld r17, X+ ; load from our animation table, post-increment
sts PORTC_OUT, r17 ; load to LEDs

ldi r18, low(1561) 
sts TCC0_PER, r18
ldi r18, high(1561)
sts TCC0_PER+1, r18

ldi r18, TC_CLKSEL_DIV256_gc ; 1562 ticks with a prescaler of 256
sts TCC0_CTRLA, r18          ; ~= to 5Hz or 200ms period

PLAY_DELAY:
lds r16, PORTE_IN 
sbrs r16, 1 ; S2 on OOTB MB = PE1, if pressed, QUIT
rjmp QUIT

lds r18, TCC0_INTFLAGS
sbrs r18, 0
rjmp PLAY_DELAY ; delay to 5Hz update speed

ldi r18, TC_CLKSEL_OFF_gc ; turn off timer
sts TCC0_CTRLA, r18

ldi r18, 1 ; clear flag
sts TCC0_INTFLAGS, r18
rjmp PLAY_LOOP

QUIT:

ldi r18, TC_CLKSEL_OFF_gc ; turn off timer
sts TCC0_CTRLA, r18
ldi r18, 1 ; clear flag
sts TCC0_INTFLAGS, r18
rjmp EDIT ; go back to edit mode

; end of program (never reached)
DONE: 
	rjmp DONE
;*******END OF MAIN PROGRAM *************************

;*******SUBROUTINES**********************************

;****************************************************
; Name: IO_INIT 
; Purpose: To initialize the relevant input/output modules, as pertains to the
;		   application.
; Input(s): N/A
; Output: N/A
;****************************************************
IO_INIT:
; protect relevant registers

push r16

; initialize the relevant I/O

ldi r16, 0xFF
sts PORTC_DIRSET, r16 ; set all bits, making PORTC LED's outputs
sts PORTA_DIRCLR, r16 ; clr all bits, making PORTC switches inputs

ldi r16, 0b00001100 ; set relevant PORTF tactile switches to inputs
sts PORTF_DIRCLR, r16

ldi r16, 0b00000010 ; set relevant PORTE tactile switches to inputs
sts PORTE_DIRCLR, r16

; recover relevant registers
	
pop r16

; return from subroutine
	ret
;****************************************************
; Name: TC_INIT 
; Purpose: To initialize the relevant timer/counter modules, as pertains to
;		   application.
; Input(s): N/A
; Output: N/A
;****************************************************
TC_INIT:
; protect relevant registers

push r16

; initialize the relevant TC modules

ldi r16, low(156)
sts TCC0_PER, r16
ldi r16, high(156)
sts TCC0_PER+1, r16
	
; recover relevant registers

pop r16
	
; return from subroutine
	ret

;*******END OF SUBROUTINES***************************