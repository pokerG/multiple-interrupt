--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:36:27 05/22/2014
-- Design Name:   
-- Module Name:   F:/Test/test2/queue_tb.vhd
-- Project Name:  test2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: queue
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
 
ENTITY queue_tb IS
END queue_tb;
 
ARCHITECTURE behavior OF queue_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT queue
    PORT(
         NINTR : IN  std_logic_vector(1 to 4);
         INTP : OUT  std_logic_vector(1 to 4)
        );
    END COMPONENT;
    

   --Inputs
   signal NINTR : std_logic_vector(1 to 4) := (others => '0');

 	--Outputs
   signal INTP : std_logic_vector(1 to 4);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
   
  
	-- Instantiate the Unit Under Test (UUT)
   uut: queue PORT MAP (
          NINTR => NINTR,
          INTP => INTP
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      NINTR <= "0111";
		wait for 100 ns;
		NINTR <= "1011";
		wait for 100 ns;
		NINTR <= "1001";
		wait for 100 ns;
		NINTR <= "1110";
		wait for 100 ns;
		NINTR <= "1010";
		wait for 100 ns;
		NINTR <= "0010";
		wait for 100 ns;
		NINTR <= "0000";
		wait for 100 ns;
		NINTR <= "1000";
		wait for 100 ns;
		NINTR <= "1100";
		wait for 100 ns;
		NINTR <= "0100";
      -- insert stimulus here 
 
      wait;
   end process;

END;
