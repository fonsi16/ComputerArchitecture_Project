library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC is
    Port ( ESCR_PC : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Reset : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end PC;


architecture Behavioral of PC is
signal contador :  STD_LOGIC_VECTOR (7 downto 0) := "00000000";
begin
	process(clk, Constante, Reset, ESCR_PC)
		begin
			if rising_edge(clk) then 
				if Reset = '1' then 
					contador <= "00000000";
				else
					if ESCR_PC = '0' then
						contador <= contador + "00000001";
					else
						contador <= Constante;
					end if;
				end if;
			end if;
		end process;
		Endereco <= contador;
end Behavioral;

