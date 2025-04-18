----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 09:26:14 PM
-- Design Name: 
-- Module Name: Mux_2_way_4_bit - Behavioral
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

entity Mux_2_way_4_bit is
    Port ( In0 : in STD_LOGIC_VECTOR (3 downto 0);
           In1 : in STD_LOGIC_VECTOR (3 downto 0);
           LoadSel : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_2_way_4_bit;

architecture Behavioral of Mux_2_way_4_bit is

begin

process(LoadSel , In0 , In1)

begin

    case LoadSel is
        when '0' =>
        Output <= In0;
        
        when '1' =>
        Output <= In1;
    end case;
end process;

end Behavioral;
