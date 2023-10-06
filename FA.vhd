----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:28:00 10/05/2023 
-- Design Name:    AbbasLashani
-- Module Name:    FA - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FA is
    Port ( 
	        A    : in   STD_LOGIC;
           B    : in   STD_LOGIC;
           Cin  : in   STD_LOGIC;
           Sum  : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FA;

architecture Behavioral of FA is

begin
           Sum  <=  A xor B xor Cin;
           Cout <= (A and B) or(A and Cin) or (B and Cin) ; 

end Behavioral;

