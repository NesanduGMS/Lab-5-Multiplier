----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.02.2024 22:53:32
-- Design Name: 
-- Module Name: Multiplier_2 - Behavioral
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

entity Multiplier_2 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end Multiplier_2;

architecture Behavioral of Multiplier_2 is
component FA
 port (
 A: in std_logic;
 B: in std_logic;
 C_in: in std_logic;
 S: out std_logic;
 C_out: out std_logic);
 end component;
 
 SIGNAL FA0_S, FA0_C, FA1_S, FA1_C, a1b0,a0b1,a1b1 : std_logic;

begin
a1b0 <=  A(1) AND B(0);
a0b1 <= B(1) AND A(0);
a1b1 <= A(1) AND B(1);
FA_0 : FA
 port map (
 A =>a1b0,
 B => a0b1,
 C_in => '0', -- Set to ground
 S => S(1),
 C_Out => FA0_C);
 FA_1 : FA
 port map (
 A => a1b1,
 B => '0',
 C_in => FA0_C,
 S => S(2),
 C_Out => FA1_C);
 
 S(0) <= A(0) AND B(0);
 S(3) <= FA1_C;

end Behavioral;