--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:43:18 03/10/2024
-- Design Name:   
-- Module Name:   D:/Users/afons/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/Projeto/RAM_test.vhd
-- Project Name:  Projeto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
ENTITY RAM_test IS
END RAM_test;
 
ARCHITECTURE behavior OF RAM_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         Constante : IN  std_logic_vector(7 downto 0);
         WR : IN  std_logic;
         clk : IN  std_logic;
         Operando1 : IN  std_logic_vector(7 downto 0);
         Dados_M : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal WR : std_logic := '0';
   signal clk : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Dados_M : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          Constante => Constante,
          WR => WR,
          clk => clk,
          Operando1 => Operando1,
          Dados_M => Dados_M
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
      wait for clk_period*10;

      -- insert stimulus here 
		WR <= '1'; Operando1 <= "10111101"; Constante <= "10101010";  
		wait for clk_period*10;
		WR <= '1'; Operando1 <= "00011000"; Constante <= "01111000";  
		wait for clk_period*10;
		WR <= '0'; Operando1 <= "11111111"; Constante <= "10101010";  
		wait for clk_period*10;
		WR <= '0'; Operando1 <= "10101010"; Constante <= "01111000	";  
		wait for clk_period*10;
      wait;
   end process;

END;
