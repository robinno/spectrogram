----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 31.10.2019 13:39:33
-- Design Name:
-- Module Name: Beeld - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY Beeld IS
	PORT (
		VGA_clk   : IN STD_LOGIC;
 
		VGA_Vsync : OUT STD_LOGIC;
		VGA_Hsync : OUT STD_LOGIC;
		VGA_R     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_G     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		VGA_B     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
 
		--writing side:
		new_entry_clk     : IN STD_LOGIC;
		new_entry         : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		new_entry_valid   : IN STD_LOGIC;
		new_entry_counter : IN INTEGER RANGE 0 TO 2047;
		new_entry_last    : IN STD_LOGIC
	);
END Beeld;

ARCHITECTURE Behavioral OF Beeld IS

	COMPONENT VGA_driver IS --gekozen voor 800x600
		PORT (
			clk               : IN STD_LOGIC;

			Flag_Active_Video : OUT STD_LOGIC;
			VGA_X             : OUT INTEGER RANGE 0 TO 1056; --horizontale positie
			VGA_Y             : OUT INTEGER RANGE 0 TO 628; --verticale positie
 
			Vsync             : OUT STD_LOGIC;
			Hsync             : OUT STD_LOGIC
		);
	END COMPONENT;
 
	COMPONENT mem_interface_beeld IS
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
	END COMPONENT;

	SIGNAL s_VGA_X        : INTEGER RANGE 0 TO 1056;
	SIGNAL s_VGA_Y        : INTEGER RANGE 0 TO 628;
	SIGNAL s_active_video : STD_LOGIC;

BEGIN
	-----------------
	-- Components --
	-----------------

	VGA_driver_inst : VGA_driver
	PORT MAP(
		clk               => VGA_clk, 

		Flag_Active_Video => s_active_video, 
		VGA_X             => s_VGA_X, --horizontale positie
		VGA_Y             => s_VGA_Y, --verticale positie
 
		Vsync             => VGA_Vsync, 
		Hsync             => VGA_Hsync
	);
 
	mem_interface_beeld_inst : mem_interface_beeld
	PORT MAP(
		-- reading side
		VGA_clk      => VGA_clk, 
		VGA_X        => s_VGA_X, 
		VGA_Y        => s_VGA_Y, 
		active_video => s_active_video, 
		VGA_R        => VGA_R, 
		VGA_G        => VGA_G, 
		VGA_B        => VGA_B, 
 
		--writing side
		new_entry_clk     => new_entry_clk, 
		new_entry         => new_entry, 
		new_entry_valid   => new_entry_valid, 
		new_entry_counter => new_entry_counter, 
		new_entry_last    => new_entry_last
	);
END Behavioral;