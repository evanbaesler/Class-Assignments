/*
 * Prac2.c
 *
 * Created: 7/29/2026 3:44 PM
 *  Author: Evan Baesler
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include "spi.h"
#include "usart.h"
#include "lsm6dsl.h"
#include "lsm6dsl_registers.h"

void spi_init(void);
void LSM_init(void);
void tcc0_init(void);
void daca_init(void);
void usartd0_out_repeat(uint8_t *data, uint8_t length);

volatile uint8_t accel_flag;
uint32_t accel_data1 = 0;
uint32_t accel_data2 = 0;
uint32_t accel_data3 = 0;
uint8_t orientation = 0;


int main(void)
{
	spi_init();
	LSM_init();	
	tcc0_init();
	daca_init();
	usartd0_init();
	PORTK_DIRSET = PIN7_bm; // set as output
	PORTK_OUTSET = PIN7_bm; // turn on


	sei();

	while(1)
	{
		
		if (accel_flag == 1){
		
			accel_data1 = 0;
			accel_data2 = 0;
			accel_data3 = 0;
		
			// 1. READ DATA
			accel_data1 |= LSM_read(OUTX_L_XL);
			accel_data1 |= (LSM_read(OUTX_H_XL) << 8);
			//accel_data1 &= 0x7FFF; // remove sign
			
			accel_data2 |= LSM_read(OUTY_L_XL);
			accel_data2 |= (LSM_read(OUTY_H_XL) << 8);
			//accel_data2 &= 0x7FFF; // remove sign
			
			accel_data3 |= LSM_read(OUTZ_L_XL);
			accel_data3 |= (LSM_read(OUTZ_H_XL) << 8);
			//accel_data3 &= 0x7FFF; // remove sign
			
			// 0b0111 1111 1111 1111
			
			if ((accel_data1 > accel_data2) && (accel_data1 > accel_data3) && (accel_data1 > 0x003F))
			{
				outstring("OMB pins on top");
				outstring("\r\n");
				orientation = 0;
				DACA.CH0DATA = 818; // 0.5V
			}
			else if ((accel_data2  > accel_data3) && (accel_data2 > accel_data1) && (accel_data2 > 0x003F))
			{
				outstring("Flat on table");
				outstring("\r\n");
				orientation = 1;
				DACA.CH0DATA = 2784; // 1.7V
			}
			else if ((accel_data3 > accel_data2) && (accel_data3 > accel_data1) && (accel_data3 > 0x003F))
			{
				outstring("USB on top");
				outstring("\r\n");
				orientation = 2;
				DACA.CH0DATA = 3767; // 2.3V
			}
			else{
				
			}
			
			// 3. RESET AND ENABLE FLAG
			accel_flag = 0;
			PORTC.INT0MASK |= PIN6_bm;
		}
		
	}
	
}

// SUBROUTINES

void spi_init(void)
{
	
  /* Initialize the relevant SPI output signals to be in an "idle" state.
   * Refer to the relevant timing diagram within the LSM6DSL datasheet.
   * (You may wish to utilize the macros defined in `spi.h`.) */
  PORTF.OUTSET = SS_bm | SCK_bm;

  /* Configure the pin direction of relevant SPI signals. */
  PORTF.DIRSET = SS_bm | MOSI_bm | SCK_bm;
  PORTF.DIRCLR = MISO_bm;
	
  /* Set the other relevant SPI configurations. */
  SPIF.CTRL	=	SPI_PRESCALER_DIV16_gc    |
					    SPI_MASTER_bm	  |
					    SPI_MODE_3_gc     |
					    SPI_ENABLE_bm;
						// This leaves CTRL.DORD false, so MSB -> LSB
}

void LSM_init(void)
{
	LSM_write(CTRL3_C, 0x01); // SW_RESET FLAG, SELF CLEARS
	for(uint16_t i = 0; i < 2000; i++);
	
	LSM_write(CTRL3_C, (1<<5)); // SET INTERRUPT TO ACTIVE-LOW
	LSM_write(INT1_CTRL, 0x01); // ENABLE INT1_DRDY_XL
	
	LSM_write(CTRL9_XL, 0); // DISABLE DEN IN DATA OUTPUT FOR HIGHER RES
	LSM_write(CTRL1_XL, 0b01010000); // 208Hz, +-2g
	// THIS MEANS 208 SAMPLES / SECOND
	
	PORTC.DIRCLR = PIN6_bm; // INT1 PIN
	PORTC.PIN6CTRL = PORT_ISC_LEVEL_gc; // LOW LEVEL INTERRUPT SENSE
	PORTC.INTCTRL = PORT_INT0LVL_LO_gc; // SET INT0 TO LO LVL INT
	PORTC.INT0MASK = PIN6_bm; // CONNECT PIN6 TO PORTC INT0
	PMIC.CTRL = PMIC_LOLVLEN_bm; // ENABLE LOLVL INT
}

void outchar(char c){
	while(!(USARTD0.STATUS & USART_DREIF_bm));
	USARTD0.DATA = c;
}

void outstring(const char *str){
	for(uint8_t i = 0; str[i] != 0; i++){
		outchar(str[i]);
	}
}

void tcc0_init(void){
	
	TCC0.PER = 2774; // 2774 gets closest to 370Hz
	TCC0.CTRLA = TC_CLKSEL_DIV1_gc;
	TCC0.INTCTRLA = TC_OVFINTLVL_LO_gc;
	PMIC.CTRL = PMIC_LOLVLEN_bm;
	
	// PER = 0.0027027(2000000/(1)) = 5405
	
}

void daca_init(void){
	DACA.CTRLC = DAC_REFSEL_AREFB_gc; // REFSEL[1:0] on bits 4:3, AREFB = 2.5V
	DACA.CTRLB = DAC_CHSEL_SINGLE_gc;
	DACA.CTRLA = DAC_ENABLE_bm | DAC_CH0EN_bm;
}

// INTERRUPTS

ISR(PORTC_INT0_vect)
{
	
	accel_flag = 1; // TELL USART DATA IS READY FOR TRANSMIT.
	
	PORTC.INT0MASK &= ~PIN6_bm; // DISABLE INTERRUPT
	
	PORTC.INTFLAGS = 0x01; // RESET INTERRUPT FLAG

}

ISR(TCC0_OVF_vect){
	
	PORTK.DIRTGL = PIN7_bm;
	
}