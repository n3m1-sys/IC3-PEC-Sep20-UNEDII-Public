----
-- ej2_d.vhd
-- Código relacionado al apartado D del ejercicio 2
-- Autor: Martín Romera Sobrado
-- Contacto: mromera95@alumno.uned.es


library IEEE;
use IEEE.std_logic_1164.all;

entity bp_ej2 is
end entity bp_ej2;

architecture bp_ej2 of bp_ej2 is

  -- Señales para depuración del utt
  signal habilita, m0, m1, m2 : std_logic;
  signal alarma, vigila : std_logic;
  signal sout1, sout2, sout3 :std_logic_vector(6 downto 0);

  -- Componente que vamos a testear
  component ej2 is
    port(
      habilita, m0, m1, m2 : in std_logic;
      alarma, vigila : out std_logic;
      sout1, sout2, sout3 : out std_logic_vector(6 downto 0)
      );
  end component ej2;

begin

  utt : ej2 port map(habilita, m0, m1, m2, alarma, vigila, sout1, sout2, sout3);

  test : process
  begin

    habilita <= '0'; m0 <= '0'; m1 <= '0'; m2 <= '0';
    assert (alarma = '0' and vigila = '1' and sout1 = "0111111" and sout2 = "1110001" and sout3 = "1110001")
      report "Falla para habilita <= 0; m0 <= 0; m1 <= 0; m2 <= 0" severity failure;
    wait for 10 ns;

    habilita <= '0'; m0 <= '0'; m1 <= '0'; m2 <= '1';
    assert (alarma = '0' and vigila = '0' and sout1 = "0111111" and sout2 = "1110001" and sout3 = "1110001")
      report "Falla para habilita <= 0; m0 <= 0; m1 <= 0; m2 <= 1" severity failure;
    wait for 10 ns;

    habilita <= '0'; m0 <= '0'; m1 <= '1'; m2 <= '0';
    assert (alarma = '0' and vigila = '0' and sout1 = "0111111" and sout2 = "1110001" and sout3 = "1110001")
      report "Falla para habilita <= 0; m0 <= 0; m1 <= 1; m2 <= 0" severity failure;
    wait for 10 ns;

    habilita <= '0'; m0 <= '0'; m1 <= '1'; m2 <= '1';
    assert (alarma = '0' and vigila = '0' and sout1 = "0111111" and sout2 = "1110001" and sout3 = "1110001")
      report "Falla para habilita <= 0; m0 <= 0; m1 <= 1; m2 <= 1" severity failure;
    wait for 10 ns;

    habilita <= '0'; m0 <= '1'; m1 <= '0'; m2 <= '0';
    assert (alarma = '0' and vigila = '0' and sout1 = "0111111" and sout2 = "1110001" and sout3 = "1110001")
      report "Falla para habilita <= 0; m0 <= 1; m1 <= 0; m2 <= 0" severity failure;
    wait for 10 ns;

    habilita <= '0'; m0 <= '1'; m1 <= '0'; m2 <= '1';
    assert (alarma = '0' and vigila = '0' and sout1 = "0111111" and sout2 = "1110001" and sout3 = "1110001")
      report "Falla para habilita <= 0; m0 <= 1; m1 <= 0; m2 <= 1" severity failure;
    wait for 10 ns;

    habilita <= '0'; m0 <= '1'; m1 <= '1'; m2 <= '0';
    assert (alarma = '0' and vigila = '0' and sout1 = "0111111" and sout2 = "1110001" and sout3 = "1110001")
      report "Falla para habilita <= 0; m0 <= 1; m1 <= 1; m2 <= 0" severity failure;
    wait for 10 ns;

    habilita <= '0'; m0 <= '1'; m1 <= '1'; m2 <= '1';
    assert (alarma = '0' and vigila = '0' and sout1 = "0111111" and sout2 = "1110001" and sout3 = "1110001")
      report "Falla para habilita <= 0; m0 <= 1; m1 <= 1; m2 <= 1" severity failure;
    wait for 10 ns;

    habilita <= '1'; m0 <= '0'; m1 <= '0'; m2 <= '0';
    assert (alarma = '0' and vigila = '1' and sout1 = "0000000" and sout2 = "0111111" and sout3 = "1010100")
      report "Falla para habilita <= 1; m0 <= 0; m1 <= 0; m2 <= 0" severity failure;
    wait for 10 ns;

    habilita <= '1'; m0 <= '0'; m1 <= '0'; m2 <= '1';
    assert (alarma = '0' and vigila = '0' and sout1 = "0000000" and sout2 = "0111111" and sout3 = "1010100")
      report "Falla para habilita <= 1; m0 <= 0; m1 <= 0; m2 <= 1" severity failure;
    wait for 10 ns;

    habilita <= '1'; m0 <= '0'; m1 <= '1'; m2 <= '0';
    assert (alarma = '0' and vigila = '0' and sout1 = "0000000" and sout2 = "0111111" and sout3 = "1010100")
      report "Falla para habilita <= 1; m0 <= 0; m1 <= 1; m2 <= 0" severity failure;
    wait for 10 ns;

    habilita <= '1'; m0 <= '0'; m1 <= '1'; m2 <= '1';
    assert (alarma = '1' and vigila = '0' and sout1 = "0000000" and sout2 = "0111111" and sout3 = "1010100")
      report "Falla para habilita <= 1; m0 <= 0; m1 <= 1; m2 <= 1" severity failure;
    wait for 10 ns;

    habilita <= '1'; m0 <= '1'; m1 <= '0'; m2 <= '0';
    assert (alarma = '0' and vigila = '0' and sout1 = "0000000" and sout2 = "0111111" and sout3 = "1010100")
      report "Falla para habilita <= 1; m0 <= 1; m1 <= 0; m2 <= 0" severity failure;
    wait for 10 ns;

    habilita <= '1'; m0 <= '1'; m1 <= '0'; m2 <= '1';
    assert (alarma = '1' and vigila = '0' and sout1 = "0000000" and sout2 = "0111111" and sout3 = "1010100")
      report "Falla para habilita <= 1; m0 <= 1; m1 <= 0; m2 <= 1" severity failure;
    wait for 10 ns;

    habilita <= '1'; m0 <= '1'; m1 <= '1'; m2 <= '0';
    assert (alarma = '1' and vigila = '0' and sout1 = "0000000" and sout2 = "0111111" and sout3 = "1010100")
      report "Falla para habilita <= 1; m0 <= 1; m1 <= 1; m2 <= 0" severity failure;
    wait for 10 ns;

    habilita <= '1'; m0 <= '1'; m1 <= '1'; m2 <= '1';
    assert (alarma = '1' and vigila = '0' and sout1 = "0000000" and sout2 = "0111111" and sout3 = "1010100")
      report "Falla para habilita <= 1; m0 <= 1; m1 <= 1; m2 <= 1" severity failure;
    wait for 10 ns;

    report "Simulación del banco de pruebas finalizado";

  end process test;
 
end architecture bp_ej2;
