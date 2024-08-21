/*
 * FreeRTOS V202212.00
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * https://www.FreeRTOS.org
 * https://github.com/FreeRTOS
 *
 */

/******************************************************************************
 * NOTE 1:  This project provides two demo applications.  A simple blinky
 * style project, and a more comprehensive test and demo application.  The
 * mainCREATE_SIMPLE_BLINKY_DEMO_ONLY setting in main.c is used to select
 * between the two.  See the notes on using mainCREATE_SIMPLE_BLINKY_DEMO_ONLY
 * in main.c.  This file implements the simply blinky style version.
 *
 * NOTE 2:  This file only contains the source code that is specific to the
 * basic demo.  Generic functions, such FreeRTOS hook functions, and functions
 * required to configure the hardware are defined in main.c.
 ******************************************************************************
 *
 * main_blinky() creates one queue, and two tasks.  It then starts the
 * scheduler.
 *
 * The Queue Send Task:
 * The queue send task is implemented by the prvQueueSendTask() function in
 * this file.  prvQueueSendTask() sits in a loop that causes it to repeatedly
 * block for 1000 milliseconds, before sending the value 100 to the queue that
 * was created within main_blinky().  Once the value is sent, the task loops
 * back around to block for another 1000 milliseconds...and so on.
 *
 * The Queue Receive Task:
 * The queue receive task is implemented by the prvQueueReceiveTask() function
 * in this file.  prvQueueReceiveTask() sits in a loop where it repeatedly
 * blocks on attempts to read data from the queue that was created within
 * main_blinky().  When data is received, the task checks the value of the
 * data, and if the value equals the expected 100, writes 'Blink' to the UART
 * (the UART is used in place of the LED to allow easy execution in QEMU).  The
 * 'block time' parameter passed to the queue receive function specifies that
 * the task should be held in the Blocked state indefinitely to wait for data to
 * be available on the queue.  The queue receive task will only leave the
 * Blocked state when the queue send task writes to the queue.  As the queue
 * send task writes to the queue every 1000 milliseconds, the queue receive
 * task leaves the Blocked state every 1000 milliseconds, and therefore toggles
 * the LED every 200 milliseconds.
 */

/* Standard includes. */
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

/*Other includes*/
#include "inttypes.h"

/* Priorities used by the tasks. */
#define mainQUEUE_RECEIVE_TASK_PRIORITY (tskIDLE_PRIORITY + 2)
#define mainQUEUE_SEND_TASK_PRIORITY (tskIDLE_PRIORITY + 1)

/* The rate at which data is sent to the queue.  The 200ms value is converted
to ticks using the pdMS_TO_TICKS() macro. */
#define mainQUEUE_SEND_FREQUENCY_MS pdMS_TO_TICKS(1000)

/* The maximum number items the queue can hold.  The priority of the receiving
task is above the priority of the sending task, so the receiving task will
preempt the sending task and remove the queue items each time the sending task
writes to the queue.  Therefore the queue will never have more than one item in
it at any time, and even with a queue length of 1, the sending task will never
find the queue full. */
#define mainQUEUE_LENGTH (1)

/*-----------------------------------------------------------*/

/* --------------- GLOBAL VARIABLES -------------------------*/

TaskHandle_t xHandle;
static volatile uint64_t start = 0, end = 0;

/* --------------- ! GLOBAL VARIABLES -----------------------*/

/*
 * Called by main when mainCREATE_SIMPLE_BLINKY_DEMO_ONLY is set to 1 in
 * main.c.
 */
void main_blinky(void);

/*
 * The tasks as described in the comments at the top of this file.
 */
// static void prvQueueReceiveTask(void *pvParameters);
// static void prvQueueSendTask(void *pvParameters);

/*-----------------------------------------------------------*/

/* The queue used by both tasks. */
// static QueueHandle_t xQueue = NULL;

/*-----------------------------------------------------------*/

/*--------------------------Testing--------------------------*/

#define mainTEST_STACK_SIZE_WORDS 85

static void vTask1(void *pvParameters);
static void vTask2(void *pvParameters);

extern void vSendString(const char *pcString);

/*--------------------------Testing--------------------------*/

// Personalized itoa implementation

void uint64_to_str(uint64_t value, char *str, int base)
{
	char *ptr = str, *ptr1 = str, tmp_char;
	uint64_t tmp_value;

	if (base < 2 || base > 36)
	{
		*str = '\0';
		return;
	}

	do
	{
		tmp_value = value;
		value /= base;
		*ptr++ = "0123456789abcdefghijklmnopqrstuvwxyz"[tmp_value - value * base];
	} while (value);

	*ptr-- = '\0';

	while (ptr1 < ptr)
	{
		tmp_char = *ptr;
		*ptr-- = *ptr1;
		*ptr1++ = tmp_char;
	}
}

static inline uint64_t read_cycle(void)
{
	uint32_t cycle_low, cycle_high;
	uint64_t cycle;

	// Read the high 32 bits first
	asm volatile("rdcycleh %0" : "=r"(cycle_high));
	// Read the low 32 bits
	asm volatile("rdcycle %0" : "=r"(cycle_low));
	// Read the high 32 bits again to ensure there was no overflow
	// Note: It can happen that between 2 reads the counter was increased and probably overflowed and that would lead to huge differences and incorrect cycle count
	uint32_t cycle_high2;
	asm volatile("rdcycleh %0" : "=r"(cycle_high2));

	// If the high bits changed, re-read the low bits
	if (cycle_high != cycle_high2)
	{
		cycle_high = cycle_high2;
		asm volatile("rdcycle %0" : "=r"(cycle_low));
		vSendString("\nSecond high different!\n");
	}

	// This joins the high and low bits into a single value
	// Note: cast cycle high from 32 to 64 bits zero extending it, shifts the high to occupy the most significant 32 bits leaving the least significant with zeros
	// 		 OR operation (|) leads to cycle low taking the least significant 32 bits and replacing the zeros.

	cycle = ((uint64_t)cycle_high << 32) | cycle_low;
	return cycle;
}

static void vTask1(void *pvParameters)
{
	uint64_t start, end;
	char buffer[64];

	vSendString("\nIn task1\n");

	for (int i = 0; i < 10; i++)
	{
		start = read_cycle();
		vTaskDelay(0); // Simulate context switch delay
		end = read_cycle();

		uint64_to_str(start, buffer, 10);
		vSendString("\nStart cycle count: ");
		vSendString(buffer);

		uint64_to_str(end, buffer, 10);
		vSendString("\nEnd cycle count: ");
		vSendString(buffer);

		uint64_to_str(end - start, buffer, 10);
		vSendString("\nCycle difference count: ");
		vSendString(buffer);
	}

	vSendString("\nDone with task1\n");
	vTaskDelete(NULL);
}

static void vTask2(void *pvParameters)
{
	while (1)
	{
		// vSendString("2");
	}
}

/* Task 1: Measures the overhead of vTaskSuspend and context switch */
static void vMeasureTaskSuspend1(void *pvParameters)
{
	int i;
	char buf[64];

	for (i = 0; i < 1000; i++) {
		//vSendString("In vMeasureTaskSuspend1\n");

		start = read_cycle();
		vTaskSuspend(NULL);
		end = read_cycle();

		uint64_to_str(end - start, buf, 10);
		vSendString(buf);
		vSendString("\n");
		//vTaskDelay(10);
	}

	for(;;);
}

/* Task 2: Resumes Task 1 */
static void vMeasureTaskSuspend2(void *pvParameters)
{
	for(;;) {
		//vSendString("In vMeasureTaskSuspend2\n");
		vTaskResume(xHandle);
		//vTaskDelay(10);
	}
}

void main_blinky(void)
{
	//vSendString("\n\n\nRunning main_blinky()\n\n");

	//xTaskCreate(vTask1, "Task 1", mainTEST_STACK_SIZE_WORDS, NULL, (configMAX_PRIORITIES - 1), NULL);
	//xTaskCreate(vTask2, "Task 2", mainTEST_STACK_SIZE_WORDS, NULL, (configMAX_PRIORITIES - 3), NULL);
	xTaskCreate(vMeasureTaskSuspend1, "t1", mainTEST_STACK_SIZE_WORDS, NULL, (configMAX_PRIORITIES - 1), &xHandle);
	xTaskCreate(vMeasureTaskSuspend2, "t2", mainTEST_STACK_SIZE_WORDS, NULL, (configMAX_PRIORITIES - 3), NULL);


	/* Start the tasks and timer running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following
	line will never be reached.  If the following line does execute, then
	there was insufficient FreeRTOS heap memory available for the Idle and/or
	timer tasks to be created.
	*/
	for (;;)
		;
}

// ORIGINAL BLINKY DEMO FOR REFERENCE

// void main_blinky( void )
// {
// 	vSendString("\n\n\nRunning main_blinky()\n\n");

// 	/* Create the queue. */
// 	xQueue = xQueueCreate( mainQUEUE_LENGTH, sizeof( uint32_t ) );

// 	if( xQueue != NULL )
// 	{
// 		/* Start the two tasks as described in the comments at the top of this
// 		file. */
// 		xTaskCreate( prvQueueReceiveTask,				/* The function that implements the task. */
// 					"Rx", 								/* The text name assigned to the task - for debug only as it is not used by the kernel. */
// 					configMINIMAL_STACK_SIZE * 2U, 			/* The size of the stack to allocate to the task. */
// 					NULL, 								/* The parameter passed to the task - not used in this case. */
// 					mainQUEUE_RECEIVE_TASK_PRIORITY, 	/* The priority assigned to the task. */
// 					NULL );								/* The task handle is not required, so NULL is passed. */

// 		xTaskCreate( prvQueueSendTask, "TX", configMINIMAL_STACK_SIZE * 2U, NULL, mainQUEUE_SEND_TASK_PRIORITY, NULL );

// 		/* Start the tasks and timer running. */
// 		vTaskStartScheduler();
// 	}

// 	/* If all is well, the scheduler will now be running, and the following
// 	line will never be reached.  If the following line does execute, then
// 	there was insufficient FreeRTOS heap memory available for the Idle and/or
// 	timer tasks to be created.  See the memory management section on the
// 	FreeRTOS web site for more details on the FreeRTOS heap
// 	http://www.freertos.org/a00111.html. */
// 	for( ;; );

// }
// /*-----------------------------------------------------------*/

// static void prvQueueSendTask( void *pvParameters )
// {
// TickType_t xNextWakeTime;
// const unsigned long ulValueToSend = 100UL;
// BaseType_t xReturned;

// 	/* Remove compiler warning about unused parameter. */
// 	( void ) pvParameters;

// 	/* Initialise xNextWakeTime - this only needs to be done once. */
// 	xNextWakeTime = xTaskGetTickCount();

// 	for( ;; )
// 	{
// 		/* Place this task in the blocked state until it is time to run again. */
// 		vTaskDelayUntil( &xNextWakeTime, mainQUEUE_SEND_FREQUENCY_MS );

// 		/* Send to the queue - causing the queue receive task to unblock and
// 		toggle the LED.  0 is used as the block time so the sending operation
// 		will not block - it shouldn't need to block as the queue should always
// 		be empty at this point in the code. */
// 		xReturned = xQueueSend( xQueue, &ulValueToSend, 0U );
// 		configASSERT( xReturned == pdPASS );
// 	}
// }
// /*-----------------------------------------------------------*/

// static void prvQueueReceiveTask( void *pvParameters )
// {
// unsigned long ulReceivedValue;
// const unsigned long ulExpectedValue = 100UL;
// const char * const pcPassMessage = "Blink\r\n";
// const char * const pcFailMessage = "Unexpected value received\r\n";
// extern void vSendString( const char * pcString );

// 	/* Remove compiler warning about unused parameter. */
// 	( void ) pvParameters;

// 	for( ;; )
// 	{
// 		/* Wait until something arrives in the queue - this task will block
// 		indefinitely provided INCLUDE_vTaskSuspend is set to 1 in
// 		FreeRTOSConfig.h. */
// 		xQueueReceive( xQueue, &ulReceivedValue, portMAX_DELAY );

// 		/*  To get here something must have been received from the queue, but
// 		is it the expected value?  If it is, toggle the LED. */
// 		if( ulReceivedValue == ulExpectedValue )
// 		{
// 			vSendString( pcPassMessage );
// 			ulReceivedValue = 0U;
// 		}
// 		else
// 		{
// 			vSendString( pcFailMessage );
// 		}
// 	}
// }
// /*-----------------------------------------------------------*/
