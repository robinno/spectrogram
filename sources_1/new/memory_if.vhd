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
	port(clkb : in std_logic;
		 enb : in std_logic;
		 addrb : in std_logic_vector (10 downto 0);
		 doutb : out std_logic_vector (23 downto 0);
		 
		 -- van audiointerface
		 b_clk : in std_logic;
		 sdata_out : in std_logic);
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

  signal counter : integer range 0 to 2048 := 0;
  signal b_counter : integer range 0 to 23 := 0;
  signal wea : std_logic_vector(0 downto 0);
  signal addra : std_logic_vector(10 downto 0);
  signal dina : std_logic_vector(23 downto 0);
  

begin

inst_fifo : FIFO
  PORT MAP (
    clka => b_clk,
    wea => wea,
    addra => addra,
    dina => dina,
    clkb => clkb,
    enb => enb,
    addrb => addrb,
    doutb => doutb
  );
  
-- make addra
process
begin
	if(counter = 2048) then
		counter <= 0;
	end if;
	addra <= std_logic_vector(to_unsigned(counter, addra'length));
end process;

-- write data in fifo, make serial data parallel
process (b_clk)
begin
	if(falling_edge(b_clk)) then
		if(b_counter = 23) then
			b_counter <= 0;
			wea <= "1";
			counter <= counter + 1;
		else
			b_counter <= b_counter + 1;
			wea <= "0";
		end if;
		dina(b_counter) <= sdata_out;
	end if;
end process;

end Behavioral;
