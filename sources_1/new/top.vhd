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

	component Beeld is
		Port ( 
			VGA_clk: in std_logic;
		
			VGA_Vsync: out std_logic;
			VGA_Hsync: out std_logic;
			VGA_R: out std_logic_vector(3 downto 0);
			VGA_G: out std_logic_vector(3 downto 0);
			VGA_B: out std_logic_vector(3 downto 0);
			
					
			new_entry_clk: in std_logic;
			new_entry: in std_logic
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
	
	
	signal VGA_clk: std_logic := '0';
	signal FFT_clk: std_logic := '0';
	signal Audio_clk: std_logic := '0';
	
	signal sample_clk : std_logic;
	signal sample_l, sample_r, sample_l_in, sample_r_in : std_logic_vector(23 downto 0);
	
	signal output_FFT: std_logic := '0'; --TODO
begin

	
	clk_deler : clk_wiz_0
		port map ( 
			clk_96MHz => open,
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
			new_entry => output_FFT
		);
		
	Audio_inst: audio_if
		port map(
		clk_100M_in => sys_clk,
		s_clk_12M288 => Audio_clk,
		m_clk => m_clk,
		lr_clk => lr_clk,
		b_clk => b_clk,
		sdata => sdata,
		sda => sda,
		scl => scl,
		i2c_addr => i2c_addr,
		sample_clk => sample_clk,
		sample_l => sample_l,
		sample_r => sample_r,
		sample_l_in => sample_l,
		sample_r_in => sample_r,   -- loopback
		sdata_out => sdata_out);
	
end Behavioral;
