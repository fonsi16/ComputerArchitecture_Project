library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Periferico_Entrada is
    Port ( ESCR_P : in  STD_LOGIC;
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0));
end Periferico_Entrada;

architecture Behavioral of Periferico_Entrada is
signal Temp_Dados_IN : STD_LOGIC_VECTOR (7 downto 0);

begin
	process(ESCR_P, PIN)
		begin
			if(ESCR_P = '0') then
				Temp_Dados_IN <= PIN;
			end if;
		end process;
	
	Dados_IN <= Temp_Dados_IN;

end Behavioral;

