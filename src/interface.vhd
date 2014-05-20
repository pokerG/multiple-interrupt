----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:57 05/19/2014 
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


entity DFilp is			--D触发器
	port(CLK,D:in STD_LOGIC；
			Q:out STD_LOGIC);
end DFilp;

architecture FFQ of DFilp is
	signal Q1:STD_LOGIC;
begin
	process(CLK,Q1)
		begin
			if CLK'EVENT AND CLK = '1'
				then Q1 <= D;
			end if;
		end process;
	Q <= Q1;
end FFQ;


entity INTR is				--INTR中断请求触发器
	port(CLK,D:in STD_LOGIC;
			Q:out STD_LOGIC);
end INTR;

architecture IR of INTR is	--中断请求
	component DFlip
		port(CLK,D:in STD_LOGIC；
			Q:out STD_LOGIC);
	end component;
begin
	DFlip port map(CLK,D,Q);
end IR;

entity MASK is				--MASK中断屏蔽触发器
	port(CLK,D:in STD_LOGIC;
			Q:out STD_LOGIC);
end MASK;

architecture ISH of MASK is	--中断屏蔽
	component DFlip
		port(CLK,D:in STD_LOGIC；
			Q:out STD_LOGIC);
	end component;
begin
	DFlip port map(CLK,D,Q);
end ISH;


entity interface is		--中断接口电路
	Port(CLK,D:in STD_LOGIC; --输入： 中断查询信号 完成触发器信号
			RS:OUT STD_LOGIC); --输出： 中断请求信号（取反进入排队器）
end interface;

architecture Behavioral of interface is
	component INTR
		port(CLK,X:in STD_LOGIC;
				Q:out STD_LOGIC);
	end component;
	signal tmp: STD_LOGIC;
	begin
		tmp <= (D and MASK.Q)
		INTR port map(CLK,tmp,RS);
end Behavioral;


