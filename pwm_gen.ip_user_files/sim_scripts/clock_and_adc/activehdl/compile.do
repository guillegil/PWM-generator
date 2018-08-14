vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" \
"/media/guille/programas/VivadoLinux/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/media/guille/programas/VivadoLinux/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" \
"../../../bd/clock_and_adc/ip/clock_and_adc_clk_wiz_0_0/clock_and_adc_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/clock_and_adc/ip/clock_and_adc_clk_wiz_0_0/clock_and_adc_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/clock_and_adc/ip/clock_and_adc_xadc_wiz_0_0/clock_and_adc_xadc_wiz_0_0.vhd" \
"../../../bd/clock_and_adc/sim/clock_and_adc.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

