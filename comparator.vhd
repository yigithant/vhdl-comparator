library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is port
(
clk:in std_logic;
a,b:in std_logic_vector(7 downto 0);
iab:in std_logic;
output:out std_logic
);
end comparator;

architecture yigithan of comparator is
signal ab:std_logic_vector(7 downto 0);
signal result:std_logic;
begin
ab(0)<=(not(a(0))) xor (not(b(0)));
ab(1)<=(not(a(1))) xor (not(b(1)));
ab(2)<=(not(a(2))) xor (not(b(2)));
ab(3)<=(not(a(3))) xor (not(b(3)));
ab(4)<=(not(a(4))) xor (not(b(4)));
ab(5)<=(not(a(5))) xor (not(b(5)));
ab(6)<=(not(a(6))) xor (not(b(6)));
ab(7)<=(not(a(7))) xor (not(b(7)));

process(clk)
begin 
if (rising_edge(clk)) then
if (ab=x"FF" and iab='0') then
result<='0';
else
result<='1';
end if;
end if;
end process;
output<=result;
end yigithan;


