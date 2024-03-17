--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:45:52 03/10/2024
-- Design Name:   
-- Module Name:   /mnt/c/Users/andre/TP1/Mux_PC_test.vhd
-- Project Name:  TP1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_PC
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
 
ENTITY Mux_PC_test IS
END Mux_PC_test;
 
ARCHITECTURE behavior OF Mux_PC_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_PC
    PORT(
         zero : IN  std_logic;
         um : IN  std_logic;
         S_FLAG : IN  std_logic;
         Operando1_7 : IN  std_logic;
         NotOr : IN  std_logic;
         SEL_PC : IN  std_logic_vector(2 downto 0);
         ESCR_PC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal zero : std_logic := '0';
   signal um : std_logic := '0';
   signal S_FLAG : std_logic := '0';
   signal Operando1_7 : std_logic := '0';
   signal NotOr : std_logic := '0';
   signal SEL_PC : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ESCR_PC : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_PC PORT MAP (
          zero => zero,
          um => um,
          S_FLAG => S_FLAG,
          Operando1_7 => Operando1_7,
          NotOr => NotOr,
          SEL_PC => SEL_PC,
          ESCR_PC => ESCR_PC
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '0'; SEL_PC <= "000"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '1'; NotOr <= '0'; SEL_PC <= "000"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '1'; SEL_PC <= "000"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '0'; SEL_PC <= "001"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '1'; NotOr <= '0'; SEL_PC <= "001"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '1'; SEL_PC <= "001"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '0'; SEL_PC <= "010"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '1'; Operando1_7 <= '1'; NotOr <= '0'; SEL_PC <= "010"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '1'; SEL_PC <= "010"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '0'; SEL_PC <= "011"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '1'; NotOr <= '0'; SEL_PC <= "011"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '1'; SEL_PC <= "011"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '0'; SEL_PC <= "100"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '1'; SEL_PC <= "100"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '0'; SEL_PC <= "100"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '1'; NotOr <= '0'; SEL_PC <= "101"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '1'; SEL_PC <= "110"; wait for 10 ns;
		zero <= '0'; um <= '1';S_FLAG <= '0'; Operando1_7 <= '0'; NotOr <= '1'; SEL_PC <= "111"; wait for 10 ns;

      wait;
   end process;

END;
