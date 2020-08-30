----
-- ej2_b.vhd
-- Código relacionado al apartado B del ejercicio 2
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es


library IEEE;
use IEEE.std_logic_1164.all;

entity ej2_circuitoB is
  port(
    s_in : in std_logic_vector(1 downto 0); -- sin es una palabra reservada
    sout1, sout2, sout3 : out std_logic_vector(6 downto 0)
    );
end entity ej2_circuitoB;

architecture ej2_circuitoB of ej2_circuitoB is
begin

  circuito : process
  begin
    case s_in is
      when "00" =>          -- ON 
        sout1 <= "0000000"; 
        sout2 <= "0111111"; 
        sout3 <= "1010100";
      when "01" =>          -- OFF
        sout1 <= "0111111"; 
        sout2 <= "1110001"; 
        sout3 <= "1110001";
      when others =>        -- Caso imposible : Apagar display
        sout1 <= "0000000"; 
        sout2 <= "0000000"; 
        sout3 <= "0000000";
    end case;
  end process circuito;

end architecture ej2_circuitoB;
