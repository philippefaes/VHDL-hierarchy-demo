library ieee;
use ieee.std_logic_1164.all;

entity b is
	port (
		x : out std_logic;
		y : in std_logic
	);
end entity b;

architecture RTL1 of b is
	
begin

end architecture RTL1;

architecture RTL2 of b is
	component c
		port(x : out std_logic;
			 y : in  std_logic);
	end component c;
begin
	c_inst : component c
		port map(x => x,
			     y => y);
end architecture RTL2;
