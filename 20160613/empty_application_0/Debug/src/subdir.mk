################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Intrup_test.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/Intrup_test.o 

C_DEPS += \
./src/Intrup_test.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../standalone_bsp_0/microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.10.a -mno-xl-soft-mul -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


