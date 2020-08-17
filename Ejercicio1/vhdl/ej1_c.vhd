----
-- ej1_c.vhd
-- Código relacionado al apartado c del ejercicio 1
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es

library IEEE;
use IEEE.std_logic_1164.all;

-- Puerta lógica NOT de 1 entrada

entity not1 is
  port(
    a : in std_logic;
    o : out std_logic
    );
end entity not1;

architecture not1 of not1 is
begin
  o <= not a;
end architecture not1;

library IEEE;
use IEEE.std_logic_1164.all;

-- Puerta lógica AND de 2 entradas

entity and2 is
  port(
    a,b : in std_logic;
    o   : out std_logic
    );
end entity and2;

architecture and2 of and2 is
begin
  o <= a and b;
end architecture and2;

library IEEE;
use IEEE.std_logic_1164.all;

-- Puerta lógica OR de 2 entradas

entity or2 is
  port(
    a,b : in std_logic;
    o   : out std_logic
    );
end entity or2;

architecture or2 of or2 is
begin
  o <= a or b;
end architecture or2;

library IEEE;
use IEEE.std_logic_1164.all;

-- Puerta lógica XOR de 2 entradas

entity xor2 is
  port(
    a,b : in std_logic;
    o   : out std_logic
    );
end entity xor2;

architecture xor2 of xor2 is
begin
  o <= a xor b;
end architecture xor2;
