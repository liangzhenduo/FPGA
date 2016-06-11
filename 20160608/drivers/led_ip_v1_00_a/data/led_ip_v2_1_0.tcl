##############################################################################
## Filename:          D:\Work\FPGA\Embedded_Design\Lab3/drivers/led_ip_v1_00_a/data/led_ip_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Wed Jun 03 22:00:02 2015 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "led_ip" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
