----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 08:02:00 PM
-- Design Name: 
-- Module Name: Mux_2_way_3_bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_2_way_3_bit is
    Port ( Jmp_flag : in STD_LOGIC;
           In0 : in STD_LOGIC_VECTOR (2 downto 0);
           In1 : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (2 downto 0));
end Mux_2_way_3_bit;

architecture Behavioral of Mux_2_way_3_bit is


begin

process(Jmp_flag , In0 , In1)
begin
case Jmp_flag is
    when '0' =>
    O <= In0;
    
    when '1' =>
    O <= In1;
end case;
end process;

end Behavioral;
