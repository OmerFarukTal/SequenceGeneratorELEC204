--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:56:16 06/05/2022
-- Design Name:   
-- Module Name:   C:/Users/otal19/Desktop/Project-20220605T160425Z-001/Project/WoodalNumbers/SeqMulTest.vhd
-- Project Name:  WoodalNumbers
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SequenceMultiplexer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SeqMulTest IS
END SeqMulTest;
 
ARCHITECTURE behavior OF SeqMulTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SequenceMultiplexer
    PORT(
         CLK : IN  std_logic;
         NextButton : IN  std_logic;
         ResetButton : IN  std_logic;
         ChoiceButton1 : IN  std_logic;
         ChoiceButton2 : IN  std_logic;
         mainNum : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal NextButton : std_logic := '0';
   signal ResetButton : std_logic := '0';
   signal ChoiceButton1 : std_logic := '0';
   signal ChoiceButton2 : std_logic := '0';

 	--Outputs
   signal mainNum : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SequenceMultiplexer PORT MAP (
          CLK => CLK,
          NextButton => NextButton,
          ResetButton => ResetButton,
          ChoiceButton1 => ChoiceButton1,
          ChoiceButton2 => ChoiceButton2,
          mainNum => mainNum
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      NextButton <= '1';
		ResetButton <= '0';
		choiceButton1 <= '0';
		choiceButton2 <= '0';
		
      wait for CLK_period*15;
		choicebutton1 <= '0';
		choicebutton2 <= '1';
		
		wait for CLK_period*15;
		choiceButton1 <= '1';
		choiceButton2 <= '1';
		
		wait for CLK_period*15;
		choiceButton1 <= '1';
		choiceButton2 <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
