library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end RAM;

architecture Behavioral of RAM is
type RAM_ARRAY is array (0 to 255) of std_logic_vector (7 downto 0);
signal RAM : RAM_ARRAY := (others=>(others=>'0'));
begin
	process(Constante, WR, clk, Operando1)
		begin
			if WR = '1' then
				if rising_edge(clk) then 
					RAM(to_integer(unsigned(Constante))) <= Operando1;	
				end if;
			else
				Dados_M <= RAM(to_integer(unsigned(Constante)));
			end if;
	end process;
end Behavioral;