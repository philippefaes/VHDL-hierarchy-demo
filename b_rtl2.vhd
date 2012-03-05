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
