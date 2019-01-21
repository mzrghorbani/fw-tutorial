----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2019 12:00:05
-- Design Name: 
-- Module Name: half_adder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity half_adder_tb is
end;

architecture bench of half_adder_tb is

  component half_adder
      Port ( a : in STD_LOGIC;
             b : in STD_LOGIC;
             sum : out STD_LOGIC;
             cout : out STD_LOGIC);
  end component;

  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal sum: STD_LOGIC;
  signal cout: STD_LOGIC;

begin

  uut: half_adder port map ( a    => a,
                             b    => b,
                             sum  => sum,
                             cout => cout );

  stimulus: process
  begin
  
    -- Put initialisation code here
    a <= '0';
    b <= '0';
    wait for 100 ns;
    
    a <= '0';
    b <= '1';
    wait for 100 ns;
    
    a <= '1';
    b <= '0';
    wait for 100 ns;
    
    a <= '1';
    b <= '1';
    wait for 100 ns;
    
    a <= '0';
    b <= '0';
    wait for 100 ns;
    -- Put test bench stimulus code here

    wait;
  end process;


end;
