----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.02.2024 22:59:38
-- Design Name: 
-- Module Name: TB_Multiplier_4 - Behavioral
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

entity Multiplier_4_tb is
end;

architecture bench of Multiplier_4_tb is

  component Multiplier_4
      Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
             B : in STD_LOGIC_VECTOR (3 downto 0);
             Y : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR (3 downto 0);
  signal B: STD_LOGIC_VECTOR (3 downto 0);
  signal Y: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: Multiplier_4 port map ( A => A,
                               B => B,
                               Y => Y );

  stimulus: process
  begin
  
    -- Put initialisation code here
    A <="1010";
    B <="1010";
    wait for 100ns;


    -- Put test bench stimulus code here

    wait;
  end process;
 end;
