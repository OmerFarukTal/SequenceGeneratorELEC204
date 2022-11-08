----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:13 05/28/2022 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main is
    Port ( CLK : in  STD_LOGIC;
           NextButton : in  STD_LOGIC;
           ResetButton : in  STD_LOGIC;
			  ShiftButton : in STD_LOGIC;
			  ChoiceButton1 : in STD_LOGIC;
			  ChoiceButton2 : in STD_LOGIC;
			  outDeneme : out STD_LOGIC_VECTOR(31 downto 0);
           SEVSEG_DATA : out  STD_LOGIC_VECTOR(6 downto 0);
           SEVSEG_DRIVE : out  STD_LOGIC_VECTOR(7 downto 0));
end Main;

architecture Behavioral of Main is

component ClockDivider 
    Port ( MCLK : in  STD_LOGIC;
           HUNDREDHZCLOCK : out  STD_LOGIC);
end component;

component CLK_Divider2
    Port ( MCLK : in  STD_LOGIC;
           Eight_clk_div : out  STD_LOGIC);
end component;

component SequenceMultiplexer
	Port (  CLK : in  STD_LOGIC;
           NextButton : in  STD_LOGIC;
           ResetButton : in  STD_LOGIC;
			  ChoiceButton1 : in STD_LOGIC;
			  ChoiceButton2 : in STD_LOGIC;
			  mainNum : out STD_LOGIC_VECTOR(31 downto 0));
end component;

component BCDConverter
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
end component;

component SDriver
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
end component;

component SDecoder
    Port ( input : in  STD_LOGIC_vector(3 downto 0);
           SBUS : out  STD_LOGIC_vector (6 downto 0));
end component;

signal clock_div: std_logic;
signal clock_div_8 : std_logic;
signal sevsegdata: std_logic_vector (3 downto 0);
signal bir : std_logic_Vector (3 downto 0);
signal iki : std_logic_Vector (3 downto 0);
signal uc : std_logic_Vector (3 downto 0);
signal dort : std_logic_Vector (3 downto 0);
signal bes : std_logic_Vector (3 downto 0);
signal alti : std_logic_Vector (3 downto 0);
signal yedi : std_logic_Vector (3 downto 0);
signal sekiz : std_logic_Vector (3 downto 0);
signal dokuz : std_logic_Vector (3 downto 0);
signal onn : std_logic_Vector (3 downto 0);
signal temp : std_logic_Vector (31 downto 0) := "00000000000000000000000000000001";



begin
	cd: ClockDivider PORT MAP(
		MCLK => CLK,
		HUNDREDHZCLOCK => clock_div);
		
	cd2: CLK_Divider2 PORT MAP(
		MCLK => clock_div,
		Eight_clk_div => clock_div_8);
	
	
	Sequence2 : SequenceMultiplexer PORT MAP (
		CLK => clock_div_8,
      NextButton => NextButton,
		ResetButton => ResetButton,
		ChoiceButton1 => ChoiceButton1,
		ChoiceButton2 => ChoiceButton2,
		mainNum => temp);
		
	bcd: BCDConverter PORT MAP(
		num => temp,
		one => bir,
		two => iki ,
		three => uc ,
		four => dort,
		five => bes,
		six => alti,
		seven => yedi,
		eight => sekiz,
		nine => dokuz,
		ten => onn);
	
	driver: SDriver PORT MAP(
		A => bir,
		B => iki,
		C => uc,
		D => dort,
		E => bes,
		F => alti,
		G => yedi,
		H => sekiz,
		I => dokuz ,
		J => onn,
		CLK => clock_div,
		Button => ShiftButton,
		SEV_SEG_DATA => sevsegdata,
		SEV_SEG_DRIVER => SEVSEG_DRIVE);
	
	decoder: SDecoder PORT MAP(
		  input => sevsegdata,
		  SBUS => SEVSEG_DATA);
	
	outDeneme <= temp;

end Behavioral;

