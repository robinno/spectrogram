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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Beeld is
	Port ( 
		VGA_clk: in std_logic;
	
		VGA_Vsync: out std_logic;
		VGA_Hsync: out std_logic;
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
end Beeld;

architecture Behavioral of Beeld is

	component VGA_driver is --gekozen voor 800x600
		Port (	clk : in STD_LOGIC;

				Flag_Active_Video: out STD_LOGIC;
				LineCount: out integer range 0 to 628; 		--verticale positie
				PixelCount: out integer range 0 to 1056;	--horizontale positie
				
				Vsync : out STD_LOGIC;
				Hsync : out STD_LOGIC);
	end component;
	
	component mem_interface_beeld is
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
	end component;

	signal s_VGA_X: integer range 0 to 1056;
	signal s_VGA_Y: integer range 0 to 628;
	signal s_active_video: std_logic;

begin

	-----------------
	--	Components --
	-----------------

	VGA_driver_inst:VGA_driver
		port map(
			clk => VGA_clk,

			Flag_Active_Video => s_active_video,
			LineCount => s_VGA_Y,	--verticale positie
			PixelCount => s_VGA_X,	--horizontale positie
			
			Vsync => VGA_Vsync,
			Hsync => VGA_Hsync
		);
		
	mem_interface_beeld_inst: mem_interface_beeld
		port map(
			VGA_clk => VGA_clk,
		
			VGA_X => s_VGA_X,
			VGA_Y => s_VGA_Y,
			active_video => s_active_video,
			VGA_R => VGA_R,
			VGA_G => VGA_G,
			VGA_B => VGA_B,
			
			
			new_entry_clk => new_entry_clk,
			new_entry => new_entry,
			new_entry_valid => new_entry_valid,
			new_entry_counter => new_entry_counter,
			new_entry_last => new_entry_last
		);


end Behavioral;
