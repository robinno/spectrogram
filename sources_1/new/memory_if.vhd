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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memory_if is
	port(-- voor fft controller
		 clkb : in std_logic;
		 enb : in std_logic;
		 addrb : in std_logic_vector (10 downto 0);
		 doutb : out std_logic_vector (23 downto 0);
		 
		 counter_out : out integer range 0 to 2047;
		 
		 -- van audiointerface
		 clk_samples : in std_logic;
		 input : in std_logic_vector(23 downto 0);
		 mem_full : out std_logic);
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

  signal counter : integer range 0 to 2047 := 0;
  signal wea : std_logic_vector(0 downto 0) := (others => '1');
  signal addra : std_logic_vector(10 downto 0) := (others => '0');

begin

inst_fifo : FIFO
  PORT MAP (
    clka => clk_samples,
    wea => wea,
    addra => addra,
    dina => input,
    clkb => clkb,
    enb => enb,
    addrb => addrb,
    doutb => doutb
  );
  
-- make addra
addra <= std_logic_vector(to_unsigned(counter, addra'length));

-- update counter for addra and update mem_full
process(clk_samples)
begin
	if(rising_edge(clk_samples)) then
		if(counter = 2047) then
			counter <= 0;
			mem_full <= '1';
		else
			counter <= counter + 1;
			mem_full <= '0';
		end if;
	end if;
end process;

counter_out <= counter;

end Behavioral;
