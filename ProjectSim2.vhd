--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:16:07 05/28/2022
-- Design Name:   
-- Module Name:   C:/Users/otal19/Desktop/Project/WoodalNumbers/ProjectSim2.vhd
-- Project Name:  WoodalNumbers
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Main
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
 
ENTITY ProjectSim2 IS
END ProjectSim2;
 
ARCHITECTURE behavior OF ProjectSim2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main
    PORT(
         CLK : IN  std_logic;
         NextButton : IN  std_logic;
         ResetButton : IN  std_logic;
         ShiftButton : IN  std_logic;
         outDeneme : OUT  std_logic_vector(31 downto 0);
         SEVSEG_DATA : OUT  std_logic_vector(6 downto 0);
         SEVSEG_DRIVE : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal NextButton : std_logic := '0';
   signal ResetButton : std_logic := '0';
   signal ShiftButton : std_logic := '0';

 	--Outputs
   signal outDeneme : std_logic_vector(31 downto 0);
   signal SEVSEG_DATA : std_logic_vector(6 downto 0);
   signal SEVSEG_DRIVE : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 2.5 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Main PORT MAP (
          CLK => CLK,
          NextButton => NextButton,
          ResetButton => ResetButton,
          ShiftButton => ShiftButton,
          outDeneme => outDeneme,
          SEVSEG_DATA => SEVSEG_DATA,
          SEVSEG_DRIVE => SEVSEG_DRIVE
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
		ShiftButton <= '0';
		wait for 300 ns;
		ShiftButton <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
