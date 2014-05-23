
-- VHDL Instantiation Created from source file interrupt.vhd -- 14:43:33 05/23/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT interrupt
	PORT(
		INTA : IN std_logic;
		CLK : IN std_logic;
		D : IN std_logic_vector(1 to 4);          
		INTR : OUT std_logic;
		Encode : OUT std_logic_vector(0 to 7)
		);
	END COMPONENT;

	Inst_interrupt: interrupt PORT MAP(
		INTA => ,
		CLK => ,
		D => ,
		INTR => ,
		Encode => 
	);


