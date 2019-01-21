----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2019 12:18:28
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder_tb is
--  Port ( );
end full_adder_tb;

architecture Behavioral of full_adder_tb is

    component full_adder
        port(
            a : in std_logic;
            b : in std_logic;
            cin : in std_logic;
            sum : out std_logic;
            cout : out std_logic            
        );
    end component;
    
    -- inputs
    signal in1 : std_logic;
    signal in2 : std_logic;
    signal in3 : std_logic;
    
    -- outputs
    signal out1 : std_logic;
    signal out2 : std_logic;
    
begin

   uut: full_adder port map (
        a => in1,
        b => in2,
        cin => in3,
        sum => out1,
        cout => out2
    ); 

    stimulus: process
    begin
        in1 <= '0';
        in2 <= '0';
        in3 <= '0';
        wait for 100 ns;
        
        in1 <= '0';
        in2 <= '1';
        in3 <= '0';
        wait for 100 ns;
        
        in1 <= '1';
        in2 <= '0';
        in3 <= '0';
        wait for 100 ns;
        
        in1 <= '1';
        in2 <= '1';
        in3 <= '0';
        wait for 100 ns;
        
        in1 <= '0';
        in2 <= '0';
        in3 <= '0';
        wait for 100 ns;
        
        in1 <= '0';
        in2 <= '0';
        in3 <= '1';
        wait for 100 ns;
        
        in1 <= '0';
        in2 <= '1';
        in3 <= '1';
        wait for 100 ns;
        
        in1 <= '1';
        in2 <= '0';
        in3 <= '1';
        wait for 100 ns;
        
        in1 <= '1';
        in2 <= '1';
        in3 <= '1';
        wait for 100 ns;
        
        in1 <= '0';
        in2 <= '0';
        in3 <= '0';
        wait for 100 ns;
        
        wait;
    end process;

end Behavioral;