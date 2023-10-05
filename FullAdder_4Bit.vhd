----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:40 10/05/2023 
-- Design Name: 
-- Module Name:    FullAdder_4Bit - Behavioral 
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


entity FullAdder_4Bit is
    Port ( 
	 
	        A    : in   STD_LOGIC_VECTOR (3 downto 0);
           B    : in   STD_LOGIC_VECTOR (3 downto 0);
           Cin  : in   STD_LOGIC;
           Sum  : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC
			  
			  );
end FullAdder_4Bit;

architecture Behavioral of FullAdder_4Bit is

	COMPONENT FA
	PORT(
		A    : IN std_logic;
		B    : IN std_logic;
		Cin  : IN std_logic;          
		Sum  : OUT std_logic;
		Cout : OUT std_logic
		);
	END COMPONENT;
signal C_Int : STD_LOGIC_VECTOR (2 downto 0) :="000";

begin


	FA_0: FA PORT MAP(
		A    => A(0)     ,
		B    => B(0)     ,
		Cin  => Cin      ,
		Sum  => Sum(0)   ,
		Cout => C_Int(0)
	);
		FA_1: FA PORT MAP(
		A    => A(1)     ,
		B    => B(1)     ,
		Cin  => C_Int(0) ,
		Sum  => Sum(1)   ,
		Cout => C_Int(1)
	);
		FA_2: FA PORT MAP(
		A    => A(2)     ,
		B    => B(2)     ,
		Cin  => C_Int(1) ,
		Sum  => Sum(2)   ,
		Cout => C_Int(2)
	);
		FA_3: FA PORT MAP(
		A    => A(3)     ,
		B    => B(3)     ,
		Cin  => C_Int(2) ,
		Sum  => Sum(3)   ,
		Cout => Cout
	);
end Behavioral;

