--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:26:15 03/01/2024
-- Design Name:   
-- Module Name:   /mnt/c/Users/andre/TP1/Banco_Regisots_test.vhd
-- Project Name:  TP1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Banco_Registos
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Banco_Regisots_test IS
END Banco_Regisots_test;
 
ARCHITECTURE behavior OF Banco_Regisots_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Banco_Registos
    PORT(
         Dados_R : IN  std_logic_vector(7 downto 0);
         SEL_R : IN  std_logic_vector(5 downto 0);
         ESCR_R : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         Operando1 : OUT  std_logic_vector(7 downto 0);
         Operando2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Dados_R : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_R : std_logic_vector(5 downto 0) := (others => '0');
   signal ESCR_R : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Operando1 : std_logic_vector(7 downto 0);
   signal Operando2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Banco_Registos PORT MAP (
          Dados_R => Dados_R,
          SEL_R => SEL_R,
          ESCR_R => ESCR_R,
          clk => clk,
          Operando1 => Operando1,
          Operando2 => Operando2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
      -- insert stimulus here 
		ESCR_R <= "01"; Dados_R <= "01010101"; SEL_R <= "000000"; wait for 10 ns;
		ESCR_R <= "00"; Dados_R <= "01111101"; SEL_R <= "010001"; wait for 10 ns;
		ESCR_R <= "01"; Dados_R <= "01010101"; SEL_R <= "011000"; wait for 10 ns;
		ESCR_R <= "01"; Dados_R <= "01011101"; SEL_R <= "001001"; wait for 10 ns;

      wait;
   end process;

END;
