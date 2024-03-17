library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;


entity ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           E_FLAG : out  STD_LOGIC_VECTOR (4 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
	process(Operando1, Operando2, SEL_ALU)
		begin
			case SEL_ALU is
				when "0000" => Resultado <= Operando1 + Operando2;
				when "0001" => Resultado <= Operando1 - Operando2;
				when "0010" => Resultado <= Operando1 and Operando2;
				when "0011" => Resultado <= not(Operando1 and Operando2);
				when "0100" => Resultado <= Operando1 or Operando2;
				when "0101" => Resultado <= not(Operando1 or Operando2);
				when "0110" => Resultado <= Operando1 xor Operando2;
				when "0111" => Resultado <= not(Operando1 xor Operando2);
				when "1000" => if Operando1 < Operando2 then 
										E_FLAG <= (0 => '1', 1 =>'1', others => '0');
									elsif Operando1 = Operando2 then 
										E_FLAG <= (1 => '1', 2 =>'1', 3=>'1', others => '0');
									elsif Operando1 > Operando2 then 
										E_FLAG <= (3=>'1', 4 => '1', others => '0');
									end if;
				when others => Resultado <= "XXXXXXXX"; E_FLAG <= "XXXXX";
				
			end case;
	end process;

end Behavioral;

