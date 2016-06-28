/*
 * Intrup_test.c
 *
 *  Created on: 2015-4-29
 *      Author: samsung
 */

#include <xtmrctr.h>
#include <xintc.h>
#include <xparameters.h>
//#include <xil_exception.h>
//#include <xil_types.h>
#include <stdio.h>

XIntc InterruptController;     /*The instance of the Interrupt Controller*/
XTmrCtr TimerCounterInst;     /*The instance of the Timer Counter*/

unsigned int count = 0;
int one_second_flag = 0;

/*定时器中断服务程序*/
void timer_int_handler(void * CallBackRef, u8 TmrCtrNumber){
	//设置回调函数
	XTmrCtr * InstancePtr = (XTmrCtr *)CallBackRef;
	//检查定时器的值是否过期
	if(XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber)){
		count++;
		one_second_flag = 1;
		//通过UART在终端上打印技术值
		xil_printf("Count value is: %x\n\r", count);
	}
}

int TmrCtrIntr(XIntc * IntcInstancePtr, XTmrCtr * TmrCtrInstancePtr, u16 DeviceID, u16 IntrID, u8 TmrCtrNumber){
	int Status;

	/*连接一个设备句柄，当识别中断后，与中断源相关的句柄将运行。IntcInstancePtr为中断控制器，
	  IntrID为定时器的中断号，XTmrCtr_InterruptHandler为中断的句柄，TmrCtrInstancePtr为回调参数。*/

	Status = XIntc_Connect(IntcInstancePtr, IntrID, (XInterruptHandler)XTmrCtr_InterruptHandler, (void *)TmrCtrInstancePtr);
	if(Status != XST_SUCCESS)
		return XST_FAILURE;
	//启动中断控制器
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if(Status != XST_SUCCESS)
			return XST_FAILURE;
	//使能中断
	XIntc_Enable(IntcInstancePtr, IntrID);
	//允许处理器处理中断
	microblaze_enable_interrupts();
	if(Status != XST_SUCCESS)
			return XST_FAILURE;
	//设定用于定时器的句柄
	XTmrCtr_SetHandler(TmrCtrInstancePtr, timer_int_handler, TmrCtrInstancePtr);
	//设置定时器选项
	XTmrCtr_SetOptions(TmrCtrInstancePtr, TmrCtrNumber, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
	//设置定时器计数的周期数加到1s（在50MHZ条件下）
	//中断为 = 0xFFFFFFFF - 0x2FAF080(=50000000) => 0xFD050F80
	XTmrCtr_SetResetValue(TmrCtrInstancePtr, TmrCtrNumber, 0xFD050F80);
	//启动定时器
	XTmrCtr_Start(TmrCtrInstancePtr, TmrCtrNumber);
	xil_printf("The value of count = %d\n\r", count);
	return XST_SUCCESS;
}

int main(void){
	int count_mod_3;
	int Status;
	//u32 option;
	//初始化定时器
	Status = XTmrCtr_Initialize(&TimerCounterInst, XPAR_DELAY_DEVICE_ID);
	if(Status != XST_SUCCESS)
		return XST_FAILURE;
	//初始化中断控制器
	Status = XIntc_Initialize(&InterruptController, XPAR_AXI_INTC_0_DEVICE_ID);
	if(Status != XST_SUCCESS)
		return XST_FAILURE;
	//中断服务程序和中断设备的映射
	Status = TmrCtrIntr(&InterruptController, &TimerCounterInst, XPAR_DELAY_DEVICE_ID, XPAR_AXI_INTC_0_DELAY_INTERRUPT_INTR, 0);
	if(Status != XST_SUCCESS){
		return XST_FAILURE;
	}
	/*等待产生中断*/
	while(1){
		//option = XTmrCtr_GetOptions (&TimerCounterInst, 0);
		if(one_second_flag){
			count_mod_3 = count % 3;
			if(count_mod_3 == 0)
				xil_printf("Interrupt taken at %d second\n\r", count);
			one_second_flag = 0;
			xil_printf(".");
			//xil_printf("option = %x", option);
		}
	}
	return XST_SUCCESS;
}
