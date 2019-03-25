################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TMC2208Stepper/source/TMC2208Stepper.cpp \
../TMC2208Stepper/source/TMC2208Stepper_CHOPCONF.cpp \
../TMC2208Stepper/source/TMC2208Stepper_DRVSTATUS.cpp \
../TMC2208Stepper/source/TMC2208Stepper_GCONF.cpp \
../TMC2208Stepper/source/TMC2208Stepper_OTP_READ.cpp \
../TMC2208Stepper/source/TMC2208Stepper_PWMCONF.cpp 

OBJS += \
./TMC2208Stepper/source/TMC2208Stepper.o \
./TMC2208Stepper/source/TMC2208Stepper_CHOPCONF.o \
./TMC2208Stepper/source/TMC2208Stepper_DRVSTATUS.o \
./TMC2208Stepper/source/TMC2208Stepper_GCONF.o \
./TMC2208Stepper/source/TMC2208Stepper_OTP_READ.o \
./TMC2208Stepper/source/TMC2208Stepper_PWMCONF.o 

CPP_DEPS += \
./TMC2208Stepper/source/TMC2208Stepper.d \
./TMC2208Stepper/source/TMC2208Stepper_CHOPCONF.d \
./TMC2208Stepper/source/TMC2208Stepper_DRVSTATUS.d \
./TMC2208Stepper/source/TMC2208Stepper_GCONF.d \
./TMC2208Stepper/source/TMC2208Stepper_OTP_READ.d \
./TMC2208Stepper/source/TMC2208Stepper_PWMCONF.d 


# Each subdirectory must supply rules for building sources it contributes
TMC2208Stepper/source/%.o: ../TMC2208Stepper/source/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb --specs=nosys.specs -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -I"../include" -I"E:\luojin\stm32\M32\marlin_main\utility" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f1-stdperiph" -std=gnu++0x -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


