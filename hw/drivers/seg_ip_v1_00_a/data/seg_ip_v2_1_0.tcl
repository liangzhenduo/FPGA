##############################################################################
## Filename:          C:\FPGA\hw/drivers/seg_ip_v1_00_a/data/seg_ip_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Jun 13 16:44:51 2016 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "seg_ip" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
