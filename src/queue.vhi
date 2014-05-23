
-- VHDL Instantiation Created from source file queue.vhd -- 22:32:45 05/21/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT queue
	PORT(
		INTR : IN std_logic_vector(4 downto 1);          
		INTP : OUT std_logic_vector(4 downto 1)
		);
	END COMPONENT;

	Inst_queue: queue PORT MAP(
		INTR => ,
		INTP => 
	);


