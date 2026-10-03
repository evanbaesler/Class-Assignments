/*
 * lab6_4.c
 *
 * Created: 7/14/2026 2:10:29 AM
 *  Author: Evan Baesler
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include "spi.h"
#include "lsm6dsl.h"
#include "lsm6dsl_registers.h"

void spi_init(void);
void LSM_init(void);
uint8_t LSM_read(uint8_t reg_addr);
void LSM_write(uint8_t reg_addr, uint8_t data); // PROTOTYPES
uint8_t output;

int main(void)
{
	spi_init();
	LSM_init();

	sei();
	
	while(1)
	{
		
		// NOOP TIL INTERRUPT IS READY
		
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

void usartd0_out_repeat(uint8_t *data, uint8_t length)
{
	for (uint8_t i = 0; i < length; i++)
	{
		usartd0_out_char(data[i]);
	}
}

uint8_t LSM_read(uint8_t reg_addr)
{
	PORTF.OUTCLR = SS_bm; // Enable IMU
	
	SPIF.DATA = (reg_addr | 0x80); // READ FROM ADDRESS (MSB ON)
	
	while(!(SPIF.STATUS & (SPI_IF_bm))); // WAIT FOR TRANSFER
	
	SPIF.DATA = 0x37; // DUMMY VALUE, OVERWRITTEN IN NEXT CLK

	while(!(SPIF.STATUS & (SPI_IF_bm))); // WAIT FOR TRANSFER

	PORTF.OUTSET = SS_bm; // Disable IMU

	return SPIF.DATA; // RETURN DATA FROM ADDRESS
	
}

void LSM_write(uint8_t reg_addr, uint8_t data)
{
	PORTF.OUTCLR = SS_bm; // Enable IMU
	
	SPIF.DATA = (reg_addr); // WRITE TO ADDRESS (MSB OFF)
	
	while(!(SPIF.STATUS & (SPI_IF_bm))); // WAIT FOR TRANSFER
	
	SPIF.DATA = data; // WRITTEN VALUE

	while(!(SPIF.STATUS & (SPI_IF_bm))); // WAIT FOR TRANSFER
	
	PORTF.OUTSET = SS_bm; // Disable IMU
}

// INTERRUPTS

ISR(PORTC_INT0_vect)
{
	
	output = LSM_read(OUTX_L_XL);
	
	PORTC.INTFLAGS = PIN6_bm;
}