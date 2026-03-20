## =========================================================
## ARTY Z7-10 Rev.B XDC for current CPU_top
## Top-level ports:
##   input  clk, rst
##   output [15:0] r
##   output z, n, c, o
## =========================================================

## Clock Signal
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { clk }]; # SYSCLK
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];

## Reset Button
set_property -dict { PACKAGE_PIN D19 IOSTANDARD LVCMOS33 } [get_ports { rst }]; # BTN0

## =========================================================
## On-board LEDs
## =========================================================

## LEDs for r[3:0]
set_property -dict { PACKAGE_PIN R14 IOSTANDARD LVCMOS33 } [get_ports { r[0] }]; # LED0
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { r[1] }]; # LED1
set_property -dict { PACKAGE_PIN N16 IOSTANDARD LVCMOS33 } [get_ports { r[2] }]; # LED2
set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports { r[3] }]; # LED3

## RGB LEDs for flags
set_property -dict { PACKAGE_PIN N15 IOSTANDARD LVCMOS33 } [get_ports { z }]; # LED4_R
set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS33 } [get_ports { n }]; # LED4_G
set_property -dict { PACKAGE_PIN L15 IOSTANDARD LVCMOS33 } [get_ports { c }]; # LED4_B

set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS33 } [get_ports { o }]; # LED5_R

## Optional extra result bits on remaining RGB channels
set_property -dict { PACKAGE_PIN L14 IOSTANDARD LVCMOS33 } [get_ports { r[4] }]; # LED5_G
set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS33 } [get_ports { r[5] }]; # LED5_B

## =========================================================
## PMOD Header JA for more result bits
## =========================================================

set_property -dict { PACKAGE_PIN Y18 IOSTANDARD LVCMOS33 } [get_ports { r[6] }];  # JA1_P
set_property -dict { PACKAGE_PIN Y19 IOSTANDARD LVCMOS33 } [get_ports { r[7] }];  # JA1_N
set_property -dict { PACKAGE_PIN Y16 IOSTANDARD LVCMOS33 } [get_ports { r[8] }];  # JA2_P
set_property -dict { PACKAGE_PIN Y17 IOSTANDARD LVCMOS33 } [get_ports { r[9] }];  # JA2_N
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { r[10] }]; # JA3_P
set_property -dict { PACKAGE_PIN U19 IOSTANDARD LVCMOS33 } [get_ports { r[11] }]; # JA3_N
set_property -dict { PACKAGE_PIN W18 IOSTANDARD LVCMOS33 } [get_ports { r[12] }]; # JA4_P
set_property -dict { PACKAGE_PIN W19 IOSTANDARD LVCMOS33 } [get_ports { r[13] }]; # JA4_N

## =========================================================
## PMOD Header JB for remaining result bits
## =========================================================

set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33 } [get_ports { r[14] }]; # JB1_P
set_property -dict { PACKAGE_PIN Y14 IOSTANDARD LVCMOS33 } [get_ports { r[15] }]; # JB1_N