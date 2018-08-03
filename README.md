# Porting Marlin 1.1.9 to stm32f103 successful,
 and can print now


1)download and install arm toolchain:

https://developer.arm.com/open-source/gnu-toolchain/gnu-rm/downloads ,like gcc-arm-none-eabi-7-2018-q2-update-win32-sha2.exe.

2)copy "make.exe","libiconv2.dll" and "libintl3.dll" into the same directory containing the compiler binaries.

Which should be look something like: "C:\Program Files (x86)\GNU Tools Arm Embedded\7 2018-q2-update\bin" This way the make command can also be invoked from anywhere on your C drive.

reference from http://zaidpirwani.com/1160/stm32f3discovery-arm-gcc-environment-on-windows-part-1/

3) use cmd.exe, cd to Marlin_STM32F\build  and "make all" ,after that marlin_main.hex is built.
 
