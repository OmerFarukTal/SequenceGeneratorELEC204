----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:31 05/28/2022 
-- Design Name: 
-- Module Name:    BCDConverter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCDConverter is
    Port ( num : in  STD_LOGIC_vector (31 downto 0);
           one : out  STD_LOGIC_vector (3 downto 0);
           two : out  STD_LOGIC_vector (3 downto 0);
           three : out  STD_LOGIC_vector (3 downto 0);
           four : out  STD_LOGIC_vector (3 downto 0);
           five : out  STD_LOGIC_vector (3 downto 0);
           six : out  STD_LOGIC_vector (3 downto 0);
           seven : out  STD_LOGIC_vector (3 downto 0);
           eight : out  STD_LOGIC_vector (3 downto 0);
           nine : out  STD_LOGIC_vector (3 downto 0);
           ten : out  STD_LOGIC_vector (3 downto 0));
end BCDConverter;

architecture Behavioral of BCDConverter is
signal temp: std_logic_vector(31 downto 0);
begin
	temp <= num;
	Process(temp)
	variable temp2: std_logic_vector(31 downto 0);
	variable shift : std_logic_vector (39 downto 0) := "0000000000000000000000000000000000000000";
	begin
		shift := "0000000000000000000000000000000000000000";
		temp2(31 downto 0) := temp;
		for i in 0 to 31 loop
			if shift(3 downto 0) > 4 then 
				shift(3 downto 0) := shift(3 downto 0) + 3;
			end if;
			if shift(7 downto 4) > 4 then 
				shift(7 downto 4) := shift(7 downto 4) + 3;
			end if;
			if shift(11 downto 8) > 4 then 
				shift(11 downto 8) := shift(11 downto 8) + 3;
			end if;
			if shift(15 downto 12) > 4 then 
				shift(15 downto 12) := shift(15 downto 12) + 3;
			end if;
			if shift(19 downto 16) > 4 then 
				shift(19 downto 16) := shift(19 downto 16) + 3;
			end if;
			if shift(23 downto 20) > 4 then 
				shift(23 downto 20) := shift(23 downto 20) + 3;
			end if;
			if shift(27 downto 24) > 4 then 
				shift(27 downto 24) := shift(27 downto 24) + 3;
			end if;
			if shift(31 downto 28) > 4 then 
				shift(31 downto 28) := shift(31 downto 28) + 3;
			end if;
			 if shift(35 downto 32) > 4 then 
				shift(35 downto 32) := shift(35 downto 32) + 3;
			end if;
			if shift(39 downto 36) > 4 then 
				shift(39 downto 36) := shift(39 downto 36) + 3;
			end if;
			shift := shift(38 downto 0) & temp2(31);
			temp2 := temp2(30 downto 0) & '0';

		end loop;
	one<= std_logic_vector(shift(3 downto 0));
	two<= std_logic_vector(shift(7 downto 4));
	three<= std_logic_vector(shift(11 downto 8));
	four<= std_logic_vector(shift(15 downto 12));
	five<= std_logic_vector(shift(19 downto 16));
	six<= std_logic_vector(shift(23 downto 20));
	seven<= std_logic_vector(shift(27 downto 24));
	eight<= std_logic_vector(shift(31 downto 28));
	nine<= std_logic_vector(shift(35 downto 32));
	ten<= std_logic_vector(shift(39 downto 36));

	end process;

end Behavioral;

