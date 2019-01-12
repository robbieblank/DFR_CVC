/*
 * cvc_spi.h
 *
 *  Created on: Jan 9, 2019
 *      Author: f002ccx
 */

#ifndef INC_CVC_SPI_H_
#define INC_CVC_SPI_H_

/* Temporary defines of LED blink times */
 /**
  * @brief Toggle periods for various blinking modes
  */
#define LED_BLINK_FAST  200
#define LED_BLINK_SLOW  500
#define LED_BLINK_ERROR 1000

/**
  * @brief LED1
  */
#define LED1_PIN                           LL_GPIO_PIN_0
#define LED1_GPIO_PORT                     GPIOB
#define LED1_GPIO_CLK_ENABLE()             LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB)



/* Includes ------------------------------------------------------------------*/
#include "stm32f7xx_ll_bus.h"
#include "stm32f7xx_ll_rcc.h"
#include "stm32f7xx_ll_system.h"
#include "stm32f7xx_ll_utils.h"
#include "stm32f7xx_ll_gpio.h"
#include "stm32f7xx_ll_exti.h"
#include "stm32f7xx_ll_spi.h"
#include "stm32f7xx_ll_pwr.h"

#include "stm32f7xx_it.h"


/**
  * @brief Key push-button
  */
#define USER_BUTTON_PIN                         LL_GPIO_PIN_13
#define USER_BUTTON_GPIO_PORT                   GPIOC
#define USER_BUTTON_GPIO_CLK_ENABLE()           LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC)
#define USER_BUTTON_EXTI_LINE                   LL_EXTI_LINE_13
#define USER_BUTTON_EXTI_IRQn                   EXTI15_10_IRQn
#define USER_BUTTON_EXTI_LINE_ENABLE()          LL_EXTI_EnableIT_0_31(USER_BUTTON_EXTI_LINE)
#define USER_BUTTON_EXTI_FALLING_TRIG_ENABLE()  LL_EXTI_EnableFallingTrig_0_31(USER_BUTTON_EXTI_LINE)
#define USER_BUTTON_SYSCFG_SET_EXTI()           do {                                                                     \
                                                  LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_SYSCFG);                  \
                                                  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTC, LL_SYSCFG_EXTI_LINE13);  \
                                                } while(0)
#define USER_BUTTON_IRQHANDLER                  EXTI15_10_IRQHandler



/* Uncomment this line to use the board as master, if not it is used as slave */
//#define MASTER_BOARD





/* Typedefs ----------------------------------------------------------*/

volatile typedef struct SPI_inputs_vector_s
{
	uint8_t ICE_enable;						// PLC input 1
	uint8_t Motor_enable;					// PLC input 2
	uint8_t Ready_to_drive;					// PLC input 3
	uint8_t Dash_BRB_press;					// PLC input 4
	uint8_t	IMD_safety_circuit_fault;		// PLC input 5
	uint8_t BMS_safety_circuit_fault;		// PLC input 6
	uint8_t Bamocar_safety_circuit_fault;	// PLC input 7
	//extra input							// PLC input 8

} SPI_inputs_vector_t;

volatile typedef struct SPI_outputs_vector_s
{
	uint8_t	safety;					// PLC output 1
	uint8_t	ready_to_drive;			// PLC output 2
	uint8_t	rfg;					// PLC output 3
	uint8_t ignition_kill;			// PLC output 4
	uint8_t	downshift_solenoid;		// PLC output 5
	uint8_t upshift_solenoid;		// PLC output 6
	//extra output					// PLC output 7
	//extra output					// PLC output 8

} SPI_outputs_vector_t;


typedef struct CLT_Read_s
{
	int	High	:	1;	//This is bit 0
	int	Low		:	1;	//This is bit 1
	int	PC4		:	1;	//This is bit 2
	int PC3		: 	1;	//This is bit 3

	int PC2		:	1;	//This is bit 4
	int PC1		:	1;	//This is bit 5
	int OTA		:	1;	//This is bit 6
	int UVA		:	1;	//This is bit 7

	int IN1		:	1;	//This is bit 8
	int IN2		:	1;	//This is bit 9
	int IN3		:	1;	//This is bit 10
	int IN4		:	1;	//This is bit 11
	int IN5		:	1;	//This is bit 12
	int IN6		:	1;	//This is bit 13
	int IN7		:	1;	//This is bit 14
	int IN8		:	1;	//This is bit 15

}	CLT_Read_t;

typedef struct VNI_Read_s
{
	uint16_t	nP0		:	1;	//This is bit 0
	uint16_t	P0		:	1;	//This is bit 1
	uint16_t	P1		:	1;	//This is bit 2
	uint16_t	P2		:	1;	//This is bit 3

	uint16_t	PG		:	1;	//This is bit 4
	uint16_t	PC		:	1;	//This is bit 5
	uint16_t	TWARN	:	1;	//This is bit 6
	uint16_t	FBOK	:	1;	//This is bit 7

	uint16_t	F1		:	1;	//This is bit 8
	uint16_t	F2		:	1;	//This is bit 9
	uint16_t	F3		:	1;	//This is bit 10
	uint16_t	F4		:	1;	//This is bit 11
	uint16_t	F5		:	1;	//This is bit 12
	uint16_t	F6		:	1;	//This is bit 13
	uint16_t	F7		:	1;	//This is bit 14
	uint16_t	F8		:	1;	//This is bit 15

} 	VNI_Read_t;

typedef struct	VNI_Write_s
{
	uint16_t	nP0		:	1;	//This is bit 0
	uint16_t	P0		:	1;	//This is bit 1
	uint16_t	P1		:	1;	//This is bit 2
	uint16_t	P2		:	1;	//This is bit 3

	uint16_t	SPARE	:	4;	//This is bits 4-7

	uint16_t	IN1		:	1;	//This is bit 8
	uint16_t	IN2		:	1;	//This is bit 9
	uint16_t	IN3		:	1;	//This is bit 10
	uint16_t	IN4		:	1;	//This is bit 11
	uint16_t	IN5		:	1;	//This is bit 12
	uint16_t	IN6		:	1;	//This is bit 13
	uint16_t	IN7		:	1;	//This is bit 14
	uint16_t	IN8		:	1;	//This is bit 15

} 	VNI_Write_t;


typedef union CLT_Read_u
{
	uint16_t	word;
	uint8_t		bytes[2];
	CLT_Read_t	bit;
} CLT_Read_u_t;

typedef union VNI_Read_u
{
	uint16_t	word;
	uint8_t		bytes[2];
	VNI_Read_t	bit;
} VNI_Read_u_t;

typedef union VNI_Write_u
{
	uint16_t	word;
	uint8_t		bytes[2];
	VNI_Write_t	bit;
} VNI_Write_u_t;

typedef enum SPI_io_states_t
{
	wait_for_CLT,
	wait_for_VNI,
	wait_for_next_transmission

} SPI_io_states_t;

extern volatile	CLT_Read_u_t CLT_Read;
extern volatile uint16_t	CLT_Write;	//random 16 bits to initiate transfer with CLT
extern volatile VNI_Read_u_t VNI_Read;



extern volatile SPI_inputs_vector_t		SPI_inputs_vector;
extern volatile SPI_outputs_vector_t	SPI_outputs_vector;

extern volatile SPI_io_states_t SPI_io_state;


/* Function prototypes -----------------------------------------------*/
void Configure_SPI(void);
void Activate_SPI(void);

void initiate_SPI_transmission(void);
void SPI_routine(void);
void add_to_SPI_input_buffer(uint16_t new_data);


void set_SPI_check_bit_outputs(volatile VNI_Write_u_t *WriteValue);

void SPI_PLC_Set_Inputs(void);
void SPI_PLC_Set_Outputs(void);
void set_SPI_check_bit_outputs(volatile VNI_Write_u_t *WriteValue);


CLT_Read_u_t debounce_SPI_input(void);

void UserButton_Callback(void);
void SPI1_Rx_Callback(void);
void SPI1_Tx_Callback(void);
void SPI1_TransferError_Callback(void);

void LED_Init(void);

void WaitAndCheckEndOfTransfer(void);
uint8_t Buffercmp8(uint8_t* pBuffer1, uint8_t* pBuffer2, uint8_t BufferLength);


void     UserButton_Init(void);
void     WaitForUserButtonPress(void);



#endif /* INC_CVC_SPI_H_ */
