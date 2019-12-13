----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 11/04/2014 09:47:43 AM
-- Design Name:
-- Module Name: audio_if - Behavioral
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
--test
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

entity audio_if is
    Port (
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
        sdata_out: out std_logic
	);
end audio_if;

architecture Behavioral of audio_if is

	-- component clk_wiz_1
		-- port(-- Clock in ports
			-- clk_in1           : in     std_logic;
			-- Clock out ports
			-- clk_100M          : out    std_logic;
			-- clk_12M288          : out    std_logic;
			-- Status and control signals
			-- reset             : in     std_logic;
			-- locked            : out    std_logic
		-- );
	-- end component;

	ATTRIBUTE SYN_BLACK_BOX : BOOLEAN;
	-- ATTRIBUTE SYN_BLACK_BOX OF clk_wiz_1 : COMPONENT IS TRUE;
	ATTRIBUTE BLACK_BOX_PAD_PIN : STRING;
	-- ATTRIBUTE BLACK_BOX_PAD_PIN OF clk_wiz_1 : COMPONENT IS "clk_in1,clk_100M,clk_12M288,reset,locked";

	component adau1761_if
		Port (
			lr_clk : in STD_LOGIC;
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
	end component;

	-- signal s_clk_12M288 : std_logic;
	
	signal clk_12m288 : std_logic;

    signal s_sample_l_in: std_logic_vector (23 downto 0);
    signal s_sample_r_in: std_logic_vector (23 downto 0);
    signal s_sdata_out: std_logic;

	signal s_lr_clk_cntr : integer range 0 to 256;
	signal s_b_clk_cntr : integer range 0 to 64;
	signal s_lr_clk_en : std_logic;
	signal s_b_clk_en : std_logic;
	signal s_lr_clk : std_logic;
	signal s_b_clk : std_logic;
	signal s_b_clk_real : std_logic;
	signal s_b_clk_real_en : std_logic;

	signal s_sample_l : std_logic_vector(23 downto 0);
	signal s_sample_r : std_logic_vector(23 downto 0);
	signal s_sample_clk : std_logic;

	signal s_sda : std_logic;
	signal s_scl : std_logic;
	signal s_i2c_clk : std_logic;

	type i2c_state is (st_init, st_start, st_start_2, st_send_vector_1, st_send_vector_2, st_send_vector_3, st_stop, st_stop_2, st_stop_3, st_stop_4);
	signal s_i2c_state : i2c_state;

	signal s_i2c_cntr : integer range 0 to 36;
	signal s_i2c_reg_cntr : integer range 0 to 100;
	signal s_i2c_clk_cntr : integer range 0 to 1000000000;
	signal s_i2c_clk_en : std_logic;

	

type i2c_reg_array is array (0 to 69) of std_logic_vector(0 to 35);
constant s_i2c_vector : i2c_reg_array := (      
    (X"70" & "0" & x"40" & "0" & x"00" & "0" & x"01" & "0"),
    (X"70" & "0" & x"40" & "0" & x"01" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"08" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"09" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"0A" & "0" & x"01" & "0"),
    (X"70" & "0" & x"40" & "0" & x"0B" & "0" & x"05" & "0"),
    (X"70" & "0" & x"40" & "0" & x"0C" & "0" & x"01" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"0D" & "0" & x"05" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"0E" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"0F" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"10" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"11" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"12" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"13" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"14" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"15" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"16" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"17" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"18" & "0" & x"00" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"19" & "0" & x"03" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"1A" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"1B" & "0" & x"00" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"1C" & "0" & x"21" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"1D" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"1E" & "0" & x"41" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"1F" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"20" & "0" & x"03" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"21" & "0" & x"09" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"22" & "0" & x"00" & "0"),                                                        
    (X"70" & "0" & x"40" & "0" & x"23" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"24" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"25" & "0" & x"E7" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"26" & "0" & x"E7" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"27" & "0" & x"00" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"28" & "0" & x"00" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"29" & "0" & x"03" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"2A" & "0" & x"03" & "0"),                                                          
    (X"70" & "0" & x"40" & "0" & x"2B" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"2C" & "0" & x"00" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"2D" & "0" & x"AA" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"2F" & "0" & x"AA" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"30" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"31" & "0" & x"08" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"36" & "0" & x"03" & "0"),  
    (X"70" & "0" & x"40" & "0" & x"C0" & "0" & x"7F" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"C1" & "0" & x"7F" & "0"),
    (X"70" & "0" & x"40" & "0" & x"C2" & "0" & x"7F" & "0"),
    (X"70" & "0" & x"40" & "0" & x"C3" & "0" & x"7F" & "0"),
    (X"70" & "0" & x"40" & "0" & x"C4" & "0" & x"01" & "0"),
    (X"70" & "0" & x"40" & "0" & x"C6" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"C7" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"C8" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"C9" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"D0" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"D1" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"D2" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"D3" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"D4" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"E9" & "0" & x"10" & "0"),
    (X"70" & "0" & x"40" & "0" & x"EA" & "0" & x"00" & "0"),
    (X"70" & "0" & x"40" & "0" & x"EB" & "0" & x"7F" & "0"),                                                                                                              
    (X"70" & "0" & x"40" & "0" & x"F2" & "0" & x"01" & "0"),                                                         
    (X"70" & "0" & x"40" & "0" & x"F3" & "0" & x"01" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"F4" & "0" & x"00" & "0"),  
    (X"70" & "0" & x"40" & "0" & x"F5" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"F6" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"F7" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"F8" & "0" & x"00" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"F9" & "0" & x"7F" & "0"), 
    (X"70" & "0" & x"40" & "0" & x"FA" & "0" & x"03" & "0")						
    );

begin

	-- INST_ILA_0 : ila_0
		-- PORT MAP (
			-- clk => s_sample_clk,
			-- probe1(0) => s_lr_clk_en,
			-- probe1(1) => s_b_clk_en,
			-- probe1(2) => s_b_clk_real,
			-- probe1(3) => s_b_clk_real_en,
			-- probe1(4) => sdata,
			-- probe1(5) => s_sda,
			-- probe1(6) => s_scl,
			-- probe1(15 downto 7) => (others => '0'),
			-- probe2(0) => s_lr_clk_en,
			-- probe2(15 downto 1) => (others => '0'),
			-- probe1 => s_sample_l,
			-- probe0 => s_sample_r
		-- );

	lr_clk <= s_lr_clk_en;
	b_clk <= s_b_clk_en;
	m_clk <= s_clk_12M288;

	INST_ADAU1761 : adau1761_if
		Port map(
			lr_clk => s_lr_clk_en,
			b_clk => s_b_clk_real,
			clk_12M288 => clk_12M288,
			
		    b_clk_en => s_b_clk_real_en,
			sdata => sdata,
			sample_l => s_sample_l,
			sample_r => s_sample_r,
			sample_clk => s_sample_clk,

            sample_l_in => s_sample_l_in,
            sample_r_in => s_sample_r_in,
            sdata_out => s_sdata_out
		);

	sample_clk <= s_sample_clk;
	sample_l <= s_sample_l;
	sample_r <= s_sample_r;
    s_sample_l_in <= sample_l_in;
    s_sample_r_in <= sample_r_in;
    sdata_out <= s_sdata_out; 

	-- INST_AUDIO_SAMPLE_CLK : clk_wiz_1
		-- port map (
			-- Clock in ports
			-- clk_in1 => clk_100M_in,
			-- Clock out ports
			-- clk_100M => open,
			-- clk_12M288 => s_clk_12M288,
			-- Status and control signals
			-- reset => '0',
			-- locked => open
		-- );

	-- generate lr_clk and b_clk
	process(s_clk_12M288)
	begin
		if rising_edge(s_clk_12M288) then
			if( s_lr_clk_cntr < 255) then
				s_lr_clk_cntr <= s_lr_clk_cntr + 1;
			else
				s_lr_clk_cntr <= 0;
			end if;

			if( s_b_clk_cntr < 3) then
				s_b_clk_cntr <= s_b_clk_cntr + 1;
			else
				s_b_clk_cntr <= 0;
			end if;

			if(s_lr_clk_cntr < 128) then
				s_lr_clk_en <= '0';
			else
				s_lr_clk_en <= '1';
			end if;

			if(s_b_clk_cntr < 2) then
				s_b_clk_en <= '0';
			else
				s_b_clk_en <= '1';
			end if;

			if(s_b_clk_cntr = 1) then
				s_b_clk_real_en <= '1';
			else
				s_b_clk_real_en <= '0';
			end if;
		end if;
	end process;

	BUFGCE_B_CLK_inst : BUFGCE
		port map (
			O => s_b_clk_real,   -- 1-bit output: Clock output
			CE => s_b_clk_real_en, -- 1-bit input: Clock enable input for I0
			I => s_clk_12M288   -- 1-bit input: Primary clock
		);

	-- I2C state machine
	process(s_i2c_clk)
	begin
		if rising_edge(s_i2c_clk) then
			s_scl <= s_scl;
			s_sda <= s_sda;
			s_i2c_cntr <= s_i2c_cntr;
			s_i2c_reg_cntr <= s_i2c_reg_cntr;

			case(s_i2c_state) is
				when (st_init) =>
					s_sda <= '1';
					s_scl <= '1';
					s_i2c_cntr <= 0;
					s_i2c_state <= st_start;

				when st_start =>
					s_sda <= '0';
					s_scl <= '1';
					s_i2c_state <= st_start_2;

				when st_start_2 =>
					s_sda <= s_i2c_vector(s_i2c_reg_cntr)(s_i2c_cntr);
					s_scl <= '0';
					s_i2c_state <= st_send_vector_1;

				when st_send_vector_1 =>
					s_scl <= '1';
					s_sda <= s_sda;
					s_i2c_cntr <= s_i2c_cntr + 1;
					s_i2c_state <= st_send_vector_2;

				when st_send_vector_2 =>
					s_scl <= '0';
					s_i2c_state <= st_send_vector_3;

				when st_send_vector_3 =>
					s_sda <= s_i2c_vector(s_i2c_reg_cntr)(s_i2c_cntr);
					if (s_i2c_cntr < 35) then
						s_i2c_state <= st_send_vector_1;
					else
						s_i2c_state <= st_stop;
					end if;

				when st_stop =>
					s_scl <= '1';
					s_sda <= '0';
					s_i2c_state <= st_stop_2;

				when st_stop_2 =>
					s_scl <= '0';
					s_sda <= '0';
					s_i2c_state <= st_stop_3;

				when st_stop_3 =>
                    s_scl <= '1';
                    s_sda <= '0';
                    s_i2c_state <= st_stop_4;

                when st_stop_4 =>
                    s_scl <= '1';
                    s_sda <= '1';
                    if(s_i2c_reg_cntr < 69) then
						s_i2c_state <= st_init;
						s_i2c_reg_cntr <= s_i2c_reg_cntr + 1;
					else
						s_i2c_state <= st_stop_4;
					end if;

				when others =>
					s_i2c_state <= st_init;

			end case;
		end if;
	end process;

	sda <= s_sda;
	scl <= s_scl;
	i2c_addr <= (others => '0');

	-- i2c clock
	process(clk_100M_in)
	begin
		if rising_edge(clk_100M_in) then
			if s_i2c_clk_cntr < 1000 then
				s_i2c_clk_cntr <= s_i2c_clk_cntr + 1;
				s_i2c_clk_en <= '0';
			else
				s_i2c_clk_cntr <= 0;
				s_i2c_clk_en <= '1';
			end if;
		end if;
	end process;

	BUFGCE_I2C_CLK_inst : BUFGCE
		port map (
			O => s_i2c_clk,   -- 1-bit output: Clock output
			CE => s_i2c_clk_en, -- 1-bit input: Clock enable input for I0
			I => clk_100M_in   -- 1-bit input: Primary clock
		);

end Behavioral;