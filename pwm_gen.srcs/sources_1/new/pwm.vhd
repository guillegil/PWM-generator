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
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: 
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;


entity square_wave is
    generic(CLOCK_FREQ_kHZ: POSITIVE := 125000);    -- From port L16 
    port(
        clk: in STD_LOGIC;
        s_out: out STD_LOGIC    -- Signal out
    );
end square_wave;

architecture pwm of square_wave is

    constant PERIOD: INTEGER := 20*CLOCK_FREQ_kHZ;  -- T*Freq_kHz. (T = Period in ms)
    constant DUTY: INTEGER := PERIOD/2;
    
    signal COUNT: INTEGER;


begin
    process(clk)
    begin
        if(clk'event and clk = '1') then
            if(COUNT = PERIOD) then
                COUNT <= 0;
                s_out <= '1';
            else
                COUNT <= COUNT + 1;
                
                if(COUNT = DUTY) then
                    s_out <= '0';
                end if;
            end if;
        end if;
    end process;

end pwm;
