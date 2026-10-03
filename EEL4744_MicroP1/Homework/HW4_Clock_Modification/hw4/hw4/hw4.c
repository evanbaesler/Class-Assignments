/*
 * hw4.c
 *
 * Created: 7/24/2026 5:52:37 PM
 * Author : Evan Baesler
 */ 

#include <avr/io.h>

extern void clock_init(void);

int main(void)
{
    clock_init();
	PORTCFG.CLKEVOUT = PORTCFG_CLKOUT_PC7_gc;
	PORTC.DIRSET = (1<<7);
	
	while (1) 
    {
		// Loop while reading CLK
    }
}

