/*
 * lab8_1.c
 *
 * Created: 7/21/2026 9:25:58 PM
 * Author : Evan Baesler
 */ 

#include <avr/io.h>

extern void clock_init(void);

void daca_init(void);
uint16_t value = 2621;

int main(void)
{
    
	clock_init(); // Sets Clock to 32MHz
	daca_init();
	
    while (1) 
    {
		// Poll until DAC channel 0 data register is empty
        if (DACA.STATUS & DAC_CH0DRE_bm)
        {
            DACA.CH0DATA = value;
        }
    }
}

void daca_init(void){
	DACA.CTRLC = DAC_REFSEL_AREFB_gc; // REFSEL[1:0] on bits 4:3, AREFB = 2.5V
	DACA.CTRLB = DAC_CHSEL_SINGLE_gc;
	DACA.CTRLA = DAC_ENABLE_bm | DAC_CH0EN_bm;
}

