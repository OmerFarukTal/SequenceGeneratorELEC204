----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:02:23 05/28/2022 
-- Design Name: 
-- Module Name:    SDriver - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SDriver is
    Port ( A : in  STD_LOGIC_vector (3 downto 0);
           B : in  STD_LOGIC_vector (3 downto 0);
           C : in  STD_LOGIC_vector (3 downto 0);
           D : in  STD_LOGIC_vector (3 downto 0);
           E : in  STD_LOGIC_vector (3 downto 0);
           F : in  STD_LOGIC_vector (3 downto 0);
           G : in  STD_LOGIC_vector (3 downto 0);
           H : in  STD_LOGIC_vector (3 downto 0);
           I : in  STD_LOGIC_vector (3 downto 0);
           J : in  STD_LOGIC_vector (3 downto 0);
           CLK : in  STD_LOGIC;
           button : in  STD_LOGIC;
           SEV_SEG_DATA : out  STD_LOGIC_vector (3 downto 0);
           SEV_SEG_DRIVER : out  STD_LOGIC_vector (7 downto 0));
end SDriver;

architecture Behavioral of SDriver is
signal counter: std_logic_vector(2 downto 0) := "000";
begin
	Process (CLK)
		begin
		if rising_edge(CLK) then 
			counter <= counter + "001";
		end if;
	end process;
	
	SEV_SEG_DATA <=
		H when counter = "000" and button = '0' else
		G when counter = "001" and button = '0' else
		F when counter = "010" and button = '0' else
		E when counter = "011" and button = '0' else
		D when counter = "100" and button = '0' else
		C when counter = "101" and button = '0' else
		B when counter = "110" and button = '0' else
		A when counter = "111" and button = '0' else
		J when counter = "000" and button = '1' else 
		I when counter = "001" and button = '1' else 
		H when counter = "010" and button = '1' else
		G when counter = "011" and button = '1' else
		F when counter = "100" and button = '1' else
		E when counter = "101" and button = '1' else
		D when counter = "110" and button = '1' else
		C ;
		
		with counter select SEV_SEG_DRIVER <=
		"01111111" when "000",
		"10111111" when "001",
		"11011111" when "010",
		"11101111" when "011",
		"11110111" when "100",
		"11111011" when "101",
		"11111101" when "110",
		"11111110" when others;
end Behavioral;
