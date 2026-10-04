/*
 * lab6_3.c
 *
 * Created: 7/14/2026 12:52:10 AM
 *  Author: Evan Baesler
 */ 

#include <avr/io.h>
#include "spi.h"
#include "lsm6dsl.h"
#include "lsm6dsl_registers.h"

uint8_t LSM_read(uint8_t reg_addr);
void LSM_write(uint8_t reg_addr, uint8_t data); // PROTOTYPES

int main(void)
{
	spi_init();
	uint8_t output;
	
	while(1)
	{
		
		output = LSM_read(WHO_AM_I);
		
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