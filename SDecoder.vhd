----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:23 05/28/2022 
-- Design Name: 
-- Module Name:    SDecoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SDecoder is
    Port ( input : in  STD_LOGIC_vector(3 downto 0);
           SBUS : out  STD_LOGIC_vector (6 downto 0));
end SDecoder;

architecture Behavioral of SDecoder is

begin
WITH INPUT SELECT SBUS <=
"0000001" WHEN "0000", --0
"1001111" WHEN "0001", --1
"0010010" WHEN "0010", --2 
"0000110" WHEN "0011", --3 
"1001100" WHEN "0100", --4 
"0100100" WHEN "0101", --5 
"0100000" WHEN "0110", --6 
"0001111" WHEN "0111", --7
"0000000" WHEN "1000",
"0000100" WHEN "1001", 
"1111111" WHEN OTHERS;


end Behavioral;

