library ieee;
use ieee.std_logic_1164.all;

entity top_direct is
end entity top_direct;

architecture RTL_1_2 of top_direct is
	signal x,y : std_logic;
begin

	a_inst : entity work.a(RTL1)
		port map(x => x,
			     y => y);

	b_inst : entity work.b(RTL2)
		port map(x => x,
			     y => y);

end architecture RTL_1_2;
