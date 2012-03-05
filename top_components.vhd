library ieee;
use ieee.std_logic_1164.all;

entity top_components is
end entity top_components;

-- This architecture instantiates _components_. 
-- By default, the elaboration phase chooses entities in the current
-- library that have the same name as the components. If such entity
-- has more than one architecture, simulators and synthesis tools 
-- use the architecture that was analyzed last.
--
-- For more control over which architectures are used, you can declare
-- a configuration, such as work.top_configuration.
--
-- Alternatively, you can configure your design by changing the 
-- compilation list that you use for building your design.
-- 
architecture RTL of top_components is
	signal x,y : std_logic;
	
	component a
		port(x : in  std_logic;
			 y : out std_logic);
	end component a;
	
	component b
		port(x : out std_logic;
			 y : in  std_logic);
	end component b;
begin

	a_inst : a
		port map(x => x,
			     y => y);

	b_inst : b
		port map(x => x,
			     y => y);

end architecture RTL;