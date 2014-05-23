----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:56:45 05/21/2014 
-- Design Name: 
-- Module Name:    DFlip - ffq 
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

entity DFlip is		--D´¥·¢Æ÷
	port(CLK,D:in STD_LOGIC;
			Q:out STD_LOGIC);
end DFlip;

architecture ffq of DFlip is
	signal Q1:STD_LOGIC;
begin
	process(CLK,Q1)
		begin
			if CLK'EVENT AND CLK = '1'
				then Q1 <= D;
			end if;
		end process;
	Q <= Q1;
end ffq;

