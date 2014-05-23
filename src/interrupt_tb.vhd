--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:28:49 05/23/2014
-- Design Name:   
-- Module Name:   F:/jizu/interrupt/interrupt_tb.vhd
-- Project Name:  interrupt
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: interrupt
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
 
ENTITY interrupt_tb IS
END interrupt_tb;
 
ARCHITECTURE behavior OF interrupt_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT interrupt
    PORT(
         INTA : IN  std_logic;
         CLK : IN  std_logic;
         D : IN  std_logic_vector(1 to 4);
         INTR : OUT  std_logic;
         Encode : OUT  std_logic_vector(0 to 1)
        );
    END COMPONENT;
    

   --Inputs
   signal INTA : std_logic := '0';
   signal CLK : std_logic := '0';
   signal D : std_logic_vector(1 to 4) := (others => '0');

 	--Outputs
   signal INTR : std_logic;
   signal Encode : std_logic_vector(0 to 1);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: interrupt PORT MAP (
          INTA => INTA,
          CLK => CLK,
          D => D,
          INTR => INTR,
          Encode => Encode
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
		INTA <= '1';
      wait for 100 ns;	

      D <= "0111";
		wait for 100 ns;
		D <= "1011";
		wait for 100 ns;
		D <= "0101";
		wait for 100 ns;
		D <= "0110";
		wait for 100 ns;
		D <= "1010";
		wait for 100 ns;
		D <= "0010";
		wait for 100 ns;
		D <= "0100";
		wait for 100 ns;
		D <= "1001";
		wait for 100 ns;
		D <= "1100";
		wait for 100 ns;
		D <= "0101";
		wait;

      -- insert stimulus here 
   end process;

END;
