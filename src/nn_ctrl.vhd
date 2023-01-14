----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2021 12:17:41 PM
-- Design Name: 
-- Module Name: nn_ctrl - Behavioral
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

entity nn_ctrl is
    Port (  i_Clk : in STD_LOGIC;
            ap_rst   : out std_logic;
            rstb_busy: in std_logic;
            intr: in std_logic;
                        
            i_BRAM_addr: in std_logic_vector(31 downto 0);
            i_BRAM_ce  : in std_logic;
                        
            o_BRAM_addr: out std_logic_vector(31 downto 0);
            o_BRAM_ce  : out std_logic;
            o_BRAM_wr  : out std_logic_vector(3 downto 0);
            o_BRAM_din : out std_logic_vector(31 downto 0);
            
            nn_res_in: in  std_logic_vector(31 downto 0)
           
           );
end nn_ctrl;

architecture Behavioral of nn_ctrl is

    signal start_signal :   std_logic := '0';

    signal led_ctrl     :   std_logic_vector(3 downto 0);
    
    signal pred         :   integer := 0;
    
    signal s_BRAM_ce    :   std_logic := '0';
    signal s_BRAM_addr  :   std_logic_vector(31 downto 0) := (others=>'0');
    signal s_BRAM_wr    :   std_logic_vector(3 downto 0);
    signal s_BRAM_din   :   std_logic_vector(31 downto 0);
    signal BRAM_base_addr:   std_logic_vector(31 downto 0); 
    
begin

    BRAM_base_addr(31 downto 0) <= (others => '0');   -- ctrl addr


    o_BRAM_addr <= BRAM_base_addr when intr = '1' else i_BRAM_addr;
    o_BRAM_ce   <= '1' when intr = '1' else i_BRAM_ce;
    o_BRAM_wr   <= "1111" when intr = '1' else "0000";
    o_BRAM_din  <= nn_res_in;

    pred <= to_integer(signed(nn_res_in));

    
end Behavioral;
