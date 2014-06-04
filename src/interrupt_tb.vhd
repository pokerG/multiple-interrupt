--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:44:28 05/23/2014
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
         OpInt : IN  std_logic;
         CLK : IN  std_logic;
         D : IN  std_logic_vector(1 to 4);
         M : IN  std_logic_vector(1 to 4);
         INTR : OUT  std_logic;
         Encode : OUT  std_logic_vector(0 to 1)
        );
    END COMPONENT;
      
 
   --Inputs
   signal OpInt : std_logic := '0';
   signal CLK : std_logic := '0';
   signal D : std_logic_vector(1 to 4) := "1111";
   signal M : std_logic_vector(1 to 4) := "0000";

 	--Outputs
   signal INTR : std_logic;
   signal Encode : std_logic_vector(0 to 1);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
	signal init : std_logic;
	signal tmpm : std_logic_vector(1 to 4);
	--signal tmpd : std_logic_vector(1 to 4);
	--signal tmp2 : std_logic_vector(0 to 1);
	signal tmp3 : std_logic:='0';
	signal tmp4 : std_logic:='0';
 	--signal dp : std_logic_vector(1 to 4);
BEGIN


	-- Instantiate the Unit Under Test (UUT)
   uut: interrupt PORT MAP (
          OpInt => OpInt,
          CLK => CLK,
          D => D,
          M => M,
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
 
	process
	begin
		wait for 100 ns;
		OpInt <= '1';
		tmp4 <= '0';
		--wait until INTR = '1';
		if INTR = '1' then
		tmpm <= M; --±£´æÆÁ±Î×Ö
		case Encode is
			when "00" =>
				D <= D and "0111" after 5 ns;
				M <= "1111" after 5 ns;
			when "01" =>
				D <= D and "1011" after 5 ns;
				M <= "0100" after 5 ns;
			when "10" =>
				D <= D and "1101" after 5 ns;
				M <= "0110" after 5 ns;
			when "11" =>
				D <= D and "1110" after 5 ns;
				M <= "0111" after 5 ns;
			when others =>
				tmp3 <= '1' after 5 ns;
		end case;
		wait for 50 ns;
		OpInt <= '0';
		wait for 100 ns; --ÖÐ¶Ï·þÎñ
		OpInt <= '1';
		M <= tmpm after 10 ns;	--»Ö¸´ÆÁ±Î×Ö
		OpInt <= '0';
		tmp3 <= '0' after 10 ns;
		end if;
		tmp4 <= '1';
	end process;
   -- Stimulus process
	
	 
		
END;
