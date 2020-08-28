----
-- ej2_c.vhd
-- Código relacionado al apartado C del ejercicio 2
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es


library IEEE;
use IEEE.std_logic_1164.all;

entity ej2 is
  port(
    habilita, m0, m1, m2 : in std_logic;
    alarma, vigila : out std_logic;
    sout1, sout2, sout3 : out std_logic_vector(6 downto 0)
    );
end entity ej2;

architecture ej2 of ej2 is

  component ej2_circuitoA is
    port(
      habilita, m0, m1, m2 : in std_logic;
      alarma, vigila : out std_logic;
      disp : out std_logic_vector(1 downto 0)
      );
  end component ej2_circuitoA;

  component ej2_circuitoB is
    port(
      sin : in std_logic_vector(1 downto 0);
      sout1, sout2, sout3 : out std_logic_vector(6 downto 0)
      );
  end component ej2_circuitoB;

  signal disp : std_logic_vector(1 downto 0);

begin

  CircuitoA : ej2_circuitoA port map(habilita, m0, m1, m2, alarma, vigila, disp);
  CircuitoB : ej2_circuitoB port map(disp, sout1, sout2, sout3);

end architecture ej2;
