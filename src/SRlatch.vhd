----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:41:37 06/04/2014 
-- Design Name: 
-- Module Name:    SRlatch - Behavioral 
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

entity SRlatch is
	port(S,R:in std_logic;
		Q:out std_logic);
end SRlatch;

architecture Behavioral of SRlatch is
	
begin
	process(S,R)
	begin 
		if S = '0' and R = '1' then
			Q <= '1' after 5 ns;
		else if S = '1' and R = '0' then
			Q <= '0' after 5 ns;
		else if S = '0' and R = '0' then
			Q <= 'X';
		else
		   null;
		end if;
		end if;
		end if;
	end process;
end Behavioral;

