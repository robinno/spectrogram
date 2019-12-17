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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY mem_interface_beeld IS
	PORT (
		--reading side:
		VGA_clk      : IN STD_LOGIC;
 
		VGA_X        : IN INTEGER RANGE 0 TO 1056;
		VGA_Y        : IN INTEGER RANGE 0 TO 628;
		active_video : IN STD_LOGIC;
		VGA_R        : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_G        : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_B        : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
 
		--writing side:
		new_entry_clk     : IN STD_LOGIC;
		new_entry         : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		new_entry_valid   : IN STD_LOGIC;
		new_entry_counter : IN INTEGER RANGE 0 TO 2047;
		new_entry_last    : IN STD_LOGIC
	);
END mem_interface_beeld;

ARCHITECTURE Behavioral OF mem_interface_beeld IS
 
	COMPONENT DUAL_PORT_RAM
		PORT (
			clka  : IN STD_LOGIC;
			wea   : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
			dina  : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
			clkb  : IN STD_LOGIC;
			addrb : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
			doutb : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;
 
	--array voor vertaling kleur in geheugen naar effectief kleur:
	TYPE kleurArray_type IS ARRAY (0 TO 75) OF STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL kleurArray : kleurArray_type := (
		x"000", 
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
		x"fff"
	);
 
	--some properties of the image: where is the circular buffer?
	CONSTANT Breedte      : INTEGER := 800;
	CONSTANT Hoogte       : INTEGER := 600;
	CONSTANT circ_X_start : INTEGER := 20;
	CONSTANT circ_Y_start : INTEGER := 20;
	CONSTANT circ_X_stop  : INTEGER := 665;
	CONSTANT circ_Y_stop  : INTEGER := 543;
 
	SIGNAL writeX         : INTEGER RANGE 0 TO Breedte := circ_X_start; --houdt bij waar in circulaire buffer laatst geschreven
 
	--signals for reading:
	SIGNAL LeesAdres    : STD_LOGIC_VECTOR(18 DOWNTO 0) := (OTHERS => '0');
	SIGNAL LeesData     : STD_LOGIC_VECTOR(6 DOWNTO 0) := (OTHERS => '0');
	SIGNAL RGB          : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');
	SIGNAL inCircBuffer : STD_LOGIC := '0';
	SIGNAL readX        : INTEGER RANGE 0 TO Breedte := 0;
	SIGNAL writeXvast   : INTEGER RANGE 0 TO Breedte := circ_X_start; --houdt bij waar in circulaire buffer, vast voor 1 frame
 
	--signals for writing: 
	SIGNAL writeAdres          : STD_LOGIC_VECTOR(18 DOWNTO 0) := (OTHERS => '0');
	SIGNAL writeData           : STD_LOGIC_VECTOR(6 DOWNTO 0) := (OTHERS => '0');
	SIGNAL wea                 : STD_LOGIC_VECTOR(0 DOWNTO 0) := (OTHERS => '0');
BEGIN
	-------------
	-- READING --
	-------------
 
	inCircBuffer <= '1' WHEN 	(VGA_X >= circ_X_start) AND (VGA_X <= circ_X_stop) AND
								(VGA_Y >= circ_Y_start) AND (VGA_Y <= circ_Y_stop)
						ELSE '0';
 
	-- writeXvast is de writeX die enkel wordt geupdate bij het begin van ieder frame, om te voorkomen
	-- dat de update gebeurt terwijl het frame aan het opbouwen is (dan krijg je een vreemd effect op het scherm)
	writeXvast <= (writeX + 1) WHEN (VGA_Y = 0);
 
	readX <= (VGA_X + writeXvast - circ_X_stop - 2) WHEN (VGA_X >= (circ_X_stop - (writeXvast - circ_X_start))) ELSE
	         (VGA_X + writeXvast - circ_X_start);
 
 
	LeesAdres <= 	STD_LOGIC_VECTOR(to_unsigned(VGA_Y * Breedte + readX, 19)) WHEN inCircBuffer = '1' ELSE
					STD_LOGIC_VECTOR(to_unsigned(VGA_Y * Breedte + VGA_X, 19)) WHEN active_video = '1' ELSE
					(OTHERS => '0');
 
	RGB <= 	kleurArray(to_integer(unsigned(leesData))) WHEN active_video = '1' ELSE
			(OTHERS => '0');
 
	VGA_R <= RGB(11 DOWNTO 8);
	VGA_G <= RGB(7 DOWNTO 4);
	VGA_B <= RGB(3 DOWNTO 0);

	-------------
	-- WRITING --
	-------------
 
	PROCESS (new_entry_clk, writeX, new_entry)
		VARIABLE writeY : INTEGER RANGE 0 TO Hoogte := circ_Y_start;
	BEGIN
		IF (rising_edge(new_entry_clk)) THEN
			IF (new_entry_valid = '1') THEN
				wea <= (OTHERS => '1');
 
				writeY := circ_Y_stop - ((circ_Y_stop - circ_Y_start) * new_entry_counter) / 1024;
			ELSE
				wea <= (OTHERS => '0');
			END IF;
 
			IF (new_entry_last = '1') THEN
				writeY := circ_Y_start;
				IF (writeX >= circ_X_stop) THEN
					writeX <= circ_X_start;
				ELSE
					writeX <= writeX + 1;
				END IF;
			END IF;
		END IF;
		writeAdres <= STD_LOGIC_VECTOR(to_unsigned(writeX + writeY * Breedte, 19));
		writeData  <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(new_entry)) * 75) / 127, 7)); --map range 0-127 to 0-75
	END PROCESS;
 
 
	----------------------
	-- MEMORY COMPONENT --
	----------------------
 
	DUAL_PORT_RAM_inst : DUAL_PORT_RAM
	PORT MAP(
		clka  => new_entry_clk, 
		wea   => wea, 
		addra => writeAdres, 
		dina  => writeData, 
 
		clkb  => VGA_clk, 
		addrb => LeesAdres, 
		doutb => LeesData
		);

END Behavioral;