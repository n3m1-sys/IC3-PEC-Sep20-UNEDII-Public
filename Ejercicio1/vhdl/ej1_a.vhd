----
-- ej1_a.vhd
-- Código relacionado al apartado a del ejercicio 1
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es

library IEEE;
use IEEE.std_logic_1164.all;

entity ej1 is
  port(
    x,y,z : in  std_logic;
    F1,F2 : out std_logic);
end entity ej1;
