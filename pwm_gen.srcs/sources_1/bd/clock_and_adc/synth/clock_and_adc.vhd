--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
--Date        : Sun Aug 12 19:16:19 2018
--Host        : guille running 64-bit Ubuntu 18.04.1 LTS
--Command     : generate_target clock_and_adc.bd
--Design      : clock_and_adc
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_and_adc is
  port (
    Vaux15_0_v_n : in STD_LOGIC;
    Vaux15_0_v_p : in STD_LOGIC;
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    clk_125MHz : in STD_LOGIC;
    clk_out2_0 : out STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_den : in STD_LOGIC;
    s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of clock_and_adc : entity is "clock_and_adc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clock_and_adc,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of clock_and_adc : entity is "clock_and_adc.hwdef";
end clock_and_adc;

architecture STRUCTURE of clock_and_adc is
  component clock_and_adc_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC
  );
  end component clock_and_adc_clk_wiz_0_0;
  component clock_and_adc_xadc_wiz_0_0 is
  port (
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    dwe_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dclk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp15 : in STD_LOGIC;
    vauxn15 : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component clock_and_adc_xadc_wiz_0_0;
  signal Vaux15_0_1_V_N : STD_LOGIC;
  signal Vaux15_0_1_V_P : STD_LOGIC;
  signal Vp_Vn_0_1_V_N : STD_LOGIC;
  signal Vp_Vn_0_1_V_P : STD_LOGIC;
  signal clk_125MHz_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal reset_rtl_0_1 : STD_LOGIC;
  signal s_drp_0_1_DADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal s_drp_0_1_DEN : STD_LOGIC;
  signal s_drp_0_1_DI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_drp_0_1_DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_drp_0_1_DRDY : STD_LOGIC;
  signal s_drp_0_1_DWE : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Vaux15_0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux15_0 V_N";
  attribute X_INTERFACE_INFO of Vaux15_0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux15_0 V_P";
  attribute X_INTERFACE_INFO of Vp_Vn_0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_N";
  attribute X_INTERFACE_INFO of Vp_Vn_0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_P";
  attribute X_INTERFACE_INFO of clk_125MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_125MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_125MHz : signal is "XIL_INTERFACENAME CLK.CLK_125MHZ, CLK_DOMAIN clock_and_adc_clk_100MHz, FREQ_HZ 125000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_out2_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2_0 CLK";
  attribute X_INTERFACE_PARAMETER of clk_out2_0 : signal is "XIL_INTERFACENAME CLK.CLK_OUT2_0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 5000000, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of s_drp_0_den : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DEN";
  attribute X_INTERFACE_INFO of s_drp_0_drdy : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DRDY";
  attribute X_INTERFACE_INFO of s_drp_0_dwe : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DWE";
  attribute X_INTERFACE_INFO of s_drp_0_daddr : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DADDR";
  attribute X_INTERFACE_INFO of s_drp_0_di : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DI";
  attribute X_INTERFACE_INFO of s_drp_0_do : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DO";
begin
  Vaux15_0_1_V_N <= Vaux15_0_v_n;
  Vaux15_0_1_V_P <= Vaux15_0_v_p;
  Vp_Vn_0_1_V_N <= Vp_Vn_0_v_n;
  Vp_Vn_0_1_V_P <= Vp_Vn_0_v_p;
  clk_125MHz_1 <= clk_125MHz;
  clk_out2_0 <= clk_wiz_0_clk_out2;
  reset_rtl_0_1 <= reset_rtl_0;
  s_drp_0_1_DADDR(6 downto 0) <= s_drp_0_daddr(6 downto 0);
  s_drp_0_1_DEN <= s_drp_0_den;
  s_drp_0_1_DI(15 downto 0) <= s_drp_0_di(15 downto 0);
  s_drp_0_1_DWE <= s_drp_0_dwe;
  s_drp_0_do(15 downto 0) <= s_drp_0_1_DO(15 downto 0);
  s_drp_0_drdy <= s_drp_0_1_DRDY;
clk_wiz_0: component clock_and_adc_clk_wiz_0_0
     port map (
      clk_in1 => clk_125MHz_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      reset => reset_rtl_0_1
    );
xadc_wiz_0: component clock_and_adc_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      daddr_in(6 downto 0) => s_drp_0_1_DADDR(6 downto 0),
      dclk_in => clk_wiz_0_clk_out1,
      den_in => s_drp_0_1_DEN,
      di_in(15 downto 0) => s_drp_0_1_DI(15 downto 0),
      do_out(15 downto 0) => s_drp_0_1_DO(15 downto 0),
      drdy_out => s_drp_0_1_DRDY,
      dwe_in => s_drp_0_1_DWE,
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      reset_in => reset_rtl_0_1,
      vauxn15 => Vaux15_0_1_V_N,
      vauxp15 => Vaux15_0_1_V_P,
      vn_in => Vp_Vn_0_1_V_N,
      vp_in => Vp_Vn_0_1_V_P
    );
end STRUCTURE;
