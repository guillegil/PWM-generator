--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
--Date        : Sun Aug 12 19:01:25 2018
--Host        : guille running 64-bit Ubuntu 18.04.1 LTS
--Command     : generate_target clock_wrapper.bd
--Design      : clock_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_wrapper is
  port (
    Vaux15_0_v_n : in STD_LOGIC;
    Vaux15_0_v_p : in STD_LOGIC;
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    clk_125MHz : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_den : in STD_LOGIC;
    s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC
  );
end clock_wrapper;

architecture STRUCTURE of clock_wrapper is
  component clock is
  port (
    reset_rtl_0 : in STD_LOGIC;
    clk_125MHz : in STD_LOGIC;
    s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_den : in STD_LOGIC;
    s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC;
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    Vaux15_0_v_n : in STD_LOGIC;
    Vaux15_0_v_p : in STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC
  );
  end component clock;
begin
clock_i: component clock
     port map (
      Vaux15_0_v_n => Vaux15_0_v_n,
      Vaux15_0_v_p => Vaux15_0_v_p,
      Vp_Vn_0_v_n => Vp_Vn_0_v_n,
      Vp_Vn_0_v_p => Vp_Vn_0_v_p,
      clk_125MHz => clk_125MHz,
      clk_out1_0 => clk_out1_0,
      reset_in_0 => reset_in_0,
      reset_rtl_0 => reset_rtl_0,
      s_drp_0_daddr(6 downto 0) => s_drp_0_daddr(6 downto 0),
      s_drp_0_den => s_drp_0_den,
      s_drp_0_di(15 downto 0) => s_drp_0_di(15 downto 0),
      s_drp_0_do(15 downto 0) => s_drp_0_do(15 downto 0),
      s_drp_0_drdy => s_drp_0_drdy,
      s_drp_0_dwe => s_drp_0_dwe
    );
end STRUCTURE;
