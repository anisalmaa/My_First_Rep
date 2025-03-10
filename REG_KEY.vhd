----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:11:19 11/06/2023 
-- Design Name: 
-- Module Name:    REG_KEY - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG_KEY is
port(
			D: IN STD_LOGIC_VECTOR(79 downto 0);
			Q: OUT STD_LOGIC_VECTOR(79 downto 0);
			CLK,CLR,LOAD: IN STD_LOGIC
	);
end REG_KEY;

architecture Behavioral of REG_KEY is


	signal temp: STD_LOGIC_VECTOR(79 downto 0);

begin
	reg64 : process(CLK,CLR,LOAD,temp)
	begin 
		if(RISING_EDGE(CLK)) then
			if(CLR = '1') then
				temp <= (others => '0');
				
				elsif(LOAD = '1') then 
					temp <= D;
					end if;
					
				end if;
				Q <= temp;
				end process;


end Behavioral;

