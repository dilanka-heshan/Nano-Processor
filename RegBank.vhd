----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 07:02:56 PM
-- Design Name: 
-- Module Name: RegBank - Behavioral
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

entity RegBank is
    Port ( RegEn : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR (3 downto 0);
           Reg0Out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg1Out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg2Out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg3Out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg4Out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg5Out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg6Out : out STD_LOGIC_VECTOR (3 downto 0);
           Reg7Out : out STD_LOGIC_VECTOR (3 downto 0));
end RegBank;

architecture Behavioral of RegBank is

component Reg
port(
           D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0)
);
end component;

component Decoder_3_to8
port(
        I : in STD_LOGIC_VECTOR (2 downto 0);
        O : out STD_LOGIC_VECTOR (7 downto 0)
);
end component;

signal Decoder_out: std_logic_vector(7 downto 0);

begin

Decoder: Decoder_3_to8
port map(
    I => RegEn,
    O => Decoder_out
    );

Reg0:Reg
port map(
    D => DataIn,
    En => Decoder_out(0),
    Clk => Clk,
    Q => Reg0Out
);

Reg1:Reg
port map(
    D => DataIn,
    En => Decoder_out(1),
    Clk => Clk,
    Q => Reg1Out
);

Reg2:Reg
port map(
    D => DataIn,
    En => Decoder_out(2),
    Clk => Clk,
    Q => Reg2Out
);

Reg3:Reg
port map(
    D => DataIn,
    En => Decoder_out(3),
    Clk => Clk,
    Q => Reg3Out
);

Reg4:Reg
port map(
    D => DataIn,
    En => Decoder_out(4),
    Clk => Clk,
    Q => Reg4Out
);

Reg5:Reg
port map(
    D => DataIn,
    En => Decoder_out(5),
    Clk => Clk,
    Q => Reg5Out
);

Reg6:Reg
port map(
    D => DataIn,
    En => Decoder_out(6),
    Clk => Clk,
    Q => Reg6Out
);

Reg7:Reg
port map(
    D => DataIn,
    En => Decoder_out(7),
    Clk => Clk,
    Q => Reg7Out
);

end Behavioral;
