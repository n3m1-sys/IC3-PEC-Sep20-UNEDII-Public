----
-- ej2_a.vhd
-- Código relacionado al apartado a del ejercicio 2
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es

library IEEE;
use IEEE.std_logic_1164.all;

-- Puerta lógica NOT de una entrada

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

-- Puerta lógica OR de dos entradas

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

-- Puerta lógica AND de dos entradas

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

-- Puerta lógica AND de tres entradas

entity xor2 is
  port(
    a,b : in std_logic;
    o : out std_logic
    );
end entity xor2;

architecture xor2 of xor2 is
begin
  o <= a xor b;
end architecture xor2;

library IEEE;
use IEEE.std_logic_1164.all;

-- Puerta lógica NOR de tres entradas

entity nor3 is
  port(
    a,b,c : in std_logic;
    o : out std_logic
    );
end entity nor3;

architecture nor3 of nor3 is
begin
  o <= not ( a or b or c );
end architecture nor3;

library IEEE;
use IEEE.std_logic_1164.all;

-- GND

entity gnd is
  port(o : out std_logic);
end entity gnd;

architecture gnd of gnd is
begin
  o <= '0';
end architecture gnd;

library IEEE;
use IEEE.std_logic_1164.all;

-- Circuito A

entity ej2_circuitoA is
  port(
    habilita, m0, m1, m2 : in std_logic;
    alarma, vigila : out std_logic;
    disp : out std_logic_vector(1 downto 0)
    );
end entity ej2_circuitoA;

architecture ej2_circuitoA of ej2_circuitoA is

  component not1 is
    port(
      a : in std_logic;
      o : out std_logic
      );
  end component not1;

  component or2 is
    port(
      a,b : in std_logic;
      o : out std_logic
      );
  end component or2;

  component and2 is
    port(
      a,b : in std_logic;
      o : out std_logic
      );
  end component and2;

  component xor2 is
    port(
      a,b : in std_logic;
      o : out std_logic
      );
  end component xor2;

  component nor3 is
    port(
      a,b,c : in std_logic;
      o : out std_logic
      );
  end component nor3;

  component gnd is
    port(o : out std_logic);
  end component gnd;

  signal and2_1s, xor2_1s, and2_2s, or2_1s : std_logic;

begin

  And2_1 : and2 port map(m1,m2,and2_1s);
  Xor2_1 : xor2 port map(m1,m2,xor2_1s);
  And2_2 : and2 port map(m0,xor2_1s,and2_2s);
  Or2_1  : or2  port map(and2_2s, and2_1s, or2_1s);
  And2_3 : and2 port map(habilita, or2_1s, alarma);
  Nor3_1 : nor3 port map(m0,m1,m2,vigila);
  Not1_1 : not1 port map(habilita,disp(0));
  GND_1  : gnd  port map(disp(1));


end architecture ej2_circuitoA;
