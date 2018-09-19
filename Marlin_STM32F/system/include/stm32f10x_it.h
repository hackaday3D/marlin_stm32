/**

 *

 */

#ifndef __STM32_IT_H
#define __STM32_IT_H
#include "stm32f10x.h"
#include "stm32f10x_conf.h"
#include "stm32f10x_usart.h"
extern "C" {

extern	 __IO  u16 Read_ADC_Raw[5] ;
void Serial_PC(const long baud);
void USART1_IRQHandler(void);

void tmper_init_stm32(void);
GPIO_TypeDef * Get_Port(unsigned char Pin);
uint16_t Get_Pin(unsigned char Pin);
void  GPIO_Set_INPUT(unsigned char Pin);
void  GPIO_Set_OUTPUT(unsigned char Pin);
void ANALOG_SELECT_GPIO(unsigned char Pin);
  void WRITE_IO(unsigned char IO,unsigned char v);
  bool READ_IO(unsigned char IO);
void SPIn_Init(char SPI_num,char SCK_pin,char MISO_pin,char MOSI_pin,char CS_pin,char remap);
u8 SPIn_ReadWriteByte(u8 TxData);
u8 SD_RecvData(u8*buf,u16 len);
u8 SD_SendBlock(u8*buf,u8 cmd);

void SPIn_SetSpeed(uint16_t SPI_BaudRatePrescaler);
char pinMode(int pin_number, unsigned char pin_status);
void system_init_stm32(void);

unsigned long millis(void);
void millis_count_init(void);
void motor_next_isr(u16 time_n);
char Serial_send(unsigned char buf_data);
void FLUSH_serial0(void);

}
#endif
