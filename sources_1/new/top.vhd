----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2019 11:20:29
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
	Port ( 
		sys_clk: in std_logic;
		
		--beeld:
		VGA_Hsync : out STD_LOGIC;
		VGA_Vsync : out STD_LOGIC;
		VGA_r_out : out STD_LOGIC_VECTOR (3 downto 0);
		VGA_g_out : out STD_LOGIC_VECTOR (3 downto 0);
		VGA_b_out : out STD_LOGIC_VECTOR (3 downto 0);
		
		--audiocodec:
		i2c_addr : out std_logic_vector(1 downto 0);
		m_clk : out std_logic;
		b_clk : out std_logic;
		lr_clk : out std_logic;
		sdata : in std_logic;
		sdata_out : out std_logic;
		sda : out std_logic;
		scl : out std_logic
	);
end top;

architecture Behavioral of top is

	component clk_wiz_0
		port( 
			clk_96MHz          : out    std_logic;
			clk_VGA          : out    std_logic;
			clk_FFT          : out    std_logic;
			clk_audio          : out    std_logic;
			sys_clk           : in     std_logic
		);
	end component;
	
	component fft_controller is
		generic(
			transform_length: integer := 2048;
			blk_exp_length : integer := 5;
			din_width : integer := 24;
			dout_width: integer := 7;
			tdata_width : integer := 48
		);
		Port (
			clk : in STD_LOGIC;
			counter_in : in integer range 0 to transform_length-1;
			addr_ram : OUT STD_LOGIC_VECTOR(10 downto 0);
			dout_ram : IN STD_LOGIC_VECTOR(din_width-1 downto 0);
			ena_ram : out STD_LOGIC;
			dout : out STD_LOGIC_VECTOR(dout_width-1 downto 0);
			dout_valid : out STD_LOGIC; --Asserted when able to provide sample data
			dout_last : out STD_LOGIC; --Asserted on the last sample of the frame.
			dout_counter: out integer range 0 to transform_length-1
			);
	end component;

	component Beeld is
		Port ( 
			VGA_clk: in std_logic;
		
			VGA_Vsync: out std_logic;
			VGA_Hsync: out std_logic;
			VGA_R: out std_logic_vector(3 downto 0);
			VGA_G: out std_logic_vector(3 downto 0);
			VGA_B: out std_logic_vector(3 downto 0);
			
					
			new_entry_clk: in std_logic;
			new_entry: in std_logic_vector(6 downto 0);
			new_entry_valid: in std_logic;
			new_entry_counter: in integer range 0 to 2047;
			new_entry_last: in std_logic
		);
	end component;
	
	component audio_if is
		Port(
		clk_100M_in : in std_logic;
		s_clk_12M288 : in std_logic;

		-- adau1761 interface signals
		m_clk : out std_logic;
		lr_clk : out std_logic;
		b_clk : out std_logic;
		sdata : in std_logic;
		sda : out std_logic;
		scl : out std_logic;
		i2c_addr : out std_logic_vector(1 downto 0);


		-- audio output interface
		sample_clk : out std_logic;
		sample_l : out std_logic_vector(23 downto 0);
		sample_r : out std_logic_vector(23 downto 0);

        sample_l_in: in std_logic_vector (23 downto 0);
        sample_r_in: in std_logic_vector (23 downto 0);
        sdata_out: out std_logic);
	end component;
	
	component memory_if is
		port(clkb : in std_logic;
			 enb : in std_logic;
			 addrb : in std_logic_vector (10 downto 0);
			 doutb : out std_logic_vector (23 downto 0);
			 
			 -- van audiointerface
			 b_clk : in std_logic;
			 sdata_out : in std_logic);
	end component;
	
	--clk signalen
	signal VGA_clk: std_logic := '0';
	signal FFT_clk: std_logic := '0';
	signal Audio_clk: std_logic := '0';
	signal clk_96MHz: std_logic := '0';
	
	signal sample_clk : std_logic := '0';
	signal sample_l, sample_r, sample_l_in, sample_r_in : std_logic_vector(23 downto 0) := (others => '0');
	
	--signalen tussen FFT en Beeld
	signal output_FFT: std_logic_vector(6 downto 0) := (others => '0'); --TODO
	signal output_FFT_valid: std_logic := '0';
	signal output_FFT_counter: integer range 0 to 2047 := 0;
	signal output_FFT_last: std_logic := '0';
	
	--signalen tussen FFT en FIFO
	signal read_FIFO_ena: std_logic := '0';
	signal read_FIFO_addr: std_logic_vector(10 downto 0) := (others => '0');
	signal read_FIFO_data: std_logic_vector(23 downto 0) := (others => '0');
	signal read_FIFO_counter_in: integer range 0 to 2047 := 0;
	
	--signalen tussen audio en FIFO
	signal audio_out_clk : std_logic := '0';
	signal audio_out_data : std_logic := '0';
begin

	
	clk_deler : clk_wiz_0
		port map ( 
			clk_96MHz => clk_96MHz,
			clk_VGA => VGA_clk,
			clk_FFT => FFT_clk,
			clk_audio => Audio_clk,
			sys_clk => sys_clk
		);

	Beeld_inst: Beeld
		port map(
			VGA_clk => VGA_clk,
		
			VGA_Vsync => VGA_Vsync,
			VGA_Hsync => VGA_Hsync,
			VGA_R => VGA_r_out,
			VGA_G => VGA_g_out,
			VGA_B => VGA_b_out,
			
			
			new_entry_clk => FFT_clk,
			new_entry => output_FFT,
			new_entry_valid => output_FFT_valid,
			new_entry_counter => output_FFT_counter,
			new_entry_last => output_FFT_last
		);
		
	fft_controller_inst: fft_controller
		Port map(
			clk => FFT_clk,
			counter_in => read_FIFO_counter_in,
			addr_ram => read_FIFO_addr,
			dout_ram => read_FIFO_data,
			ena_ram => read_FIFO_ena,
			dout => output_FFT,
			dout_valid => output_FFT_valid, --Asserted when able to provide sample data
			dout_last => output_FFT_last, --Asserted on the last sample of the frame.
			dout_counter => output_FFT_counter
			);
		
	Audio_inst: audio_if
		port map(
		clk_100M_in => clk_96MHz,
		s_clk_12M288 => Audio_clk,
		m_clk => m_clk,
		lr_clk => lr_clk,
		b_clk => audio_out_clk,
		sdata => sdata,
		sda => sda,
		scl => scl,
		i2c_addr => i2c_addr,
		sample_clk => sample_clk,
		sample_l => sample_l,
		sample_r => sample_r,
		sample_l_in => sample_l,
		sample_r_in => sample_r,   -- loopback
		sdata_out => audio_out_data);
		
	inst_memory_if : memory_if
		port map(
			clkb => FFT_clk,
			enb => read_FIFO_ena,
			addrb => read_FIFO_addr,
			doutb => read_FIFO_data,
					 
			b_clk => audio_out_clk,
			sdata_out => audio_out_data
		);
	
end Behavioral;
