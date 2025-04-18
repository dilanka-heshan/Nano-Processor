----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 07:49:37 PM
-- Design Name: 
-- Module Name: Mux_8_way_4_bit - Behavioral
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

entity Mux_8_way_4_bit is
    Port ( RegSel : in STD_LOGIC_VECTOR (2 downto 0);
           Reg0 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg1 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg2 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg3 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg4 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg5 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg6 : in STD_LOGIC_VECTOR (3 downto 0);
           Reg7 : in STD_LOGIC_VECTOR (3 downto 0);
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end Mux_8_way_4_bit;

architecture Behavioral of Mux_8_way_4_bit is

begin

process(RegSel , Reg0 , Reg1 , Reg2 , Reg3 , Reg4 , Reg5 , Reg6 , Reg7)
begin
    case RegSel is
        when "000" =>
        Output <= Reg0;
        
        when "001" =>
        Output <= Reg1;
        
        when "010" =>
        Output <= Reg2;
                
        when "011" =>
        Output <= Reg3;
                        
        when "100" =>
        Output <= Reg4;
        
        when "101" =>
        Output <= Reg5;
                
        when "110" =>
        Output <= Reg6;
        
        when "111" =>
        Output <= Reg7;
        
    end case;
end process;


end Behavioral;
