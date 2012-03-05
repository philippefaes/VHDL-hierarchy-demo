library ieee;
use ieee.std_logic_1164.all;

entity top_direct_with_generics is
end entity top_direct_with_generics;

architecture RTL1 of top_direct_with_generics is
	constant CONFIG_A : integer := 2;
	constant CONFIG_B : integer := 2;
	signal x, y       : std_logic;
begin
	a_inst1 : if(CONFIG_A = 1) generate
		a_inst : entity work.a(RTL1)
			port map(x => x,
				     y => y);
	end generate;
	a_inst2 : if(CONFIG_A = 2) generate
		a_inst : entity work.a(RTL2)
			port map(x => x,
				     y => y);
	end generate;

	b_inst1 : if(CONFIG_B = 1) generate
		b_inst : entity work.b(RTL1)
			port map(x => x,
				     y => y);
	end generate;
	
	b_inst2 : if(CONFIG_B = 2) generate
		b_inst : entity work.b(RTL2)
			port map(x => x,
				     y => y);
	end generate;

end architecture RTL1;