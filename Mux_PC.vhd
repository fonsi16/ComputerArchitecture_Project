----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:48 03/05/2024 
-- Design Name: 
-- Module Name:    Mux_PC - Behavioral 
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

entity Mux_PC is
    Port ( zero : in  STD_LOGIC;
           um : in  STD_LOGIC;
           S_FLAG : in  STD_LOGIC;
           Operando1_7 : in  STD_LOGIC;
           NotOr : in  STD_LOGIC;
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end Mux_PC;

architecture Behavioral of Mux_PC is

begin

	process(zero, um, S_FLAG, Operando1_7, NotOr, SEL_PC)
	begin
		case SEL_PC is
			when "000" => ESCR_PC <= zero;
			when "001" => ESCR_PC <= um;
			when "010" => ESCR_PC <= S_FLAG;
			when "011" => ESCR_PC <= Operando1_7;
			when "100" => ESCR_PC <= NotOr;
			when others => ESCR_PC <= '0';
		end case;
	end process;

end Behavioral;

