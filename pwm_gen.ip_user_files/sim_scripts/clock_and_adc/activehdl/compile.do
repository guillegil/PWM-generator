vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" \
"../../../bd/clock_and_adc/ip/clock_and_adc_clk_wiz_0_0/clock_and_adc_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/clock_and_adc/ip/clock_and_adc_clk_wiz_0_0/clock_and_adc_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/clock_and_adc/ip/clock_and_adc_xadc_wiz_0_0/clock_and_adc_xadc_wiz_0_0.vhd" \
"../../../bd/clock_and_adc/sim/clock_and_adc.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

