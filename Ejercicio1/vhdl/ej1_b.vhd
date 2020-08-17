----
-- ej1_b.vhd
-- Código relacionado al apartado b del ejercicio 1
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es

library IEEE;
use IEEE.std_logic_1164.all;

architecture comportamiento of ej1 is
begin
  F1 <= ( ( y and z ) ) or ( x and ( y or z ) );
  F2 <= ( not x and ( y xor z ) ) or ( x and not ( y xor z ) );
end architecture comportamiento;
