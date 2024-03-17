library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_R is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Dados : in  STD_LOGIC_VECTOR (1 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0));
end Mux_R;

architecture Behavioral of Mux_R is
signal aux : STD_LOGIC_VECTOR (7 downto 0);
begin
	process(Constante, Dados_IN, Dados_M, Resultado, SEL_Dados)
		begin
			case SEL_Dados is
				when "00" => aux <= Resultado;
				when "01" => aux <= Dados_IN;
				when "10" => aux <= Dados_M;
				when "11" => aux <= Constante;
				when others => aux <= (others => 'X');
			end case;
	end process;
	Dados_R <= aux;
end Behavioral;	

