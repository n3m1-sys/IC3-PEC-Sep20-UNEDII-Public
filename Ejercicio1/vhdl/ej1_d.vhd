----
-- ej1_d.vhd
-- Código relacionado al apartado d del ejercicio 1
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es

library IEEE;
use IEEE.std_logic_1164.all;

architecture estructura of ej1 is

  -- Declaración de los componentes de la estructura

  component not1 is
    port(
      a : in std_logic;
      o : out std_logic
      );
  end component not1;

  component and2 is
    port(
      a,b : in std_logic;
      o   : out std_logic
      );
  end component and2;

  component or2 is
    port(
      a,b : in std_logic;
      o   : out std_logic
      );
  end component or2;

  component xor2 is
    port(
      a,b : in std_logic;
      o   : out std_logic
      );
  end component xor2;

  -- Declaración de señales auxiliares

  signal or_yz, and_yz, and_x_or_yz, not_x, xor_yz, not_xor_yz, and_not_x_xor_yz, and_x_not_xor_yz : std_logic;

begin
  -- Circuito F1
  Or_21  : or2  port map (y,z,or_yz);
  And_22 : and2 port map (y,z,and_yz);
  And_21 : and2 port map (x,or_yz,and_x_or_yz);
  Or_22  : or2  port map (and_yz,and_x_or_yz,F1);
  -- Circuito F2
  Not_11 : not1 port map (x, not_x);
  Xor_21 : xor2 port map (y,z,xor_yz);
  Not_12 : not1 port map (xor_yz,not_xor_yz);
  And_23 : and2 port map (x,not_xor_yz,and_x_not_xor_yz);
  And_24 : and2 port map (not_x,xor_yz,and_not_x_xor_yz);
  Or_23  : or2  port map (and_x_not_xor_yz,and_not_x_xor_yz,F2);
end architecture estructura;
