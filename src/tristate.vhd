----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:53 05/23/2014 
-- Design Name: 
-- Module Name:    tristate - Behavioral 
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

entity tristate is
	port(Din:in std_logic;
			En:in std_logic;
			Dout:out std_logic);
end tristate;

architecture Behavioral of tristate is

begin
	process(Din,En)
	begin
		if En = '1' then Dout <= Din after 5 ns;
		else Dout <= 'Z';
		end if;
	end process;

end Behavioral;

