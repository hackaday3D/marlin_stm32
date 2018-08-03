/**
 * Marlin 3D Printer Firmware
 * Copyright (C) 2016 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 *
 * Based on Sprinter and grbl.
 * Copyright (C) 2011 Camiel Gubbels / Erik van der Zalm
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

/**
 * \file
 * \brief SdFile class
 */

/**
 * Arduino SdFat Library
 * Copyright (C) 2009 by William Greiman
 *
 * This file is part of the Arduino Sd2Card Library
 */

#ifndef __STM32_IT_H
#define __STM32_IT_H
#include "stm32f10x.h"
#include "stm32f10x_conf.h"

#include "stm32f10x_usart.h"
extern "C" {
	extern	 __IO  u16 Current_ADC_Raw[5] ;

void Serial_PC(const long baud);
void USART1_IRQHandler(void);
void my_printf(char *Data);
void tmper_init_stm32(void);
GPIO_TypeDef * Get_Port(unsigned char Pin);
uint16_t Get_Pin(unsigned char Pin);
void  GPIO_Set_INPUT(unsigned char Pin);
void  GPIO_Set_OUTPUT(unsigned char Pin);
void ANALOG_SELECT_GPIO(unsigned char Pin);
void WRITE_IO(unsigned char IO,unsigned char v);
bool READ_IO(unsigned char IO);
void SPI1_Init(void);
u8 SPI1_ReadWriteByte(u8 TxData);
u8 SD_RecvData(u8*buf,u16 len);
u8 SD_SendBlock(u8*buf,u8 cmd);
u8 SD_WaitReady(void);
u8 SD_GetCID(u8 *cid_data);
void SPI2_SetSpeed(u8 SPI_BaudRatePrescaler);
char pinMode(int pin_number, unsigned char pin_status);

u8 SD_SendCmd(u8 cmd, u32 arg, u8 crc);
unsigned int millis(void);
void millis_count_init(void);
void motor_next_isr(int time_n);

}
#endif /* __STM32_IT_H */
