----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/13/2024 02:10:00 PM
-- Design Name: 
-- Module Name: TB_FA - Behavioral
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

entity TB_FA is
--  Port ( );
end TB_FA;

architecture Behavioral of TB_FA is
component FA
      Port ( A : in STD_LOGIC;
             B : in STD_LOGIC;
             C_in : in STD_LOGIC;
             S : out STD_LOGIC;
             C_out : out STD_LOGIC);
  end component;

  signal A: STD_LOGIC;
  signal B: STD_LOGIC;
  signal C_in: STD_LOGIC;
  signal S: STD_LOGIC;
  signal C_out: STD_LOGIC;

begin

  uut: FA port map ( A     => A,
                     B     => B,
                     C_in  => C_in,
                     S     => S,
                     C_out => C_out );

  stimulus: process
  begin
  
    -- Put initialisation code here
    A <= '0';
    B <= '0';
    C_in <= '0';
    wait for 100ns;
    
    A <= '0';
    B <= '0';
    C_in <= '1';
    wait for 100ns;
    
    A <= '0';
    B <= '1';
    C_in <= '0';
    wait for 100ns;
    
    A <= '0';
    B <= '1';
    C_in <= '1';
    wait for 100ns;
    
    A <= '1';
    B <= '0';
    C_in <= '0';
    wait for 100ns;
    
    A <= '1';
    B <= '0';
    C_in <= '1';
    wait for 100ns;
     
     A <= '1';
     B <= '1';
     C_in <= '0';
     wait for 100ns;
          
      A <= '1';
      B <= '1';
      C_in <= '1';
      wait for 100ns;
           
        
        
    


    -- Put test bench stimulus code here

    wait;
  end process;


end;