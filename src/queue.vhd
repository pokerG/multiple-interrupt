----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:49 05/20/2014 
-- Design Name: 
-- Module Name:    queue - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
	
entity queue is		--排队器
	port(NINTR:in STD_LOGIC_VECTOR(1 to 4);	--输入：中断请求信号（4个中断源）取反
		INTP:out STD_LOGIC_VECTOR(1 to 4));	--输出：排队编码
end queue;

architecture Behavioral of queue is
	signal intp1 : STD_LOGIC_VECTOR(1 to 4);
	signal ceil: STD_LOGIC_VECTOR(1 to 4);
	constant loopnum:integer:= 4; 
	component coreInQueue
		port(pre:in STD_LOGIC;
				intr:in STD_LOGIC;		
				intp:out STD_LOGIC;
				floor:out STD_LOGIC);
	end component;
begin
	c1: coreInQueue port map ('0',NINTR(1),intp1(1),ceil(1));
	c2: coreInQueue port map (ceil(1),NINTR(2),intp1(2),ceil(2));
	c3: coreInQueue port map (ceil(2),NINTR(3),intp1(3),ceil(3));
	c4: coreInQueue port map (ceil(3),NINTR(4),intp1(4),ceil(4));
	INTP <= not(intp1 nand (not NINTR)) after 5 ns;
	
end Behavioral;

