-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    RESET_N : in std_logic;
    GCLK : in std_logic;
    RS232_Uart_1_sout : out std_logic;
    RS232_Uart_1_sin : in std_logic;
    DIP_Switches_8Bits_TRI_I : in std_logic_vector(7 downto 0);
    Push_Buttons_4Bits_TRI_I : in std_logic_vector(3 downto 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      RESET_N : in std_logic;
      GCLK : in std_logic;
      RS232_Uart_1_sout : out std_logic;
      RS232_Uart_1_sin : in std_logic;
      DIP_Switches_8Bits_TRI_I : in std_logic_vector(7 downto 0);
      Push_Buttons_4Bits_TRI_I : in std_logic_vector(3 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      RESET_N => RESET_N,
      GCLK => GCLK,
      RS232_Uart_1_sout => RS232_Uart_1_sout,
      RS232_Uart_1_sin => RS232_Uart_1_sin,
      DIP_Switches_8Bits_TRI_I => DIP_Switches_8Bits_TRI_I,
      Push_Buttons_4Bits_TRI_I => Push_Buttons_4Bits_TRI_I
    );

end architecture STRUCTURE;

