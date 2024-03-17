LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY alu_test IS
END alu_test;

ARCHITECTURE behavior OF alu_test IS
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ALU
        PORT(
             Operando1 : IN  std_logic_vector(7 downto 0);
             Operando2 : IN  std_logic_vector(7 downto 0);
             SEL_ALU : IN  std_logic_vector(3 downto 0);
             E_FLAG : OUT  std_logic_vector(4 downto 0);
             Resultado : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;

   -- Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Operando2 : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_ALU : std_logic_vector(3 downto 0) := (others => '0');

   -- Outputs
   signal E_FLAG : std_logic_vector(4 downto 0);
   signal Resultado : std_logic_vector(7 downto 0);

   -- Clock
   signal clock : std_logic := '0';
   constant clock_period : time := 10 ns;

BEGIN
    -- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Operando1 => Operando1,
          Operando2 => Operando2,
          SEL_ALU => SEL_ALU,
          E_FLAG => E_FLAG,
          Resultado => Resultado
        );

   -- Clock process definitions
   clock_process: process
   begin
        while now < 500 ns loop
            clock <= not clock;
            wait for clock_period/2;
        end loop;
        wait;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
      Operando1 <= "00000101";
      Operando2 <= "00000101";
      SEL_ALU <= "1000";

      wait for 500 ns; 

      wait;
   end process;

END behavior;
