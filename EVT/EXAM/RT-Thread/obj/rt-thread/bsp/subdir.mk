################################################################################
# MRS Version: {"version":"1.8.5","date":"2023/05/22"}
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/bsp/board.c 

OBJS += \
./rt-thread/bsp/board.o 

C_DEPS += \
./rt-thread/bsp/board.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/bsp/%.o: ../rt-thread/bsp/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\APP" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\components\finsh" -I"C:\Users\y zy\Desktop\EVT\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\Startup" -I"C:\Users\y zy\Desktop\EVT\EXAM\SRC\RVMSIS" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\libcpu\WCH\Qingke_V4A" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\include" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\bsp" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\bsp\usart" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\components\drivers\include" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

