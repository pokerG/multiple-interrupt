----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:15:46 05/19/2014 
-- Design Name: 
-- Module Name:    interrupt - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity DFilp is
	port(CLK,D:in STD_LOGIC£»
			Q:OUT STD_LOGIC);
end DFilp;

architecture FFQ of DFilp is
	signal Q1:STD_LOGIC;
begin
	process(CLK,Q1)
		begin
			if CLK'EVENT AND CLK = '1'
				then Q1 <= D;
			end if;
		end process;
	Q <= Q1;
end FFQ;


entity interrupt is
end interrupt;

architecture Behavioral of interrupt is

begin


end Behavioral;

