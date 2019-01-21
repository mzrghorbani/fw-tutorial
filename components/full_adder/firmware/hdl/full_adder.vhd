----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.01.2019 12:13:32
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC
           );
end full_adder;

architecture Behavioral of full_adder is

--    component half_adder is 
--       port(
--            a : in std_logic;
--            b : in std_logic;
--            sum : out std_logic;
--            cout : out std_logic 
--            );
--    end component;
    
    signal s1, s2, s3 : std_logic;

begin

    half_adder_1: entity work.half_adder port map ( a => a, b => b, sum => s1, cout => s2 );
    half_adder_2: entity work.half_adder port map ( a => s1, b => cin, sum => sum, cout => s3 );
    cout <= s2 OR s3; 

end Behavioral;
