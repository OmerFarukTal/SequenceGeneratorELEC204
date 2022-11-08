--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:03:52 05/28/2022
-- Design Name:   
-- Module Name:   C:/Users/otal19/Desktop/Project/WoodalNumbers/WoodallSim.vhd
-- Project Name:  WoodalNumbers
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Woodall
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
 
ENTITY WoodallSim IS
END WoodallSim;
 
ARCHITECTURE behavior OF WoodallSim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Woodall
    PORT(
         Next_Button : IN  std_logic;
         Reset_Button : IN  std_logic;
         CLK : IN  std_logic;
         num : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Next_Button : std_logic := '0';
   signal Reset_Button : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal num : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Woodall PORT MAP (
          Next_Button => Next_Button,
          Reset_Button => Reset_Button,
          CLK => CLK,
          num => num
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
      Next_Button <= '1';
		Reset_Button <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
