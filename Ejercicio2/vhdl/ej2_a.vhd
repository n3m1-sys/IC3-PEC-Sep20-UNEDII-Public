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

entity and3 is
  port(
    a,b,c : in std_logic;
    o : out std_logic
    );
end entity and3;

architecture and3 of and3 is
begin
  o <= a and b and c;
end architecture and3;

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
  o <= not ( a and b and c );
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

  component and3 is
    port(
      a,b,c : in std_logic;
      o : out std_logic
      );
  end component and3;

  component nor3 is
    port(
      a,b,c : in std_logic;
      o : out std_logic
      );
  end component nor3;

  component gnd is
    port(o : out std_logic);
  end component gnd;

  signal not1_1s, and3_1s, and2_1s, or2_1s, nor3_1s, or2_2s : std_logic;

begin

  Not1_1 : not1 port map(m0,not1_1s);
  And3_1 : and3 port map(not1_1s,m1,m2,and3_1s);
  Or2_1  : or2  port map(m1,m2,or2_1s);
  And2_1 : and2 port map(m0,or2_1s,and2_1s);
  Or2_2  : or2  port map(and3_1s,and2_1s,or2_1s);
  Nor3_1 : nor3 port map(m0,m1,m2,vigila);
  And2_2 : and2 port map(or2_2s,habilita,alarma);
  Not1_2 : not1 port map(habilita,disp(0));
  GND_1  : gnd  port map(disp(1));


end architecture ej2_circuitoA;
