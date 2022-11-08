----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:37:15 05/28/2022 
-- Design Name: 
-- Module Name:    CLK_Divider2 - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLK_Divider2 is
    Port ( MCLK : in  STD_LOGIC;
           Eight_clk_div : out  STD_LOGIC);
end CLK_Divider2;

architecture Behavioral of CLK_Divider2 is
	signal counter : STD_LOGIC_VECTOR(18 downto 0) := "0000000000000000000";
begin
CLK_PROCESS: Process(MCLK)
	BEGIN
		if (MCLK'EVENT AND MCLK = '1') then
			if COUNTER <= "0000000000000000110" then -- if COUNTER <= "0111101000010010000" then --14 --6
					COUNTER <= COUNTER + 1;
			else 
					COUNTER <= "0000000000000000000";
			end if;
		end if;
	
	END PROCESS;

	 Eight_clk_div <= '1' WHEN COUNTER = "0000000000000000000" else '0';--HUNDREDHZCLOCK <= '1' WHEN COUNTER = "0011110100001001000" else '0'; -8 -4

end Behavioral;

