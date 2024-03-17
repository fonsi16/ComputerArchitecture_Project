--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:41:00 03/11/2024
-- Design Name:   
-- Module Name:   D:/Users/afons/Desktop/TP1 Backup/PlacaMae_test.vhd
-- Project Name:  TP1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Placa_Mae
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
 
ENTITY PlacaMae_test IS
END PlacaMae_test;
 
ARCHITECTURE behavior OF PlacaMae_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Placa_Mae
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Placa_Mae PORT MAP (
          PIN => PIN,
          reset => reset,
          clk => clk,
          POUT => POUT
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
		reset <= '1';
		wait for clk_period*5;
		reset <= '0';
		PIN <= "00010011";
		wait for clk_period*50;
      wait;
   end process;

END;
