----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/07/2019 10:17:51 AM
-- Design Name: 
-- Module Name: fft_controller - Behavioral
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

entity fft_controller is
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
end fft_controller;

architecture Behavioral of fft_controller is

	COMPONENT fft_ip
	  PORT (
		aclk : IN STD_LOGIC;
		aresetn : IN STD_LOGIC;
		s_axis_config_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0); --FWD_INV (bit0) '1' => forward fft
		s_axis_config_tvalid : IN STD_LOGIC; --Asserted by the external master to signal that it is able to provide data.
		s_axis_config_tready : OUT STD_LOGIC; --Asserted by the core to signal that it is able to accept data.
		s_axis_data_tdata : IN STD_LOGIC_VECTOR(tdata_width-1 DOWNTO 0); --input data
		s_axis_data_tvalid : IN STD_LOGIC;   --Asserted by the upstream master to signal it is able to provide data (redundant)
		s_axis_data_tready : OUT STD_LOGIC; --Used by the core to signal that it is ready to accept data
		s_axis_data_tlast : IN STD_LOGIC; --Asserted by the upstream master on the last sample of the frame
		m_axis_data_tdata : OUT STD_LOGIC_VECTOR(tdata_width-1 DOWNTO 0);--output data
		m_axis_data_tuser : OUT STD_LOGIC_VECTOR(23 DOWNTO 0); --blk_exp 20:16 ; XK_index 10:0
		m_axis_data_tvalid : OUT STD_LOGIC; --Asserted by the core to signal that it is able to provide sample data 
		m_axis_data_tlast : OUT STD_LOGIC; --Asserted  by the core on the last sample of the frame 
		m_axis_status_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);--BLk_EXP			(redundant)
		m_axis_status_tvalid : OUT STD_LOGIC; --Asserted by the core to signal that it is able to provide status data
		event_frame_started : OUT STD_LOGIC;
		event_tlast_unexpected : OUT STD_LOGIC;
		event_tlast_missing : OUT STD_LOGIC;
		event_data_in_channel_halt : OUT STD_LOGIC
	  );
	END COMPONENT;
	
	COMPONENT multiplier
	  PORT (
		CLK : IN STD_LOGIC;
		A : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		P : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	  );
	END COMPONENT;
	  
	COMPONENT window
	  PORT (
		clka : IN STD_LOGIC;
		ena : IN STD_LOGIC;
		addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
		douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	  );
	END COMPONENT;
	
	--signals for window and multiplier
	signal wind_dout : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal mult_out : STD_LOGIC_VECTOR(23 DOWNTO 0);
	
	--Signals for fft_ip
    -- signal s_aresetn :  STD_LOGIC := '1';
    signal s_s_axis_tready :  STD_LOGIC; --connected to 's_axis_config_tready' and 's_s_axis_data_tready'
    signal data_tlast :  STD_LOGIC := '0';
	signal data_tlast_prev1 :  STD_LOGIC := '0';
	signal data_tlast_prev2 :  STD_LOGIC := '0';
	signal data_tlast_prev3 :  STD_LOGIC := '0';
	signal TEST : STD_LOGIC;	
    signal s_m_axis_data_tuser :  STD_LOGIC_VECTOR(23 downto 0);
    signal s_event_tlast_unexpected :  STD_LOGIC;
    signal s_event_tlast_missing :  STD_LOGIC;
    signal s_event_data_in_channel_halt :  STD_LOGIC;
	signal s_din_valid : STD_LOGIC;
	signal conf_valid : STD_LOGIC := '0';
	
	signal fifo_full: STD_LOGIC := '0';
	signal fifo_read: STD_LOGIC := '0';
	signal fifo_read_prev1: STD_LOGIC := '0';
	signal fifo_read_prev2: STD_LOGIC := '0';
	signal blk_exp: natural range 0 to (2**blk_exp_length) -1;
	signal fft_dout: STD_LOGIC_VECTOR(din_width-1 downto 0);
	signal counter_fft : integer range 0 to transform_length-1;
	signal s_adr : STD_LOGIC_VECTOR(10 downto 0);
	
	signal temp: STD_LOGIC_VECTOR(din_width-1 downto 0);
	
begin
	INST_fft_ip : fft_ip
	  PORT MAP (
		aclk => clk,
		aresetn => '1',--s_aresetn,
		s_axis_config_tdata => x"01",
		s_axis_config_tvalid => conf_valid,
		s_axis_config_tready => s_s_axis_tready,
		s_axis_data_tdata(tdata_width-1 downto din_width) => (others => '0'),
		s_axis_data_tdata(din_width-1 downto 0) => mult_out,
		s_axis_data_tvalid => s_din_valid,
		s_axis_data_tready => open,
		s_axis_data_tlast => data_tlast,
		m_axis_data_tdata(tdata_width-1 downto din_width) => temp,--liever open maar werkt niet
		m_axis_data_tdata(din_width-1 downto 0) => fft_dout,
		m_axis_data_tuser => s_m_axis_data_tuser,
		m_axis_data_tvalid => dout_valid,
		m_axis_data_tlast => dout_last,
		m_axis_status_tdata => open,
		m_axis_status_tvalid => open,
		event_frame_started => open,
		event_tlast_unexpected => s_event_tlast_unexpected,
		event_tlast_missing => s_event_tlast_missing,
		event_data_in_channel_halt => s_event_data_in_channel_halt
	  );	
	
	blk_exp <= to_integer(unsigned(s_m_axis_data_tuser(20 downto 16) ));
	--dout <= shift_left(unsigned(fft_dout), blk_exp);
	dout <= fft_dout(dout_width-1 downto 0);
	dout_counter <= to_integer(unsigned(s_m_axis_data_tuser(10 downto 0) ));
	
	INST_window : window
	  PORT MAP (
		clka => clk,
		ena => fifo_read,
		addra => s_adr,
		douta => wind_dout
	  );
	
	INST_multiplier : multiplier
	  PORT MAP (
		CLK => clk,
		A => dout_ram,
		B => wind_dout,
		P => mult_out
	  );
	
	process(clk) --fifo_full
	begin
		if(rising_edge(clk))then
			if(counter_in < transform_length-1) then
				fifo_full <= '0';
			else
				fifo_full <= '1';
			end if;
		end if;
	end process;
	
	process(clk) --conf_valid maken
	begin
		if(rising_edge(clk))then
			if(counter_in = transform_length-5) then
				conf_valid <= '1';
			else
				conf_valid <= '0';
			end if;
		end if;
	end process;
	
	process(clk)
	begin
		if(rising_edge(clk))then
			s_din_valid <= fifo_read_prev1;
			fifo_read_prev1 <= fifo_read_prev2;
			fifo_read_prev2 <= fifo_read;

			data_tlast <= data_tlast_prev3;
			data_tlast_prev3 <= data_tlast_prev2;
			data_tlast_prev2 <= data_tlast_prev1;
			
			if(fifo_full = '1') then
				if( counter_fft = 0) then -- eerste sample
					counter_fft <= 1;
					fifo_read <= '1';
				else --volgende samples
					fifo_read <= '1';
					counter_fft <= counter_fft + 1;
				end if;
				data_tlast_prev1 <= '0';
			else --fifo full = 0
				if(counter_fft > 0 and counter_fft < transform_length-1) then --laatste samples
					fifo_read <= '1';
					counter_fft <= counter_fft + 1;
					if(counter_fft = transform_length-2)then --op counter_fft = 2046 maak data_tlast_prev1 = 1
						data_tlast_prev1 <= '1';
					else
						data_tlast_prev1 <= '0';
					end if;
				else -- laatste sample is genomen uit fifo
					fifo_read <= '0';
					counter_fft <= 0;
					data_tlast_prev1 <= '0';
				end if;
			end if;
		end if;
	end process;
	ena_ram <= fifo_read;
	s_adr <= std_logic_vector(to_unsigned(counter_fft, 11));
	addr_ram <= s_adr;	


end Behavioral;