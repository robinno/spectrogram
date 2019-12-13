----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2019 14:00:36
-- Design Name: 
-- Module Name: mem_interface_beeld - Behavioral
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

entity mem_interface_beeld is
	Port ( 
		--reading side:
		VGA_clk: in std_logic;
	
		VGA_X: in integer range 0 to 1056;
		VGA_Y: in integer range 0 to 628;
		active_video: in std_logic;
		VGA_R: out std_logic_vector(3 downto 0);
		VGA_G: out std_logic_vector(3 downto 0);
		VGA_B: out std_logic_vector(3 downto 0);
		
		--writing side:
		new_entry_clk: in std_logic;
		new_entry: in std_logic_vector(6 downto 0);
		new_entry_valid: in std_logic;
		new_entry_counter: in integer range 0 to 2047;
		new_entry_last: in std_logic
	);
end mem_interface_beeld;

architecture Behavioral of mem_interface_beeld is
	
	COMPONENT DUAL_PORT_RAM
		PORT (
			clka : IN STD_LOGIC;
			wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
			dina : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
			clkb : IN STD_LOGIC;
			addrb : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
			doutb : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;
	
	--array voor vertaling kleur in geheugen naar effectief kleur:
	type kleurArray_type is array (0 to 75) of std_logic_vector(11 downto 0);
	signal kleurArray : kleurArray_type := (x"000",
											x"001",
											x"002",
											x"003",
											x"004",
											x"005",
											x"006",
											x"007",
											x"008",
											x"009",
											x"00a",
											x"00b",
											x"00c",
											x"00d",
											x"00e",
											x"00f",
											x"10f",
											x"20f",
											x"30f",
											x"40f",
											x"50f",
											x"60f",
											x"70f",
											x"80f",
											x"90f",
											x"a0f",
											x"b0f",
											x"c0f",
											x"d0f",
											x"e0f",
											x"f0f",
											x"f0e",
											x"f0d",
											x"f0c",
											x"f0b",
											x"f0a",
											x"f09",
											x"f08",
											x"f07",
											x"f06",
											x"f05",
											x"f04",
											x"f03",
											x"f02",
											x"f01",
											x"f00",
											x"f10",
											x"f20",
											x"f30",
											x"f40",
											x"f50",
											x"f60",
											x"f70",
											x"f80",
											x"f90",
											x"fa0",
											x"fb0",
											x"fc0",
											x"fd0",
											x"fe0",
											x"ff0",
											x"ff1",
											x"ff2",
											x"ff3",
											x"ff4",
											x"ff5",
											x"ff6",
											x"ff7",
											x"ff8",
											x"ff9",
											x"ffa",
											x"ffb",
											x"ffc",
											x"ffd",
											x"ffe",
											x"fff");
	
	--some properties of the image: where is the circular buffer?
	constant Breedte: integer := 800;
	constant Hoogte: integer := 600;
	constant circ_X_start: integer := 20;
	constant circ_Y_start: integer := 20;
	constant circ_X_stop: integer := 665;
	constant circ_Y_stop: integer := 543;
	
	signal writeX: integer range 0 to Breedte := circ_X_start; --houdt bij waar in circulaire buffer.
	
	--signals for reading:
	signal LeesAdres: std_logic_vector(18 downto 0) := (others => '0');
	signal LeesData: std_logic_vector(6 downto 0) := (others => '0');
	signal RGB: std_logic_vector(11 downto 0) := (others => '0');
	signal inCircBuffer: std_logic := '0';
	signal readX: integer range 0 to Breedte := 0;
	
	--signals for writing:
	signal new_entry_last_edge: std_logic := '0';
	
	signal writeAdres: std_logic_vector(18 downto 0) := (others => '0');
	signal writeData: std_logic_vector(6 downto 0) := (others => '0');
	signal wea: std_logic_vector(0 downto 0) := (others => '0');
begin

	--READING:
	inCircBuffer <= '1' when 	(VGA_X > circ_X_start) and (VGA_X < circ_X_stop) and
								(VGA_Y > circ_Y_start) and (VGA_Y < circ_Y_stop)
						else '0';
	
	--TODO: leesAdres aanpassen adhv inCircBuffer
	readX 	<= 	(VGA_X + writeX - circ_X_start) when (VGA_X + writeX - circ_X_start) < circ_X_stop else
				(VGA_X - (writeX - circ_X_start));
			
	
	LeesAdres 	<= 	--std_logic_vector(to_unsigned(VGA_Y * Breedte + readX, 19)) when inCircBuffer = '1' else
					std_logic_vector(to_unsigned(VGA_Y * Breedte + VGA_X, 19)) when active_video = '1' else
					(others => '0');
					
	RGB 		<= 	kleurArray(to_integer(unsigned(leesData))) when active_video = '1' else
					(others => '0');
					
	VGA_R <= RGB(11 downto 8);
	VGA_G <= RGB(7 downto 4);
	VGA_B <= RGB(3 downto 0);

	-- WRITING:
	process(new_entry_clk) --edge detection op new_entry_last
		variable prev_new_entry_last: std_logic := '0';
	begin
		if(rising_edge(new_entry_clk)) then
			if(prev_new_entry_last = '0' and new_entry_last = '1') then
				new_entry_last_edge <= '1';
			else 
				new_entry_last_edge <= '0';
			end if;
			
			prev_new_entry_last := new_entry_last;
		end if;
	end process;
	
	process(new_entry_clk, writeX, new_entry)
		variable writeY: integer range 0 to Hoogte := circ_Y_start;
	begin
		if(rising_edge(new_entry_clk)) then
			if(new_entry_valid = '1') then
				wea <= (others => '1');
				
				writeY := circ_Y_start + ((circ_Y_stop-circ_Y_start) * new_entry_counter) / 2048;
			else
				wea <= (others => '0');
			end if;
			
			if(new_entry_last_edge = '1') then
				writeY := circ_Y_start;
				if(writeX >= circ_X_stop) then
					writeX <= circ_X_start; 
				else
					writeX <= writeX + 1;
				end if;
			end if;
			
			
		end if;
		writeAdres 	<= 	std_logic_vector(to_unsigned(writeX + writeY * Breedte, 19));
		writeData	<= 	'0' & new_entry(6 downto 1);--std_logic_vector(to_unsigned((to_integer(unsigned(new_entry)) * 75) / 127, 7)); --map range 0-127 to 0-75
						--TEST: => TODO
	end process;
	
	--TESTING:
	-- --TODO
	-- process(new_entry_clk)
		-- variable teller : integer range 0 to 75 := 0;
		
		-- variable X: integer range 0 to Breedte := circ_X_start;
		-- variable Y: integer range 0 to Hoogte := circ_Y_start;
	-- begin
		-- if rising_edge(new_entry_clk) then			

			-- Y  := Y + 1;
			
			-- --randgevallen
			-- if (Y >= circ_Y_stop) then
				-- Y := circ_Y_start;
				-- X := X + 1;
				-- teller := teller + 1;
			-- end if;
			
			-- if (X >= circ_X_stop) then
				-- X := circ_X_start;
				-- teller := 0;
			-- end if;
			
			-- if(teller >= 75) then
				-- teller := 0;
			-- end if;
			
		-- end if;
		
		-- writeAdres 	<= std_logic_vector(to_unsigned(X + Y * Breedte, 19));
		-- writeData 	<= std_logic_vector(to_unsigned(teller, 7));
	-- end process;
	
	

	--MEMORY COMPONENT:
	DUAL_PORT_RAM_inst: DUAL_PORT_RAM
		port map(
			clka => new_entry_clk,
			wea => wea,
			addra => writeAdres,
			dina => writeData,
			
			clkb => VGA_clk,
			addrb => LeesAdres,
			doutb => LeesData
		);

end Behavioral;
