--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:05:44 03/01/2024
-- Design Name:   
-- Module Name:   /mnt/c/Users/andre/TP1/Registo_Flags_test.vhd
-- Project Name:  TP1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Registo_Flags
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
 
ENTITY Registo_Flags_test IS
END Registo_Flags_test;
 
ARCHITECTURE behavior OF Registo_Flags_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registo_Flags
    PORT(
         E_FLAG : IN  std_logic_vector(4 downto 0);
         SEL_FLAG : IN  std_logic_vector(2 downto 0);
         ESCR_R : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         S_FLAG : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal E_FLAG : std_logic_vector(4 downto 0) := (others => '0');
   signal SEL_FLAG : std_logic_vector(2 downto 0) := (others => '0');
   signal ESCR_R : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal S_FLAG : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Registo_Flags PORT MAP (
          E_FLAG => E_FLAG,
          SEL_FLAG => SEL_FLAG,
          ESCR_R => ESCR_R,
          clk => clk,
          S_FLAG => S_FLAG
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
		E_FLAG <= "10101"; SEL_FLAG <= "000"; ESCR_R <= "00"; wait for 10 ns;
		E_FLAG <= "10101"; SEL_FLAG <= "000"; ESCR_R <= "10"; wait for 10 ns;
		E_FLAG <= "10101"; SEL_FLAG <= "001"; ESCR_R <= "10"; wait for 10 ns;
		E_FLAG <= "10101"; SEL_FLAG <= "010"; ESCR_R <= "10"; wait for 10 ns;
		E_FLAG <= "10101"; SEL_FLAG <= "011"; ESCR_R <= "10"; wait for 10 ns;
		E_FLAG <= "10101"; SEL_FLAG <= "100"; ESCR_R <= "10"; wait for 10 ns;
		E_FLAG <= "11001"; SEL_FLAG <= "010"; ESCR_R <= "11"; wait for 10 ns;
      wait;
   end process;

END;
