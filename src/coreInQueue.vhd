----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:19:25 05/22/2014 
-- Design Name: 
-- Module Name:    coreInQueue - Behavioral 
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



entity coreInQueue is		--排队器的核心组件
	port(pre,intr:in STD_LOGIC;	--输入：上一级排队器信号，中断信号
	intp,floor:out STD_LOGIC); --输出：上级信号取反，传到下级的信号
end coreInQueue;

architecture Behavioral of coreInQueue is
	signal tmp : STD_LOGIC;
begin
	tmp <= not(pre) after 5 ns;
	intp <= tmp;
	floor <= tmp nand intr after 5 ns;
end Behavioral;	
