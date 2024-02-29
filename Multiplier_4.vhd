----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.02.2024 22:57:14
-- Design Name: 
-- Module Name: Multiplier_4 - Behavioral
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

entity Multiplier_4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Multiplier_4;

architecture Behavioral of Multiplier_4 is
component FA
    port (
    A: in std_logic;
    B: in std_logic;
    C_in: in std_logic;
    S: out std_logic;
    C_out: out std_logic);
end component;
SIGNAL FA0_S, FA0_C,FA2_C,FA3_C, FA1_S, FA1_C, a1b0, a0b1,a2b0,a1b1,t0,a0b2,a3b0,a2b1,t1,a1b2,t2,FA4_C,a0b3,FA5_C,a3b1,a2b2,FA6_C,t3,FA7_C,a1b3,FA8_C,a3b2,a2b3,a3b3,FA10_C,t4,t5,FA11_C : std_logic;
begin
    a1b0 <= A(1) AND B(0);
    a0b1 <= A(0) AND B(1);
    a2b0 <= A(2) AND B(0);
    a1b1 <= A(1) AND B(1);
    a0b2 <= A(0) AND B(2);
    a3b0 <= A(3) AND B(0);
    a2b1 <= A(2) AND B(1);
    a1b2 <= A(1) AND B(2);
    a0b3 <= A(0) AND B(3);
    a3b1 <= A(3) AND B(1);
    a2b2 <= A(2) AND B(2);
    a1b3 <= A(1) AND B(3);
    a3b2 <= A(3) AND B(2);
    a2b3 <= A(2) AND B(3);
    a3b3 <= A(3) AND B(3);
    Y(0) <= A(0) AND B(0);
FA_0 : FA
    port map (
    A =>a1b0,
    B => a0b1,
    C_in => '0',
    S => Y(1),
    C_Out => FA0_C);
FA_1 : FA
    port map (
    A => a2b0,
    B => a1b1,
    C_in => FA0_C,
    S => t0,
    C_Out => FA1_C);
FA_2 : FA
    port map (
    A =>t0,
    B => a0b2,
    C_in => '0', 
    S => Y(2),
    C_Out => FA2_C);
FA_3 : FA
    port map (
    A =>a3b0,
    B => a2b1,
    C_in => FA1_C, 
    S => t1,
    C_Out => FA3_C);
FA_4 : FA
    port map (
    A =>a1b2,
    B => t1,
    C_in => FA2_C, 
    S => t2,
    C_Out => FA4_C);
FA_5 : FA
    port map (
    A =>a0b3,
    B => t2,
    C_in => '0', 
    S => Y(3),
    C_Out => FA5_C);
        
FA_6 : FA
    port map (
    A =>a3b1,
    B => a2b2,
    C_in => FA3_C, 
    S => t3,
    C_Out => FA6_C);
FA_7 : FA
    port map (
    A =>a1b3,
    B => t3,
    C_in => FA4_C, 
    S => t4,
    C_Out => FA7_C);
FA_10 : FA
    port map (
    A =>t4,
    B => FA5_C,
    C_in => '0', 
    S => Y(4),
    C_Out => FA10_C);
        
FA_8 : FA
    port map (
    A =>a3b2,
    B => a2b3,
    C_in => FA6_C, 
    S => t5,
    C_Out => FA8_C);
        
FA_11 : FA
    port map (
    A =>t5,
    B => FA10_C,
    C_in => FA7_C, 
    S => Y(5),
    C_Out => FA11_C);
FA_9 : FA
    port map (
    A =>a3b3,
    B => FA8_C,
    C_in => FA11_C, 
    S => Y(6),
    C_Out => Y(7));

end Behavioral;