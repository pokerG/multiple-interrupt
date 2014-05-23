--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:17:53 05/23/2014
-- Design Name:   
-- Module Name:   F:/jizu/interrupt/deviceencode_tb.vhd
-- Project Name:  interrupt
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: deviceEncode
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
 
ENTITY deviceencode_tb IS
END deviceencode_tb;
 
ARCHITECTURE behavior OF deviceencode_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT deviceEncode
    PORT(
         INTP : IN  std_logic_vector(1 to 4);
         INTA : IN  std_logic;
         databus : OUT  std_logic_vector(0 to 1)
        );
    END COMPONENT;
    

   --Inputs
   signal INTP : std_logic_vector(1 to 4) := (others => '0');
   signal INTA : std_logic := '0';

 	--Outputs
   signal databus : std_logic_vector(0 to 1);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: deviceEncode PORT MAP (
          INTP => INTP,
          INTA => INTA,
          databus => databus
        );

   -- Clock process definitions
  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		INTA <= '1';
      wait for 100 ns;	
		INTP <= "1000";
		wait for 100 ns;	
		INTP <= "0100";
		wait for 100 ns;	
		INTP <= "0010";
		wait for 100 ns;	
		INTP <= "0001";
		wait for 100 ns;
		INTP <= "0000";
		wait for 100 ns;
		INTA <= '0';
		wait for 100 ns;
		INTP <= "1000";
      
      -- insert stimulus here 

      wait;
   end process;

END;
