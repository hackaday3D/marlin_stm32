################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../G26_Mesh_Validation_Tool.cpp \
../I2CPositionEncoder.cpp \
../LiquidCrystal.cpp \
../M100_Free_Mem_Chk.cpp \
../MarlinSerial.cpp \
../Marlin_main.cpp \
../Max7219_Debug_LEDs.cpp \
../Sd2Card.cpp \
../SdBaseFile.cpp \
../SdFatUtil.cpp \
../SdFile.cpp \
../SdVolume.cpp \
../U8glib.cpp \
../blinkm.cpp \
../cardreader.cpp \
../configuration_store.cpp \
../dac_mcp4728.cpp \
../digipot_mcp4018.cpp \
../digipot_mcp4451.cpp \
../emergency_parser.cpp \
../endstops.cpp \
../fwretract.cpp \
../hex_print_routines.cpp \
../least_squares_fit.cpp \
../leds.cpp \
../malyanlcd.cpp \
../mesh_bed_leveling.cpp \
../neopixel.cpp \
../nozzle.cpp \
../parser.cpp \
../pca9632.cpp \
../planner.cpp \
../planner_bezier.cpp \
../power.cpp \
../power_loss_recovery.cpp \
../printcounter.cpp \
../runout.cpp \
../serial.cpp \
../servo.cpp \
../stepper.cpp \
../stepper_dac.cpp \
../stepper_indirection.cpp \
../stopwatch.cpp \
../temperature.cpp \
../tmc_util.cpp \
../twibus.cpp \
../ubl.cpp \
../ubl_G29.cpp \
../ubl_motion.cpp \
../ultralcd.cpp \
../utility.cpp \
../vector_3.cpp \
../watchdog.cpp 

OBJS += \
./G26_Mesh_Validation_Tool.o \
./I2CPositionEncoder.o \
./LiquidCrystal.o \
./M100_Free_Mem_Chk.o \
./MarlinSerial.o \
./Marlin_main.o \
./Max7219_Debug_LEDs.o \
./Sd2Card.o \
./SdBaseFile.o \
./SdFatUtil.o \
./SdFile.o \
./SdVolume.o \
./U8glib.o \
./blinkm.o \
./cardreader.o \
./configuration_store.o \
./dac_mcp4728.o \
./digipot_mcp4018.o \
./digipot_mcp4451.o \
./emergency_parser.o \
./endstops.o \
./fwretract.o \
./hex_print_routines.o \
./least_squares_fit.o \
./leds.o \
./malyanlcd.o \
./mesh_bed_leveling.o \
./neopixel.o \
./nozzle.o \
./parser.o \
./pca9632.o \
./planner.o \
./planner_bezier.o \
./power.o \
./power_loss_recovery.o \
./printcounter.o \
./runout.o \
./serial.o \
./servo.o \
./stepper.o \
./stepper_dac.o \
./stepper_indirection.o \
./stopwatch.o \
./temperature.o \
./tmc_util.o \
./twibus.o \
./ubl.o \
./ubl_G29.o \
./ubl_motion.o \
./ultralcd.o \
./utility.o \
./vector_3.o \
./watchdog.o 

CPP_DEPS += \
./G26_Mesh_Validation_Tool.d \
./I2CPositionEncoder.d \
./LiquidCrystal.d \
./M100_Free_Mem_Chk.d \
./MarlinSerial.d \
./Marlin_main.d \
./Max7219_Debug_LEDs.d \
./Sd2Card.d \
./SdBaseFile.d \
./SdFatUtil.d \
./SdFile.d \
./SdVolume.d \
./U8glib.d \
./blinkm.d \
./cardreader.d \
./configuration_store.d \
./dac_mcp4728.d \
./digipot_mcp4018.d \
./digipot_mcp4451.d \
./emergency_parser.d \
./endstops.d \
./fwretract.d \
./hex_print_routines.d \
./least_squares_fit.d \
./leds.d \
./malyanlcd.d \
./mesh_bed_leveling.d \
./neopixel.d \
./nozzle.d \
./parser.d \
./pca9632.d \
./planner.d \
./planner_bezier.d \
./power.d \
./power_loss_recovery.d \
./printcounter.d \
./runout.d \
./serial.d \
./servo.d \
./stepper.d \
./stepper_dac.d \
./stepper_indirection.d \
./stopwatch.d \
./temperature.d \
./tmc_util.d \
./twibus.d \
./ubl.d \
./ubl_G29.d \
./ubl_motion.d \
./ultralcd.d \
./utility.d \
./vector_3.d \
./watchdog.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb --specs=nosys.specs -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -ffreestanding -fno-move-loop-invariants -Wall -Wextra  -g3 -DDEBUG -DUSE_FULL_ASSERT -DTRACE -DOS_USE_TRACE_SEMIHOSTING_DEBUG -DSTM32F10X_HD -DUSE_STDPERIPH_DRIVER -DHSE_VALUE=8000000 -I"../include" -I"E:\luojin\GTM32\M32\marlin_main\utility" -I"../system/include" -I"../system/include/cmsis" -I"../system/include/stm32f1-stdperiph" -std=gnu++0x -fabi-version=0 -fno-exceptions -fno-rtti -fno-use-cxa-atexit -fno-threadsafe-statics -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


