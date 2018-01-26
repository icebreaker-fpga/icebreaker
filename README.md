# ICEBreaker FPGA

[![Join the chat at https://gitter.im/esden/icebreaker](https://badges.gitter.im/esden/icebreaker.svg)](https://gitter.im/esden/icebreaker?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

The icebreaker FPGA board is a low cost, open-source FPGA development board.

The main motivating application of this board is for classes and workshops
teaching the use of the icestorm FPGA design flow. This means the board has to
be low cost and have a nice set of features to allow for the design of
interesting workshop exercises.

# Hardware Requirements

* iCE40UP5K in QFN48 (SG48) package
  * iCE40 UltraPlus 5K
  * 5280 Logic Cells (4-LUT + Carry + FF)
  * 128 KBit Dual-Port Block RAM
  * 1 MBit (128 KB) Single-Port RAM
  * PLL, Two SPI and two I2C hard IPs
  * Two internal oscillators (10 kHz and 48 MHz)
  * 8 DSPs (16x16 multiply + 32 bit accumulate)
  * 3x 24mA drive and 3x hard PWM IP

* QSPI-capable flash 128 MBit (16 MB)
  * Or at least flash in a compatible footprint so it is easy to upgrade

* FT2232H interface (microUSB plug)
  * programming compatible with iCEstick and HX8K board (works with iceprog)
  * serial port compatible with iCEstick and HX8K breakout board
  * we might just copy schematic + EEPROM image from iCEstick
  * 12 MHz XTAL oscillator (shared with FPGA)
  * Jumpers or zero ohm resistors for SRAM programming (like on HX8K breakout board)

* 39 I/O capable pins:
  * 4 pins for config (SDI, SDO, SCK, CSB)
  * 2 extra GPIO pins for QSPI
  * 3 PINs for RGB LED (pin header)
  * 2 LEDs (one on output-only PLL pin)
  * 1 Clock pin (on PLL GBIN)
  * 1 UART Rx Pin via FTDI
  * 1 UART Tx Pin via FTDI
  * 1 Push Button
  * 16 PINs on dual PMOD
  * 8 PINs on single PMOD / snap-off section

* Support for FTDI Async FIFO mode
  * We want to support FTDI Async mode via some (unpopulated by default) zero ohm resistors
  * This shares 8 GPIOs with the single PMOD / snap-off section
  * This would also enable use of full list of RS232 signals
  * BDATA[0] -- Tx on FTDI / Rx on FPGA (always connected, no zohm resistor required)
  * BDATA[1] -- Rx on FTDI / Tx on FPGA (always connected, no zohm resistor required)
  * BDATA[7:2] -- Shared with snap-off section (via zohm resistor footprint)
  * RX Full -- Shared with snap-off section (via zohm resistor footprint)
  * TX Empty -- Shared with snap-off section (via zohm resistor footprint)
  * Read -- Shared with LED 1 (via zohm resistor footprint, LED used as RX indicator)
  * Write -- Shared with LED 2 (via zohm resistor footprint, LED used as TX indicator)
  * WakeUp -- Shared with Push Button (via zohm resistor footprint)

* Snap-off section (convertible to PMOD host / PMOD device)
  * 5 LEDs in similar arrangement to iCEstick
  * 3 Push Buttons

* Other stuff
  * Status LEDs for Power and CDONE
  * Header with supply rails: 5V, 3V3, 1V2, GND
  * Debug header for all 6 QSPI pins
  * Test points for UART Rx / Tx signals
  * Jumpers or zohm resistors on all rails for measuring currents
  * Four 3mm mounting holes on the main section and two more on the snap-off section
  * The two LEDs on the main section should be wired "active low" so they work well as indicator LEDs for FIFO read/write.
  * The five LEDs on the snap-off section should be wired "active high"
  * A zohm resistor for Bank 2 supply so that the IO voltage can be changed. Use Bank 2 for one of the ports on the double PMOD.

* Unpopulated parts shipped with the board
  * 3x Host PMOD (2x for dual PMOD port, 1x for snap-off section)
  * 1x Device PMOD (for other side of snap-off section)

* Branding
  * iCEbreaker (https://twitter.com/AboveVacant/status/948323920595308545)
