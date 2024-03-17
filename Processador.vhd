library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Processador is
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
end Processador;

architecture Struct of Processador is

component ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           E_FLAG : out  STD_LOGIC_VECTOR (4 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component Banco_Registos is
    Port ( Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component Mux_R is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Dados : in  STD_LOGIC_VECTOR (1 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component Mux_PC is
    Port ( zero : in  STD_LOGIC;
           um : in  STD_LOGIC;
           S_FLAG : in  STD_LOGIC;
           Operando1_7 : in  STD_LOGIC;
           NotOr : in  STD_LOGIC;
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
end component;

component NotOr is
    Port ( E0 : in  STD_LOGIC;
           E1 : in  STD_LOGIC;
           E2 : in  STD_LOGIC;
           E3 : in  STD_LOGIC;
           E4 : in  STD_LOGIC;
           E5 : in  STD_LOGIC;
           E6 : in  STD_LOGIC;
           E7 : in  STD_LOGIC;
           S : out  STD_LOGIC);
end component;

component PC is
    Port ( ESCR_PC : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Reset : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end component;

component Periferico_Entrada is
    Port ( ESCR_P : in  STD_LOGIC;
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component Periferico_Saida is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Pout : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component ROM is
    Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           WR : out  STD_LOGIC;
           ESCR_P  : out  STD_LOGIC;
           SEL_Dados  : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R  : out  STD_LOGIC_VECTOR (1 downto 0);
           SEL_ALU  : out  STD_LOGIC_VECTOR (3 downto 0);
           SEL_FLAG  : out  STD_LOGIC_VECTOR (2 downto 0);
           SEL_PC  : out  STD_LOGIC_VECTOR (2 downto 0));
end component;

component Registo_Flags is
    Port ( E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           S_FLAG : out  STD_LOGIC);
end component;

signal dados_r, operando11, operando2, resultado, dados_in: STD_LOGIC_VECTOR (7 downto 0);
signal e_flag : STD_LOGIC_VECTOR (4 downto 0);
signal sel_alu : STD_LOGIC_VECTOR (3 downto 0);
signal sel_flag, sel_pc : STD_LOGIC_VECTOR (2 downto 0);
signal escr_r, sel_dados : STD_LOGIC_VECTOR (1 downto 0);
signal s_flag, escr_p, notor_result, escr_pc : STD_LOGIC;

begin

	Per_Entrada : Periferico_Entrada port map(escr_p, PIN, dados_in);
	MuxR : Mux_R port map(Constante, dados_in, Dados_M, resultado, sel_dados, dados_r);
	Banco_Reg : Banco_Registos port map(dados_r, SEL_R, escr_r, clk, operando11, operando2);
	ual : ALU port map (operando11, operando2, sel_alu, e_flag, resultado);
	Reg_Flags : Registo_Flags port map(e_flag, sel_flag, escr_r, clk, s_flag);
	Not_Or : NotOr port map (operando11(0), operando11(1), operando11(2), operando11(3), operando11(4), operando11(5), operando11(6), operando11(7), notor_result);
	MuxPC : Mux_PC port map ('0', '1', s_flag, operando11(7), notor_result, sel_pc, escr_pc);
	pro_count : PC port map (escr_pc, constante, reset, Endereco, clk);
	r_o_m: ROM port map (opcode, WR, escr_p, sel_dados, escr_r, sel_alu, sel_flag, sel_pc);
	Per_Saida : Periferico_Saida port map (operando11, escr_p, clk, POUT);
	Operando1 <= operando11;
	Cos_out <= Constante;
	
end Struct;