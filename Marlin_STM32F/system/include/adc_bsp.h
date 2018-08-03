


#include "stm32f10x.h"
//#include "usart1.h"
extern "C" {
#define FULL_POWER    4095
#define HALF_POWER    2048
#define SHUT_OFF_POWER 0


#define ADC_REFV 3.3
#define USE12V  12
#define USE24V  24
#define VOL_DIVIDER 0.1163     //voltage= PSU*VOL_DIVIDER (mV)

#define MAX_PWM 0X03FF
#define MIN_PWM 0X0000

#define K1 0.95


//#define  WRITE_HEATER_0  SET_T0_POWER
#define  WRITE_HEATER_1  SET_T1_POWER
#define  WRITE_HEATER_2  SET_T2_POWER


  #define SET_T0_POWER(power)           TIM_SetCompare3(TIM3,power)
  #define SET_T1_POWER(power)           //TIM_SetCompare2(TIM3,power)
  #define SET_T2_POWER(power)          // TIM_SetCompare1(TIM3,power)
  #define SET_BED_POWER(power)          TIM_SetCompare4(TIM3,power)

  #define SET_FAN0_SPEED(power)         TIM_SetCompare1(TIM3,power)  //TIM_SetCompare4(TIM4,power)     //FAN2_PWM
  #define SET_FAN1_SPEED(power)         TIM_SetCompare2(TIM3,power)  //TIM_SetCompare3(TIM4,power)     //FAN1_PWM
  #define SET_FAN2_SPEED(power)         TIM_SetCompare2(TIM4,power)     //FAN0_PWM

  #define SET_BEEP_PERIOD(period)       TIM_SetAutoreload(TIM2,period)
  #define SET_BEEP_DUTY(duty)           TIM_SetCompare3(TIM2,duty)
  #define SET_BEEP(period, duty)        Set_Beep(period, duty)  
  #define BEEP_DIS                      SET_BEEP(40,0)

  #define SET_LED(power)                TIM_SetCompare1(TIM4,power)               



extern __IO u16 Temperature[5];
extern float Current_Temperature[5];

void Temperature_Measure_Init(void);
void Temperature_Measure_Enable(void);
void Temperature_Measure_Disable(void);
void Temperature_Control_Init(void);
void Temperature_Control_Enable(void);
void Temperature_Control_Disable(void);
void TIM3_NVIC_Configuration(void);
void TIM3_pwm_handler(void);
void Temperature_Sampling_for_PID_Autotune_NVIC_Configuration(void);
void Temperature_Sampling_NVIC_Configuration(void);
void Set_Hotend_Power(u8 e,u16 power);
void Fan_Control_Enable(void);
void Fan_Control_Disable(void);
void Set_Fan_Power(u8 num, u16 power);
void Set_All_Fan_Power(u16);
void Gloabl_temperature_control(void);
void Init_PID_Autotune(void);
void PID_Autotune(float targe_T,unsigned char e,unsigned char tune_cycles);


void Temperature_Sampling_Timer_Config(void);
void Temperature_Sampling_Timer_for_PID_Autotune_Config(void);
void Close_all_hotend(void);

int Voltage_get(void);
void Voltage_detect(void);
u8 Power_down_detect(void);
void Set_Beep(u16 period, u8 duty);
void delay_beep(u16 i);
void Alarm_Handle(u8 num,u8 times);
void Beep_control(void);

}
