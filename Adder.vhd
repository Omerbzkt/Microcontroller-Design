library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder is
port(
 A,B : in std_logic_vector(31 downto 0);
 AddResult : out std_logic_vector(31 downto 0));
end Adder;

architecture Behavioral of Adder is

begin

AddResult <= (A + B);

end Behavioral;