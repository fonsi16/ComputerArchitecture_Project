----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:36:42 03/10/2024 
-- Design Name: 
-- Module Name:    NotOr - Behavioral 
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

entity NotOr is
    Port ( E0 : in  STD_LOGIC;
           E1 : in  STD_LOGIC;
           E2 : in  STD_LOGIC;
           E3 : in  STD_LOGIC;
           E4 : in  STD_LOGIC;
           E5 : in  STD_LOGIC;
           E6 : in  STD_LOGIC;
           E7 : in  STD_LOGIC;
           S : out  STD_LOGIC);
end NotOr;

architecture DataFlow of NotOr is

begin

	process(E0, E1, E2, E3, E4, E5, E6, E7)
	begin
		S <= NOT(E0 OR E1 OR E2 OR E3 OR E4 OR E5 OR E6 OR E7);
	end process;

end DataFlow;

