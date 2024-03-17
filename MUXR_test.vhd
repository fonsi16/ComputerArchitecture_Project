--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:23:39 03/10/2024
-- Design Name:   
-- Module Name:   D:/Users/afons/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/Projeto/MUXR_test.vhd
-- Project Name:  Projeto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_R
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
 
ENTITY MUXR_test IS
END MUXR_test;
 
ARCHITECTURE behavior OF MUXR_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_R
    PORT(
         Constante : IN  std_logic_vector(7 downto 0);
         Dados_IN : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         Resultado : IN  std_logic_vector(7 downto 0);
         SEL_Dados : IN  std_logic_vector(1 downto 0);
         Dados_R : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal Resultado : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_Dados : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Dados_R : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name
	signal clk : std_logic := '0';
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_R PORT MAP (
          Constante => Constante,
          Dados_IN => Dados_IN,
          Dados_M => Dados_M,
          Resultado => Resultado,
          SEL_Dados => SEL_Dados,
          Dados_R => Dados_R
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Resultado <= "10010001";
		Dados_IN <= "01100011";
		Dados_M <= "00011100";
		Constante <= "10000001"; 
		
		SEL_Dados <= "00";
		wait for clk_period;
      SEL_Dados <= "01";
		wait for clk_period;
      SEL_Dados <= "10";
		wait for clk_period;
      SEL_Dados <= "11";
		wait for clk_period;

      wait;
   end process;

END;
