--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:04:41 05/23/2014
-- Design Name:   
-- Module Name:   F:/jizu/interrupt/tristate_tb.vhd
-- Project Name:  interrupt
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tristate
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
 
ENTITY tristate_tb IS
END tristate_tb;
 
ARCHITECTURE behavior OF tristate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tristate
    PORT(
         Din : IN  std_logic;
         En : IN  std_logic;
         Dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic := '0';
   signal En : std_logic := '0';

 	--Outputs
   signal Dout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tristate PORT MAP (
          Din => Din,
          En => En,
          Dout => Dout
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Din <= '1';
		En <= '1';
		
		wait for 100 ns;
		Din <= '0';
		
		wait for 100 ns;
		En <= '0';
		
		wait for 100 ns;
		Din <= '1';
		
		wait for 100 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;
