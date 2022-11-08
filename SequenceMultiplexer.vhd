----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:10 06/05/2022 
-- Design Name: 
-- Module Name:    SequenceMultiplexer - Behavioral 
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

entity SequenceMultiplexer is
	Port ( 	CLK : in  STD_LOGIC;
           NextButton : in  STD_LOGIC;
           ResetButton : in  STD_LOGIC;
			  ChoiceButton1 : in STD_LOGIC;
			  ChoiceButton2 : in STD_LOGIC;
			  mainNum : out STD_LOGIC_VECTOR(31 downto 0));
end SequenceMultiplexer;

architecture Behavioral of SequenceMultiplexer is
component Woodall 
    Port ( Next_Button : in  STD_LOGIC;
			  Reset_Button : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  choicebutton1 : in std_logic;
			  choicebutton2 : in std_logic;
           num : out  STD_LOGIC_vector(31 downto 0));
end component;

component Jacobtshal
	Port ( Next_Button : in  STD_LOGIC;
				Reset_Button : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  choicebutton1 : in std_logic;
			  choicebutton2 : in std_logic;
           num : out  STD_LOGIC_vector(31 downto 0));
end component;

component Tetrabonacci
	Port ( Next_Button : in  STD_LOGIC;
				Reset_Button : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  choicebutton1 : in std_logic;
			  choicebutton2 : in std_logic;
           num : out  STD_LOGIC_vector(31 downto 0));
end component;

component StellaOctanga
	Port ( Next_Button : in  STD_LOGIC;
				Reset_Button : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  choicebutton1 : in std_logic;
			  choicebutton2 : in std_logic;
           num : out  STD_LOGIC_vector(31 downto 0));
end component;

	signal woodalReturn : STD_LOGIC_VECTOR(31 downto 0);
	signal jacobsthalReturn : STD_LOGIC_VECTOR(31 downto 0);
	signal tetrabonacciReturn : STD_LOGIC_VECTOR(31 downto 0);
	signal stellaOctangaReturn : STD_LOGIC_VECTOR(31 downto 0);
	signal choice1 : STD_LOGIC_VECTOR(31 downto 0);
	signal choice2 : STD_LOGIC_VECTOR(31 downto 0);
	signal result : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";

begin
	
	S1: Woodall PORT MAP (
					Next_Button => NextButton,
					Reset_Button => ResetButton,
					CLK => CLK,
					choicebutton1 => ChoiceButton1,
					choicebutton2 => ChoiceButton2,
					num => woodalReturn);
	
	S2: Jacobtshal PORT MAP (
					Next_Button => NextButton,
					Reset_Button => ResetButton,
					CLK => CLK,
					choicebutton1 => ChoiceButton1,
					choicebutton2 => ChoiceButton2,
					num => jacobsthalReturn);
					
	S3: Tetrabonacci PORT MAP (
					Next_Button => NextButton,
					Reset_Button => ResetButton,
					CLK => CLK,
					choicebutton1 => ChoiceButton1,
					choicebutton2 => ChoiceButton2,
					num => tetrabonacciReturn);
	
	S4: StellaOctanga PORT MAP (
					Next_Button => NextButton,
					Reset_Button => ResetButton,
					CLK => CLK,
					choicebutton1 => ChoiceButton1,
					choicebutton2 => ChoiceButton2,
					num => stellaOctangaReturn);

	
	process (CLK,choicebutton1, choicebutton2)
	 begin
	 if rising_edge(CLK) then
			if ChoiceButton1 = '1' 
				then choice1 <= "11111111111111111111111111111111";
			end if;
			if ChoiceButton1 = '0'
				then choice1 <= "00000000000000000000000000000000";
			end if;
			if ChoiceButton2 = '1' 
				then choice2 <= "11111111111111111111111111111111";
			end if;
			if ChoiceButton2 = '0'
				then choice2 <= "00000000000000000000000000000000";
			end if;
				
	 end if;
	 
	end process;
mainNum <= (woodalReturn and (not choice1) and (not choice2)) or (jacobsthalReturn and (not choice1) and choice2) or 
	(tetrabonacciReturn and choice1 and (not choice2)) or (stellaOctangaReturn and choice1 and choice2);
end Behavioral;

