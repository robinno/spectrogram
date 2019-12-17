----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 30.09.2019 10:13:12
-- Design Name:
-- Module Name: VGA_driver - Behavioral
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

ENTITY VGA_driver IS --gekozen voor 800x600
	PORT (
		clk               : IN STD_LOGIC;

		Flag_Active_Video : OUT STD_LOGIC;
		VGA_X             : OUT INTEGER RANGE 0 TO 1056; --horizontale positie
		VGA_Y             : OUT INTEGER RANGE 0 TO 628; --verticale positie
 
		Vsync             : OUT STD_LOGIC;
		Hsync             : OUT STD_LOGIC
	);
END VGA_driver;

ARCHITECTURE Behavioral OF VGA_driver IS

BEGIN
	PROCESS (clk)
		VARIABLE HTeller : INTEGER RANGE 0 TO 1056 := 0; --horizontale positie
		VARIABLE VTeller : INTEGER RANGE 0 TO 628 := 0; --vericale positie
	BEGIN
		IF (rising_edge(clk)) THEN
 
			--update HTeller & VTeller
			HTeller := HTeller + 1;
 
			IF (HTeller >= 1056) THEN
				HTeller := 0;
				VTeller := VTeller + 1;
			END IF;
 
			IF (VTeller >= 628) THEN
				VTeller := 0;
			END IF;
 
 
			--genereren signalen:
			CASE Hteller IS
				WHEN 840 TO 968 => 
					Hsync <= '0';
				WHEN OTHERS => 
					Hsync <= '1';
			END CASE;
 
			CASE Vteller IS
				WHEN 601 TO 605 => 
					Vsync <= '0';
				WHEN OTHERS => 
					Vsync <= '1';
			END CASE;

			--active video?
			IF (HTeller < 800 AND VTeller < 600) THEN
				Flag_Active_Video <= '1';
			ELSE
				Flag_Active_Video <= '0';
			END IF;

		END IF;
 
		VGA_X <= HTeller;
		VGA_Y <= VTeller;
	END PROCESS;

END Behavioral;