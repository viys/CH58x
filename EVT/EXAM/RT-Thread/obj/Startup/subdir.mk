################################################################################
# MRS Version: {"version":"1.8.5","date":"2023/05/22"}
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Startup/startup_CH583.S 

OBJS += \
./Startup/startup_CH583.o 

S_UPPER_DEPS += \
./Startup/startup_CH583.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.S
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -x assembler-with-cpp -DENABLE_INTERRUPT_NEST=0 -I"C:\Users\y zy\Desktop\EVT\EXAM\SRC\RVMSIS" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\Startup" -I"C:\Users\y zy\Desktop\EVT\EXAM\RT-Thread\rt-thread\libcpu\WCH\Qingke_V4A" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

