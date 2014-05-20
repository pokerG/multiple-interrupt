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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity coreInQueue is		--�Ŷ����ĺ������
	port(pre,intr:in std_LOGIC;	--���룺��һ���Ŷ����źţ��ж��ź�
	intp,floor:out std_LOGIC); --������ϼ��ź�ȡ���������¼����ź�
end coreInQueue;

architecture Behavioral of coreInQueue is
begin
	intp <= not(pre);
	floor <= not(intp and intr);
end Behavioral;	
	
entity queue is		--�Ŷ���
	port(INTR:in STD_LOGIC_VECTOR(4 downto 1);	--���룺�ж������źţ�4���ж�Դ��
		INTP:out STD_LOGIC_VECTOR(4 downto 1));	--������Ŷӱ���
end queue;

architecture Behavioral of queue is
	signal intp1 : STD_LOGIC_VECTOR(4 downto 1);
	signal ceil: STD_LOGIC_VECTOR(4 downto 1);
	component coreInQueue
		port(pre,intr:in std_LOGIC;	
			intp,floor:out std_LOGIC);
	end component;
begin
	coreInQueue(0,(not INTR(1)),intp1(1),ceil(1));
	coreInQueue(ceil(1),(not INTR(2)),intp1(2),ceil(2));
	coreInQueue(ceil(2),(not INTR(3)),intp1(3),ceil(3));
	coreInQueue(ceil(3),(not INTR(4)),intp1(4),ceil(4));
	INTP(1) <= intp1(1) and INTR(1);
	INTP(2) <= intp1(1) and INTR(2);
	INTP(3) <= intp1(1) and INTR(3);
	INTP(4) <= intp1(1) and INTR(4);

end Behavioral;

