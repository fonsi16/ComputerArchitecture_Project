----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:52:33 03/01/2024 
-- Design Name: 
-- Module Name:    Banco_Registos - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Banco_Registos is
    Port ( Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end Banco_Registos;

architecture Behavioral of Banco_Registos is

begin

	process(Dados_R, SEL_R, ESCR_R, clk)
	type mem is array (0 to 7) of STD_LOGIC_VECTOR (7 downto 0);
	variable Memoria : mem;
	begin
		if ESCR_R(0) = '1' then
			if rising_edge(clk) then
				Memoria(TO_INTEGER(unsigned(SEL_R (2 downto 0)))) := Dados_R;
			end if;
		end if;
		
		Operando1 <= Memoria(TO_INTEGER(unsigned(SEL_R (2 downto 0))));
		Operando2 <= Memoria(TO_INTEGER(unsigned(SEL_R (5 downto 3))));
	end process;

end Behavioral;

