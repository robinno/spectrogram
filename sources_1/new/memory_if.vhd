----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2019 13:32:55
-- Design Name: 
-- Module Name: memory_if - Behavioral
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

entity memory_if is
	port(clka : in std_logic;
		 wea : in std_logic_vector (0 downto 0);
		 addra : in std_logic_vector (10 downto 0);
		 dina : in std_logic_vector (23 downto 0);
		 clkb : in std_logic;
		 enb : in std_logic;
		 addrb : in std_logic_vector (10 downto 0);
		 doutb : out std_logic_vector (23 downto 0));
end memory_if;

architecture Behavioral of memory_if is

COMPONENT FIFO
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END COMPONENT;

begin

inst_memory_if : FIFO
  PORT MAP (
    clka => clka,
    wea => wea,
    addra => addra,
    dina => dina,
    clkb => clkb,
    enb => enb,
    addrb => addrb,
    doutb => doutb
  );

end Behavioral;
