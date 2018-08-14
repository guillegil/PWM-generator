vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" \
"/media/guille/programas/VivadoLinux/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/media/guille/programas/VivadoLinux/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" "+incdir+../../../../pwm_gen.srcs/sources_1/bd/clock_and_adc/ipshared/4903" \
"../../../bd/clock_and_adc/ip/clock_and_adc_clk_wiz_0_0/clock_and_adc_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/clock_and_adc/ip/clock_and_adc_clk_wiz_0_0/clock_and_adc_clk_wiz_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/clock_and_adc/ip/clock_and_adc_xadc_wiz_0_0/clock_and_adc_xadc_wiz_0_0.vhd" \
"../../../bd/clock_and_adc/sim/clock_and_adc.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

