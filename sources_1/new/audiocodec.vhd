----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2019 10:45:08
-- Design Name: 
-- Module Name: project_hdl - Behavioral
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
--test

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity audiocodec is
	Port(i2c_addr : out std_logic_vector(1 downto 0);
		 m_clk : out std_logic;
		 b_clk : out std_logic;
		 lr_clk : out std_logic;
		 sdata : in std_logic;
		 sdata_out : out std_logic;
		 sda : out std_logic;
		 scl : out std_logic;
		 clk_in : in std_logic);
end audiocodec;

architecture Behavioral of audiocodec is

component audio_if
	port(clk_100M_in : in std_logic;

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

signal sample_clk : std_logic;
signal sample_l, sample_r, sample_l_in, sample_r_in : std_logic_vector(23 downto 0);

begin

inst_audio_if: audio_if
port map(clk_100M_in => clk_in,
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
		 sample_r_in => sample_r,
		 sdata_out => sdata_out);

end Behavioral;