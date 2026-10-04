/*
Lab3.asm
Created: 6/7/2026 3:56:44 PM
Author : Evan Baesler

ABSTRACT: We are utilizing S1 on the OOTB SLB with interrupts to do a binary
		  counter from 0 - 255, and then resetting back down to 0; simultaneously
		  we will strobe our blue LED on and off every 47ms. This differs from
		  lab3_2a by adding a timer-based debounce to the switch S1.

OBJECTIVES: (1) Initialize Stack Pointer at SRAM end.
			(2) Utilize subroutines to initialize IO & PMIC
			(3) Clear counter register (r20)
			(4) IO: Set PF2 in, PORTC out, invert PORTC, connect PF2 to LOLVL INT0
			(5) PMIC: Enable LOLVL interrupts
			(6) sei to do global interrupt enable
			(7) INTERRUPT: Push registers, push CPU_SREG to save flags, check if
			    r20 = 255, reset to 0 if true, increment r20 if false. Send value
				to PORTC LEDs; clear interrupt flags, restore CPU_SREG to initial
				value. Utilize a debounce to ensure no double-firing.
*/

.include "ATxmega128A1Udef.inc"

.org 0
rjmp MAIN

.org PORTF_INT0_vect ; When PF2 is pressed, we  start a debounce timer.
rjmp DEBOUNCE_INTERRUPT

.org TCF0_OVF_vect ; When the above timer reaches OVF, we increment.
rjmp INC_INTERRUPT

.org 0x0100
MAIN:

ldi r16, low(RAMEND) ; Stack Pointer Initialization
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

clr r20 ; Clear Binary Counter

; Initialization Subroutines
rcall IO_INIT ; Enable PF2 as input, PD6 & PC out.
rcall POLL_TC_INIT ; Initialize 47ms TC for Blue LED PWM
rcall DEBOUNCE_TC_INIT ; Initialize a stopped 40ms debounce TC
rcall PMIC_INIT ; Enable low-level interrupts in PMIC
sei

LOOP:

lds r16, TCD0_INTFLAGS ; Read the polling timer interrupt flags
sbrs r16, 0 ; Skip the toggle if the OVF (bit 0) is NOT set
rjmp LOOP ; If flag is 0, keep looping

ldi r16, (1<<6) ; Bit 6 for PD6 (Blue LED)
sts PORTD_OUTTGL, r16 ; Toggle the blue LED

ldi r16, 1 ; clear OVFIF by writing 1 to it
sts TCD0_INTFLAGS, r16

rjmp LOOP ; Back to polling

DONE:
rjmp DONE ; Never-ending loop

; SUBROUTINES

IO_INIT:
push r16
ldi r16, (1<<2) ; PF2 -> Input
sts PORTF_DIRCLR, r16
ldi r16, 0xFF ; PC -> Output
sts PORTC_DIRSET, r16
ldi r16, (1<<6) ; PD6 -> Output
sts PORTD_DIRSET, r16

ldi r16, PORT_INVEN_bm ; Invert active-low LED outputs
sts PORTC_PIN0CTRL, r16
sts PORTC_PIN1CTRL, r16
sts PORTC_PIN2CTRL, r16
sts PORTC_PIN3CTRL, r16
sts PORTC_PIN4CTRL, r16
sts PORTC_PIN5CTRL, r16
sts PORTC_PIN6CTRL, r16
sts PORTC_PIN7CTRL, r16

lds r16, PORTF_PIN2CTRL ; We do not want to overwrite any defaults for the register
andi r16, 0b11111000 ; Setting 010 to ISC[2:0], to create falling-edge trigger
ori r16, 0b00000010
sts PORTF_PIN2CTRL, r16

ldi r16, 0x01
sts PORTF_INTCTRL, r16 ; Set PF to a low-level interrupt

ldi r16, (1<<2)
sts PORTF_INT0MASK, r16 ; Allows PF2 to trigger INT0 flag

pop r16
ret


POLL_TC_INIT:
push r16
; Set the Timer Period to 11,750 cycles for a prescaler of 8, for 47ms period
ldi r16, low(11750)
sts TCD0_PER, r16
ldi r16, high(11750)
sts TCD0_PER+1, r16
ldi r16, TC_CLKSEL_DIV8_gc
sts TCD0_CTRLA, r16
pop r16
ret


DEBOUNCE_TC_INIT:
push r16
; Set the Timer Period to 10,000 cycles with a prescaler of 8, for a 40ms period
ldi r16, low(10000)
sts TCF0_PER, r16
ldi r16, high(10000)
sts TCF0_PER+1, r16

; Enable low-level interrupts for TCF0
ldi r16, TC_OVFINTLVL_LO_gc
sts TCF0_INTCTRLA, r16

ldi r16, TC_CLKSEL_OFF_gc ; Start in OFF position
sts TCF0_CTRLA, r16
pop r16
ret


PMIC_INIT:
push r16
ldi r16, PMIC_LOLVLEN_bm ; Enable low-level interrupts
sts PMIC_CTRL, r16
pop r16
ret


; INTERRUPT SERVICES
; Triggered upon PF2 press
DEBOUNCE_INTERRUPT:
push r16
lds r16, CPU_SREG ; Store SREG flags to push later
push r16

ldi r16, 0
sts PORTF_INTCTRL, r16 ; Disable any interrupts while in debounce loop

ldi r16, TC_CLKSEL_DIV8_gc
sts TCF0_CTRLA, r16 ; Start counting 40ms debounce

pop r16
sts CPU_SREG, r16
pop r16
reti

; Triggered upon debounce timer ending
INC_INTERRUPT:
push r16
lds r16, CPU_SREG
push r16

ldi r16, TC_CLKSEL_OFF_gc
sts TCF0_CTRLA, r16         ; Stop the timer clock

clr r16
sts TCF0_CNT, r16
sts TCF0_CNT+1, r16         ; Reset count registers

ldi r16, 1
sts TCF0_INTFLAGS, r16      ; Clear timer overflow flag (OVFIF)

; Check if switch is still low (valid press)
lds r16, PORTF_IN
sbrc r16, 2
rjmp SKIP_INC               ; If pin is high, it's a false bounce.

cpi r20, 255 ;
inc r20 ; increment after compare to have true 0-255 on LEDs

brne NO_RESET
clr r20

NO_RESET:
sts PORTC_OUT, r20 ; Store value to PORTC LEDs

SKIP_INC:
; Clear interrupt flag
ldi r16, 1
sts PORTF_INTFLAGS, r16

; Allow for interrupts again on PF
ldi r16, 1
sts PORTF_INTCTRL, r16

pop r16
sts CPU_SREG, r16
pop r16
reti