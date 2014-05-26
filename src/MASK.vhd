----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:19 05/23/2014 
-- Design Name: 
-- Module Name:    MASK - Behavioral 
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

entity MASK is
	port(CLK,Min:in std_logic;
			Moutn:out std_logic);
end MASK;

architecture Behavioral of MASK is
	component DFlip
		port(CLK,D:in std_logic;
				Q:out std_logic);
	end component;
	signal Mout:std_logic;
begin
	d: DFlip port map (CLK,Min,Mout);
	Moutn <= not Mout;

end Behavioral;

