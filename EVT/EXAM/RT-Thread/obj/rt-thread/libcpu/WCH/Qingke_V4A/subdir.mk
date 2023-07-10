################################################################################
# MRS Version: {"version":"1.8.5","date":"2023/05/22"}
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/WCH/Qingke_V4A/cpuport.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/WCH/Qingke_V4A/context_gcc.S \
../rt-thread/libcpu/WCH/Qingke_V4A/interrupt_gcc.S 

OBJS += \
./rt-thread/libcpu/WCH/Qingke_V4A/context_gcc.o \
./rt-thread/libcpu/WCH/Qingke_V4A/cpuport.o \
./rt-thread/libcpu/WCH/Qingke_V4A/interrupt_gcc.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/WCH/Qingke_V4A/context_gcc.d \
./rt-thread/libcpu/WCH/Qingke_V4A/interrupt_gcc.d 

C_DEPS += \
./rt-thread/libcpu/WCH/Qingke_V4A/cpuport.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/WCH/Qingke_V4A/%.o: ../rt-thread/libcpu/WCH/Qingke_V4A/%.S
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -x assembler-with-cpp -DENABLE_INTERRUPT_NEST=0 -I"C:\Users\y zy\Desktop\EVT\EXAM\SRC\RVMSIS" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\Startup" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\libcpu\WCH\Qingke_V4A" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
rt-thread/libcpu/WCH/Qingke_V4A/%.o: ../rt-thread/libcpu/WCH/Qingke_V4A/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\APP" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\components\finsh" -I"C:\Users\y zy\Desktop\EVT\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\Startup" -I"C:\Users\y zy\Desktop\EVT\EXAM\SRC\RVMSIS" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\libcpu\WCH\Qingke_V4A" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\include" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\bsp" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\bsp\usart" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\components\drivers\include" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

