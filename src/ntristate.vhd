----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:49 05/23/2014 
-- Design Name: 
-- Module Name:    ntristate - Behavioral 
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

entity ntristate is
	port(Din:in std_logic;
			En:in std_logic;
			Dout:out std_logic);
end ntristate;

architecture Behavioral of ntristate is

begin
	process(Din,En)
	begin
		if En = '1' then Dout <= not Din after 5ns;
		else Dout <= 'Z';
		end if;
	end process;

end Behavioral;

