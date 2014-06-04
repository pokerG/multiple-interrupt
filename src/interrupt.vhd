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
	port(OpInt : in std_logic;		--���ж� 0 Ϊ��Чֵ
			CLK: in std_logic;		--�жϲ�ѯ
			D:in std_logic_vector(1 to 4);	--�ж�Դ
			M:in std_logic_vector(1 to 4); --������
			INTR: out std_logic; --�ж������ź�
			Encode:out std_logic_vector(0 to 1));	--������ַ
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
	
	component MASK
		port(CLK:in std_logic;
				Min:in std_logic;
				Moutn: out std_logic);
	end component MASK;
	
	component SRlatch
		port(S:in std_logic;
				R:in std_logic;
				Q:out std_logic);
	end component SRlatch;
			
	signal inta: std_logic :='1'; --�ж���Ӧ�ź�
	signal tr : std_logic_vector(1 to 4); --interface���
	signal ntr : std_logic_vector(1 to 4);
	signal tp : std_logic_vector(1 to 4); --queue���
	signal mon: std_logic_vector(1 to 4); --MASK ~���
	signal input:std_logic_vector(1 to 4):="1111"; --interface����
	signal qor:std_logic:= '0'; --�Ŷ��������
	signal ei:std_logic; --EINT����
	signal eq:std_logic:= '1'; --EINT���
begin
	m1: MASK port map (CLK,M(1),mon(1));
	m2: MASK port map (CLK,M(2),mon(2));
	m3: MASK port map (CLK,M(3),mon(3));
	m4: MASK port map (CLK,M(4),mon(4));
	input <= mon and D;
	i1: interface port map (CLK,input(1),tr(1));
	i2: interface port map (CLK,input(2),tr(2));
	i3: interface port map (CLK,input(3),tr(3));
	i4: interface port map (CLK,input(4),tr(4));
	INTR <= tr(1) or tr(2) or tr(3) or tr(4);
	ntr <= not tr;
	inta <= eq;
	q: queue port map (ntr,tp);
	e: deviceEncode port map(tp,inta,Encode);
	
	--���ж�
	qor <= tp(1) or tp(2) or tp(3) or tp(4);
	int: SRlatch port map(eq nand qor,OpInt,ei);
	eint: SRlatch port map(OpInt,not ei,eq);
	
end Behavioral;

