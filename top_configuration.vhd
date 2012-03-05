-- For each component, this configuration tells the tools which entity 
-- to use.
configuration top_config of top_components is
	for RTL
		for all : a
			use entity work.a(RTL1);
		end for;

		for b_inst : b
			use entity work.b(RTL2);
			for RTL2
				for c_inst : c
					use entity work.c(RTL1);
				end for;
			end for;
		end for;
		
	end for;
end configuration top_config;
