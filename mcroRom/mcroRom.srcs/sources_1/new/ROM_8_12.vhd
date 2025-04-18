----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 03:29:59 PM
-- Design Name: 
-- Module Name: ROM_8_12 - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM_8_12 is
    Port ( memory_select : in STD_LOGIC_VECTOR (2 downto 0);
           instruction : out STD_LOGIC_VECTOR (11 downto 0));
end ROM_8_12;

architecture Behavioral of ROM_8_12 is

type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);

 signal program_ROM : rom_type := (
 "100000000001", -- MOVI R0, 1
 
 "100010000010", -- MOVI R1, 2
 
"000010000000", -- ADD R1, R0

 "100100000011", -- MOVI R2,3
 
 "000100010000", -- ADD R2,R1
 
"001110100000", -- ADD R7, R2

 "111110000000", -- JZR R2,0
 
 "101110000000" -- MOVI R7,0
 

 );


begin

instruction <= program_ROM(to_integer(unsigned(memory_select)));

end Behavioral;
