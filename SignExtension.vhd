library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignExtension is
Port ( 
Input : in std_logic_vector(15 downto 0);
RegWrite2 : in std_logic;
Output : out std_logic_vector(31 downto 0)
);
end SignExtension;

architecture Behavioral of SignExtension is

begin

process (Input)
begin
          if RegWrite2 = '0' then
            if Input(15) = '1' then
               Output(31 downto 16) <= (others => '1');
               Output(15 downto 0) <= Input;
            else 
               Output(31 downto 16) <= (others => '0');
               Output(15 downto 0) <= Input;
            end if;
          else
               Output(4 downto 0) <= Input(10 downto 6);
               Output (31 downto 5) <= (others => '0');
          end if;
end process;
end Behavioral;
