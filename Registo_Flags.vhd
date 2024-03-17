----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:58:53 03/01/2024 
-- Design Name: 
-- Module Name:    Registo_Flags - Behavioral 
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

entity Registo_Flags is
    Port ( E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           S_FLAG : out  STD_LOGIC);
end Registo_Flags;

architecture Behavioral of Registo_Flags is

begin

	process(E_FLAG, SEL_FLAG, ESCR_R, clk)
	variable aux : STD_LOGIC_VECTOR (4 downto 0);
	begin
		if rising_edge(clk) then
			if ESCR_R(1) = '1' then
				aux := E_FLAG;
			end if;
		end if;
		case SEL_FLAG is
				when "000" => S_FLAG <= aux(0);
				when "001" => S_FLAG <= aux(1);
				when "010" => S_FLAG <= aux(2);
				when "011" => S_FLAG <= aux(3);
				when "100" => S_FLAG <= aux(4);
				when others => S_FLAG <= '0';
		end case;
	end process;

end Behavioral;

