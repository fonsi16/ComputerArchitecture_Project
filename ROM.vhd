library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ROM is
    Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           WR : out  STD_LOGIC;
           ESCR_P  : out  STD_LOGIC;
           SEL_Dados  : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R  : out  STD_LOGIC_VECTOR (1 downto 0);
           SEL_ALU  : out  STD_LOGIC_VECTOR (3 downto 0);
           SEL_FLAG  : out  STD_LOGIC_VECTOR (2 downto 0);
           SEL_PC  : out  STD_LOGIC_VECTOR (2 downto 0));
end ROM;

	architecture Behavioral of ROM is

begin
	process(opcode)
	 begin
		case opcode is
			-- Perif�ricos
			when "00000" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "01"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "00001" => SEL_ALU <= "XXXX"; ESCR_P <= '1'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- Leitura e Escrita
			when "00010" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "11"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "00011" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "10"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "00100" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '1'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- L�gica e Aritm�tica
			when "00101" => SEL_ALU <= "0000"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "00110" => SEL_ALU <= "0001"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "00111" => SEL_ALU <= "0010"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "01000" => SEL_ALU <= "0011"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "01001" => SEL_ALU <= "0100"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "01010" => SEL_ALU <= "0101"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "01011" => SEL_ALU <= "0110"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "01100" => SEL_ALU <= "0111"; ESCR_P <= '0'; SEL_Dados <= "00"; ESCR_R <= "01"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			when "01101" => SEL_ALU <= "1000"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "10"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
			-- Salto
			when "01110" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "000";
			when "01111" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "001";
			when "10000" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "010";
			when "10001" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "011";
			when "10010" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "010"; SEL_FLAG <= "100";
			when "10011" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "001"; SEL_FLAG <= "XXX";
			when "10100" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "100"; SEL_FLAG <= "XXX";
			when "10101" => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "011"; SEL_FLAG <= "XXX";
			-- Outros
			when others => SEL_ALU <= "XXXX"; ESCR_P <= '0'; SEL_Dados <= "XX"; ESCR_R <= "00"; WR <= '0'; SEL_PC <= "000"; SEL_FLAG <= "XXX";
		end case;
	end process;
end Behavioral;

