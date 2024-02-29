----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.02.2024 22:55:56
-- Design Name: 
-- Module Name: TB_Multiplier_2 - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Multiplier_2_tb is
end;

architecture bench of Multiplier_2_tb is

  component Multiplier_2
      Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
             B : in STD_LOGIC_VECTOR (1 downto 0);
             S : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR (1 downto 0);
  signal B: STD_LOGIC_VECTOR (1 downto 0);
  signal S: STD_LOGIC_VECTOR (3 downto 0);

begin

  uut: Multiplier_2 port map ( A => A,
                               B => B,
                               S => S );

  stimulus: process
  begin
  
    -- Put initialisation code here
    A <="11";
    B <= "10";
    wait for 100ns;

    -- Put test bench stimulus code here

    wait;
  end process;


end;
