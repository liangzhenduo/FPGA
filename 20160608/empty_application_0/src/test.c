/*
 * test.c
 *
 *  Created on: 2015-6-3
 *      Author: samsung
 */

#include <stdio.h>
#include <xparameters.h>
#include <led_ip.h>

int main(){
	int i, j;
	for(i = 0; i < 256; i++){
		LED_IP_mWriteReg(XPAR_LED_IP_0_BASEADDR, 0, i);
		for(j = 0; j <= 999999; j++);
	}
	return 0;
}

