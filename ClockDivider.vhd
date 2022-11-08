----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:57:30 05/28/2022 
-- Design Name: 
-- Module Name:    ClockDivider - Behavioral 
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
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;	

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ClockDivider is
    Port ( MCLK : in  STD_LOGIC;
           HUNDREDHZCLOCK : out  STD_LOGIC);
end ClockDivider;

architecture Behavioral of ClockDivider is
	signal counter : STD_LOGIC_VECTOR(18 downto 0) := "0000000000000000000";
begin
CLK_PROCESS: Process(MCLK)
	BEGIN
		if (MCLK'EVENT AND MCLK = '1') then
			if COUNTER <= "0000000000000000101" then -- if COUNTER <= "0111101000010010000" then
					COUNTER <= COUNTER + 1;
			else 
					COUNTER <= "0000000000000000000";
			end if;
		end if;
	
	END PROCESS;

	 HUNDREDHZCLOCK <= '1' WHEN COUNTER = "0000000000000000010" else '0';--HUNDREDHZCLOCK <= '1' WHEN COUNTER = "0011110100001001000" else '0';
														
end Behavioral;

