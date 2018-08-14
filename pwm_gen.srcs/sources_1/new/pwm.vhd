----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Guillermo Gil
-- 
-- Create Date: 12.08.2018 14:42:40
-- Design Name: PWM
-- Module Name: square_wave - pwm
-- Project Name: PWM-Gen
-- Target Devices: xc7z010clg400-1
-- Tool Versions: Vivado 2018.1
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision: 0.2
-- Revision 0.01 - File Created
-- Additional Comments: 
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity square_wave is
    generic(CLOCK_FREQ_kHZ: POSITIVE := 5000);   
    port(
        extclk: in STD_LOGIC;
        reset: in STD_LOGIC;
        adc_in: in STD_LOGIC;
        pwm_out: out STD_LOGIC    -- Signal out
    );
end square_wave;

architecture pwm of square_wave is

    constant PERIOD: INTEGER := 20*CLOCK_FREQ_kHZ;  -- T*Freq_kHz. (T = Period in ms)
    constant DUTY: INTEGER := PERIOD/2;
    
    constant VAUX15_REG_ADDR: STD_LOGIC_VECTOR := "0011111";
    
    signal ADC_DRP_DO: STD_LOGIC_VECTOR(15 downto 0);
    signal ADC_DRP_DRDY: STD_LOGIC;
    
    signal CLK: STD_LOGIC;
    signal COUNT: INTEGER;
    
    component clock_and_adc is
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
    end component;

begin

    C1: component clock_and_adc 
        port map(
            Vaux15_0_v_n => '0',
            Vaux15_0_v_p => adc_in,
            Vp_Vn_0_v_n => '0',
            Vp_Vn_0_v_p => '0',            
            clk_125MHz => extclk,
            clk_out2_0 => CLK,
            reset_rtl_0 => reset,
            s_drp_0_daddr => VAUX15_REG_ADDR,
            s_drp_0_den => '1',
            s_drp_0_di => "0000000000000000",
            s_drp_0_do => ADC_DRP_DO,
            s_drp_0_drdy => ADC_DRP_DRDY,
            s_drp_0_dwe => '0'
        );
   
    process(CLK)
    begin
        if(CLK'event and CLK = '1') then
            if(COUNT = PERIOD) then
                COUNT <= 0;
                pwm_out <= '1';
            else
                COUNT <= COUNT + 1;
                
                if(COUNT = (5000 + TO_INTEGER(UNSIGNED(ADC_DRP_DO(15 downto 3))))) then
                    pwm_out <= '0';
                 end if;
             end if;    
        end if;
    end process;
   
    
   
end pwm;
