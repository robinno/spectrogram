----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 11/03/2014 09:16:24 PM
-- Design Name:
-- Module Name: adau1761_if - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity adau1761_if is
    Port ( lr_clk : in STD_LOGIC;
           b_clk : in STD_LOGIC;
		   clk_12M288 : in std_logic;
		   b_clk_en : in std_logic;
           sdata : in STD_LOGIC;
           sample_l : out STD_LOGIC_VECTOR (23 downto 0);
           sample_r : out STD_LOGIC_VECTOR (23 downto 0);
		   sample_clk : out std_logic;

           sample_l_in: in STD_LOGIC_VECTOR (23 downto 0);
           sample_r_in: in STD_LOGIC_VECTOR (23 downto 0);

           sdata_out: out STD_LOGIC
	);
end adau1761_if;

architecture Behavioral of adau1761_if is

	signal s_sdata_cntr : integer range 0 to 64;
	signal s_lr_clk : std_logic;
	signal s_sample_l : std_logic_vector(23 downto 0);
	signal s_sample_r : std_logic_vector(23 downto 0);
	signal s_sample_l_out : std_logic_vector(23 downto 0);
	signal s_sample_r_out : std_logic_vector(23 downto 0);
	signal s_sample_clk_en : std_logic;

    signal s_sample: std_logic_vector(63 downto 0) := (others => '0');
	signal s_sample_clk_en_comb : std_logic;

begin

	-- read data
	process(b_clk)
	begin
		if rising_edge(b_clk) then
			s_lr_clk <= lr_clk;

			if s_lr_clk = '1' and lr_clk = '0' then
				s_sdata_cntr <= 0;
				s_sample_l_out <= s_sample_l;
				s_sample_r_out <= s_sample_r;
				s_sample_clk_en <= '1';

                s_sample <= sample_l_in & x"00" & sample_r_in & x"00";
			else
				s_sdata_cntr <= s_sdata_cntr + 1;
				s_sample_l_out <= s_sample_l_out;
				s_sample_r_out <= s_sample_r_out;
				s_sample_clk_en <= '0';

                s_sample <= s_sample(s_sample'high-1 downto 0) & '0';
			end if;

			if s_sdata_cntr < 25 then
				s_sample_l <= s_sample_l(22 downto 0) & sdata;
			else
				s_sample_l <= s_sample_l;
			end if;

			if s_sdata_cntr-32 < 25 then
				s_sample_r <= s_sample_r(22 downto 0) & sdata;
			else
				s_sample_r <= s_sample_r;
			end if;

		end if;
	end process;
	
	-- give data to sdata_out
	process(b_clk)
	begin
	   if(falling_edge(b_clk)) then
	       sdata_out <= s_sample(s_sample'high); 
	   end if; 
	end process;

	sample_l <= s_sample_l_out;
	sample_r <= s_sample_r_out;
	
	s_sample_clk_en_comb <= s_sample_clk_en and b_clk_en;

	-- create bufgce signal: multiplex the clock signal and clock enable signal. This operation reduces the wiring.
	-- clock and clock enable signals are driven to N sequential components by a single wire.
	BUFGCE_inst : BUFGCE
		port map (
			O => sample_clk,   -- 1-bit output: Clock output
			CE => s_sample_clk_en_comb, -- 1-bit input: Clock enable input for I0
			I => clk_12M288   -- 1-bit input: Primary clock
		);


end Behavioral;
