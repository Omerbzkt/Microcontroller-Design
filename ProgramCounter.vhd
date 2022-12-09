library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ProgramCounter is
Port ( 
address: in std_logic_vector(31 downto 0);
Reset, clk: in std_logic;
PCResult: out std_logic_vector(31 downto 0)
);
end ProgramCounter;

architecture Behavioral of ProgramCounter is

begin

 process(Reset,clk)
        begin
          if (Reset = '1') then
            PCResult <= (others => '0');
          elsif (clk'event and clk = '1') then
            PCResult <= address;
          end if;
         end process;

end Behavioral;
