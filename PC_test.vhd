LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PC_test IS
END PC_test;
 
ARCHITECTURE behavior OF PC_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         ESCR_PC : IN  std_logic;
         Constante : IN  std_logic_vector(7 downto 0);
         Reset : IN  std_logic;
         Endereco : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ESCR_PC : std_logic := '0';
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal Reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Endereco : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          ESCR_PC => ESCR_PC,
          Constante => Constante,
          Reset => Reset,
          Endereco => Endereco,
          clk => clk
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

      wait for clk_period*5;

      -- insert stimulus here 
		ESCR_PC <= '1';
		Constante <= "10010001";
		Reset <= '0';
		
		wait for clk_period*5;
		
		ESCR_PC <= '0';
		Reset <= '0';
		
		wait for clk_period*5;
		
		Reset <= '1';
		
		wait for clk_period*1;
		
		Reset <= '0';
		ESCR_PC <= '0';

      wait;
   end process;

END;
