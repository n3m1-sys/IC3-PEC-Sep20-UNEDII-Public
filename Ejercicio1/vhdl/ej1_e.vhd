----
-- ej1_e.vhd
-- Código relacionado al apartado e del ejercicio 1
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es

library IEEE;
use IEEE.std_logic_1164.all;

entity bp_ej1 is
end entity bp_ej1;

architecture bp_ej1 of bp_ej1 is
  -- Señales para la depuración
  signal x,y,z : std_logic; -- Entradas
  signal F1,F2 : std_logic; -- Salida

  -- Componente del ejercicio 1
  component ej1 is
    port(
      x,y,z : in std_logic;
      F1,F2 : out std_logic
      );
  end component ej1;

begin
  -- Definir el componente del ejercicio 1
  utt : component ej1 port map (x,y,z,F1,F2);

  -- Proceso del banco de pruebas
  test : process
  begin
    x <= '0'; y <= '0'; z <= '0';
    wait for 10 ns;
    x <= '0'; y <= '0'; z <= '1';
    wait for 10 ns;
    x <= '0'; y <= '1'; z <= '0';
    wait for 10 ns;
    x <= '0'; y <= '1'; z <= '1';
    wait for 10 ns;
    x <= '1'; y <= '0'; z <= '0';
    wait for 10 ns;
    x <= '1'; y <= '0'; z <= '1';
    wait for 10 ns;
    x <= '1'; y <= '1'; z <= '0';
    wait for 10 ns;
    x <= '1'; y <= '1'; z <= '1';
    wait for 10 ns;
    report "Fin de la simulación";
    wait;
  end process test;
end architecture bp_ej1;
