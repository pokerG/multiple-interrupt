----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:01:20 05/21/2014 
-- Design Name: 
-- Module Name:    interface - Behavioral 
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



entity interface is		--中断接口电路
	Port(CLK,D:in STD_LOGIC; --输入： 中断查询信号 完成触发器信号
			RS:OUT STD_LOGIC); --输出： 中断请求信号（取反进入排队器）
end interface;

architecture Behavioral of interface is
	component DFlip
		port(CLK,D:in STD_LOGIC;
				Q:out STD_LOGIC);
	end component;
	signal tmp: STD_LOGIC;
	begin
		tmp <= D;
		intr: DFlip port map (CLK,tmp,RS);
end Behavioral;
