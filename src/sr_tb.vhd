--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:49:35 06/04/2014
-- Design Name:   
-- Module Name:   F:/jizu/interrupt/sr_tb.vhd
-- Project Name:  interrupt
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRlatch
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
 
ENTITY sr_tb IS
END sr_tb;
 
ARCHITECTURE behavior OF sr_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRlatch
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    
 
   --Inputs
   signal S : std_logic := '1';
   signal R : std_logic := '1';

 	--Outputs
   signal Q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRlatch PORT MAP (
          S => S,
          R => R,
          Q => Q
        );

   -- Clock process definitions
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      S <= '0';
	
		wait for 100 ns;
		
		S <= '1';
		
		wait for 100 ns;
		R <= '0';
		
		wait for 100 ns;
	
		R <= '1';
		
		wait for 100 ns;
		
		S <= '0';
		R <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
