library ieee;
use ieee.std_logic_1164.all; 

entity Mux32Bit2to1 is
  port (I0, I1 : in std_logic_vector(31 downto 0);
     F : out std_logic_vector(31 downto 0);
     S : in std_logic
     ); 
end Mux32Bit2to1;

architecture behaviour of Mux32Bit2to1 is 
begin
  process (I0, I1, S)
  begin
    if S = '0' then
      F <= I0;
    else
      F <= I1;
    end if;
  end process;
end behaviour;