----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2019 11:40:26 AM
-- Design Name: 
-- Module Name: tb_fft_controller - Behavioral
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

entity tb_fft_controller is
	generic(
		transform_length: integer := 2048;
		blk_exp_length : integer := 5;
		din_width : integer := 24;
		tdata_width : integer := 48
	);
--  Port ( );
end tb_fft_controller;

architecture Behavioral of tb_fft_controller is


	component fft_controller
		generic(
			transform_length: integer := 2048;
			blk_exp_length : integer := 5;
			din_width : integer := 24;
			tdata_width : integer := 48
		);
		Port (
			clk : in STD_LOGIC;
			counter_in : in integer range 0 to transform_length-1;
			addr_ram : OUT STD_LOGIC_VECTOR(10 downto 0);
			dout_ram : IN STD_LOGIC_VECTOR(din_width-1 downto 0);
			ena_ram : out STD_LOGIC;
			dout : out STD_LOGIC_VECTOR(din_width+(2**blk_exp_length)-1 downto 0);
			dout_valid : out STD_LOGIC; --Asserted when able to provide sample data
			dout_last : out STD_LOGIC; --Asserted on the last sample of the frame.
			dout_counter: OUT integer range 0 to transform_length-1
			);
	end component;
	
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
	
	signal clk :  STD_LOGIC;
	signal clk_48k : STD_LOGIC;
	signal counter_in :  integer range 0 to transform_length-1;
	signal addr_ram :STD_LOGIC_VECTOR(10 downto 0);
	signal dout_ram :STD_LOGIC_VECTOR(din_width-1 downto 0);
	signal ena_ram :STD_LOGIC;
	signal dout :STD_LOGIC_VECTOR(din_width+(2**blk_exp_length)-1 downto 0);
	signal dout_valid :STD_LOGIC;
	signal dout_last :STD_LOGIC;
	signal dout_counter: integer range 0 to transform_length-1;
	
	constant PERIOD : time := 1ns;
	constant PERIOD_48k: time := PERIOD*2083;
	
begin

	INST_fft_controller : fft_controller
		port map(
			clk => clk,
			counter_in => counter_in,
			addr_ram => addr_ram,
			dout_ram => dout_ram,
			ena_ram => ena_ram,
			dout => dout,
			dout_valid => dout_valid,
			dout_last => dout_last,
			dout_counter=> dout_counter
		);
	
	INST_FIFO : FIFO
	  PORT MAP (
		clka => clk_48k,
		wea => "1",
		addra => (others => '0'),
		dina => (others => '0'),
		clkb => clk,
		enb => ena_ram,
		addrb => addr_ram,
		doutb => dout_ram
	  );
	
	process
	begin
		clk <= '1';
		wait for PERIOD/2;
		clk <= '0';
		wait for PERIOD/2;
	end process;
	
	process
	begin
		clk_48k <= '1';
		wait for PERIOD_48k/2;
		clk_48k <= '0';
		wait for PERIOD_48k/2;
	end process;
	
	process(clk_48k)
	begin
		if(rising_edge(clk_48k)) then
			if(counter_in < transform_length-1) then
				counter_in <= counter_in +1;
			else
				counter_in <= 0;
			end if;
		end if;
	end process;


end Behavioral;


























