----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:08 03/11/2024 
-- Design Name: 
-- Module Name:    Placa_Mae - Behavioral 
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

entity Placa_Mae is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           reset : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Placa_Mae;

architecture Struct of Placa_Mae is

component Processador is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           reset : in  STD_LOGIC;
			  clk : in STD_LOGIC;
			  WR : out STD_LOGIC;
			  Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
			  Cos_out : out  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component Memoria_Instrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

component RAM is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal dados_m, constante, endereco, operando1, cos_out : STD_LOGIC_VECTOR (7 downto 0);
signal sel_r : STD_LOGIC_VECTOR (5 downto 0);
signal opcode : STD_LOGIC_VECTOR (4 downto 0);
signal wr : STD_LOGIC;

begin

proc : Processador port map (PIN, dados_m, constante, sel_r, opcode, reset, clk, wr, operando1, cos_out, endereco, POUT);
memInst : Memoria_Instrucoes port map(endereco, opcode, constante, sel_r);
r_a_m : RAM port map(cos_out, wr, clk, operando1, dados_m);



end Struct;

