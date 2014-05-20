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


entity DFilp is			--D������
	port(CLK,D:in STD_LOGIC��
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


entity INTR is				--INTR�ж����󴥷���
	port(CLK,D:in STD_LOGIC;
			Q:out STD_LOGIC);
end INTR;

architecture IR of INTR is	--�ж�����
	component DFlip
		port(CLK,D:in STD_LOGIC��
			Q:out STD_LOGIC);
	end component;
begin
	DFlip port map(CLK,D,Q);
end IR;

entity MASK is				--MASK�ж����δ�����
	port(CLK,D:in STD_LOGIC;
			Q:out STD_LOGIC);
end MASK;

architecture ISH of MASK is	--�ж�����
	component DFlip
		port(CLK,D:in STD_LOGIC��
			Q:out STD_LOGIC);
	end component;
begin
	DFlip port map(CLK,D,Q);
end ISH;


entity interface is		--�жϽӿڵ�·
	Port(CLK,D:in STD_LOGIC; --���룺 �жϲ�ѯ�ź� ��ɴ������ź�
			RS:OUT STD_LOGIC); --����� �ж������źţ�ȡ�������Ŷ�����
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


