----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:59 05/23/2014 
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

entity interrupt is
	port(INTA : in std_logic;		--中断响应信号
			CLK: in std_logic;		--中断查询
			D:in std_logic_vector(1 to 4);	--中断源
			INTR: out std_logic; --中断请求信号
			Encode:out std_logic_vector(0 to 1));	--向量地址
end interrupt;

architecture Behavioral of interrupt is
	component interface
		port(CLK,D:in std_logic;
				RS:out std_logic);
	end component interface;
	
	component queue
		port(NINTR: in std_logic_vector(1 to 4);
				INTP: out std_logic_vector(1 to 4));
	end component queue;
	
	component deviceEncode
		port(INTP: in std_logic_vector(1 to 4);
			INTA:in std_logic;
			databus: out std_logic_vector(0 to 1));
	end component deviceEncode;
	
	signal tr : std_logic_vector(1 to 4); --interface输出
	signal ntr : std_logic_vector(1 to 4);
	signal tp : std_logic_vector(1 to 4); --queue输出
begin
	i1: interface port map (CLK,D(1),tr(1));
	i2: interface port map (CLK,D(2),tr(2));
	i3: interface port map (CLK,D(3),tr(3));
	i4: interface port map (CLK,D(4),tr(4));
	INTR <= tr(1) and tr(2) and tr(3) and tr(4);
	ntr <= not tr;

	q: queue port map (ntr,tp);
	e: deviceEncode port map(tp,INTA,Encode);
end Behavioral;

