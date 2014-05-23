----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:09 05/23/2014 
-- Design Name: 
-- Module Name:    deviceEncode - Behavioral 
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

entity deviceEncode is
	port(INTP: in std_logic_vector(1 to 4);
			INTA:in std_logic;
			databus: out std_logic_vector(0 to 1));
	end deviceEncode;

architecture Behavioral of deviceEncode is
	component tristate
		port(Din:in std_logic;
				En:in std_logic;
				Dout:out std_logic);
	end component;
	
	component ntristate
		port(Din:in std_logic;
				En:in std_logic;
				Dout:out std_logic);
	end component;
	
	constant loopnum:integer:=4;
	signal ip : std_logic_vector(1 to 4);
begin
	process(INTA,INTP)
	begin
		for i in 1 to loopnum loop
			ip(i) <= INTP(i) and INTA after 1 ns;
		end loop;
	end process;
	
	d10:ntristate port map (ip(1),ip(1),databus(0));
	d11:ntristate port map (ip(1),ip(1),databus(1));
	d20:ntristate port map (ip(2),ip(2),databus(0));
	d21:tristate port map (ip(2),ip(2),databus(1));
	d30:tristate port map (ip(3),ip(3),databus(0));
	d31:ntristate port map (ip(3),ip(3),databus(1));
	d40:tristate port map (ip(4),ip(4),databus(0));
	d41:tristate port map (ip(4),ip(4),databus(1));
end Behavioral;

