----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 06:46:07 PM
-- Design Name: 
-- Module Name: Decoder_3_to8 - Behavioral
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

entity Decoder_3_to8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_to8;

architecture Behavioral of Decoder_3_to8 is

begin

process(I)
begin
    if I = "000" then
        O <= "00000001";
    elsif I = "001" then
        O <= "00000010";
    elsif I = "010" then
        O <= "00000100";
    elsif I = "011" then
        O <= "00001000";
    elsif I = "100" then
        O <= "00010000";
    elsif I = "101" then
        O <= "00100000";
    elsif I = "110" then
        O <= "01000000";
    else
        O <= "10000000";
    end if;
end process;
end Behavioral;
