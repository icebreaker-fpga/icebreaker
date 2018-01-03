# ICEBreaker FPGA

The icebreaker FPGA board is a low cost, open-source FPGA development board.

The main motivating application of this board is for classes and workshops
teaching the use of the icestorm FPGA design flow. This means the board has to
be low cost and have a nice set of features to allow for the design of
interesting workshop excersizes.

# Hardware Requirements

 * FT2232H interface (microUSB plug)
   * programming compatible with ICEStick and HX8K board (works with iceprog)
   * serial port compatible with ICEStick and HX8K board
   * we might just copy the schematic + EEPROM image from ICEStick
   * 12MHz XTAL oscillator (shared with FPGA)
   * Jumpers for SRAM programming (like on the HX8K board)

 * RGB LED
   * Footprint for LED (potentially unpopulated)
   * Additional 5pin header (R, G, B, VCC, GND)

 * 39 I/O capable pins:
   * 4 pins for config (SDI, SDO, SCK, CSB)
   * 2 extra GPIO pins for QSPI
   * 3 pins for RGB LED / pin header
   * 2 LEDs (on GBIN pins)
   * 1 Clock (on GBIN pin)
   * 1 UART Rx Pin via FTDI
   * 1 UART Tx Pin via FTDI
   * 1 push button
   * 16 pins for dual PMOD
   * 8 pins for single PMOD / snap-off section

 * Snap-off section (convertible to PMOD host / PMOD device)

 * Support for FTDI Async FIFO mode
   * We want to support FTDI Async mode via some (unpopulated by default) zero ohm resistors
   * This will share 8 GPIOs with the single PMOD / snap-off section
   * Thil will also enable the use of the full RS232 hardware signaling
   * BDATA[0] -- Tx on FTDI / Rx on FPGA (always connected no jumper needed)
   * BDATA[1] -- Rx on FTDI / Tx on FPGA (always connected no jumper needed)
   * BDATA[7:2] -- Shared with the snap-off section (solder/zero ohm jumpers)
   * Rx Full -- Shared with the snap-off section (solder/zero ohm jumper)
   * Tx Empty -- Shared with the snap-off section (solder/zero ohm jumper)
   * Read -- Shared with LED1 (solder/zero ohm jumper, LED used as Rx indicator)
   * Write -- Shared with LED2 (solder/zero ohm jumper, LED used as Tx indicator)
   * WakeUp -- Shared with the push button (solder/zero ohm jumper)

