--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:19:35 03/10/2024
-- Design Name:   
-- Module Name:   /mnt/c/Users/andre/TP1/Periferico_Saida_test.vhd
-- Project Name:  TP1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Periferico_Saida
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
 
ENTITY Periferico_Saida_test IS
END Periferico_Saida_test;
 
ARCHITECTURE behavior OF Periferico_Saida_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Periferico_Saida
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         ESCR_P : IN  std_logic;
         clk : IN  std_logic;
         Pout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal ESCR_P : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Pout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Periferico_Saida PORT MAP (
          Operando1 => Operando1,
          ESCR_P => ESCR_P,
          clk => clk,
          Pout => Pout
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
		ESCR_P <= '0'; Operando1 <= "00110011"; wait for 10 ns;
		ESCR_P <= '1'; Operando1 <= "00110011"; wait for 10 ns;
		ESCR_P <= '1'; Operando1 <= "11001100"; wait for 10 ns;

      wait;
   end process;

END;
