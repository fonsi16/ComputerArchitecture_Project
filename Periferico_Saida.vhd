----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:58 03/05/2024 
-- Design Name: 
-- Module Name:    Periferico_Saida - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Periferico_Saida is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Pout : out  STD_LOGIC_VECTOR (7 downto 0));
end Periferico_Saida;

architecture Behavioral of Periferico_Saida is

begin

	process(Operando1, ESCR_P, clk)
	begin
		if ESCR_P = '1' then
			if rising_edge(clk) then
				Pout <= Operando1;
			end if;
		end if;
	end process;

end Behavioral;

