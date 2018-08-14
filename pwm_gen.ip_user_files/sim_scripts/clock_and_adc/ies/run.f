-makelib ies_lib/xil_defaultlib -sv \
  "/media/guille/programas/VivadoLinux/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "/media/guille/programas/VivadoLinux/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/clock_and_adc/ip/clock_and_adc_clk_wiz_0_0/clock_and_adc_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/clock_and_adc/ip/clock_and_adc_clk_wiz_0_0/clock_and_adc_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/clock_and_adc/ip/clock_and_adc_xadc_wiz_0_0/clock_and_adc_xadc_wiz_0_0.vhd" \
  "../../../bd/clock_and_adc/sim/clock_and_adc.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

