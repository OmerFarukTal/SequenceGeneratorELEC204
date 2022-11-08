----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    14:56:43 05/28/2022
-- Design Name:
-- Module Name:    Woodall - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity StellaOctanga is
    Port ( Next_Button : in  STD_LOGIC;
				Reset_Button : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  choicebutton1 : in std_logic;
			  choicebutton2 : in std_logic;
           num : out  STD_LOGIC_vector(31 downto 0));
end StellaOctanga;

architecture Behavioral of StellaOctanga is

signal temp : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";

begin
process (CLK)
variable hold : std_logic := '0';
variable index : integer := 1;
variable result : integer := 1;
begin
if rising_edge(clk) then
if Reset_Button='1' then
index := 1;
result := 1;
end if;

if (Next_Button='1' and hold='0') then
result := index*(2*index*index-1);
index := index+1;
end if;

if index = 20 then
result := 1;
index := 1;
end if;

if ((not choicebutton1='1') or (not choicebutton2='1')) then
result := 1;
index := 1;
end if;

hold := (not Next_Button); -- hold : = NextButton;

temp<=std_logic_Vector(to_unsigned(result, temp'length));
end if;
end process;
num <=temp;
end Behavioral;
