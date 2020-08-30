# Makefile para compilar y crear los archivos de simulación de ambos ejercicios
# Autor: Martín Romera Sobrado
# Contacto: mromera95@alumno.uned.es

GHDL = ghdl
PATH_EJ1 = Ejercicio1
PATH_EJ2 = Ejercicio2
EJ1_COMP_VHDL = ej1_a.vhd ej1_b.vhd ej1_e.vhd 
EJ1_ESTR_VHDL = ej1_a.vhd ej1_c.vhd ej1_d.vhd ej1_e.vhd 

# EJERCICIO 1
# NOTE: Como ghdl parece que tiene algun tipo de bug compilando (mis) configurations, toca hacer malabares para compilar ambos casos

# Comportamiento

ej1comportamiento: $(PATH_EJ1)/vhdl/ej1_a.vhd $(PATH_EJ1)/vhdl/ej1_b.vhd $(PATH_EJ1)/vhdl/ej1_e.vhd
	cd $(PATH_EJ1)/vhdl && $(GHDL) -a $(EJ1_COMP_VHDL)
	cd $(PATH_EJ1)/vhdl && $(GHDL) -e bp_ej1
	mkdir -p $(PATH_EJ1)/bin
	cd $(PATH_EJ1)/vhdl && rm *.o *.cf && mv bp_ej1 ../bin/bp_ej1_comportamiento
	mkdir -p $(PATH_EJ1)/vcd
	cd $(PATH_EJ1)/bin && ./bp_ej1_comportamiento --vcd=../vcd/bp_ej1_comportamiento.vcd

# Estructura

ej1estructura: $(PATH_EJ1)/vhdl/ej1_a.vhd $(PATH_EJ1)/vhdl/ej1_c.vhd $(PATH_EJ1)/vhdl/ej1_d.vhd $(PATH_EJ1)/vhdl/ej1_e.vhd
	cd $(PATH_EJ1)/vhdl && $(GHDL) -a $(EJ1_ESTR_VHDL)
	cd $(PATH_EJ1)/vhdl && $(GHDL) -e bp_ej1
	mkdir -p $(PATH_EJ1)/bin
	cd $(PATH_EJ1)/vhdl && rm *.o *.cf && mv bp_ej1 ../bin/bp_ej1_estructura
	mkdir -p $(PATH_EJ1)/vcd
	cd $(PATH_EJ1)/bin && ./bp_ej1_estructura --vcd=../vcd/bp_ej1_estructura.vcd

# EJERCICIO 2

ej2: $(PATH_EJ2)/vhdl/ej2_a.vhd $(PATH_EJ2)/vhdl/ej2_b.vhd $(PATH_EJ2)/vhdl/ej2_c.vhd $(PATH_EJ2)/vhdl/ej2_d.vhd
	cd $(PATH_EJ2)/vhdl && $(GHDL) -a *.vhd
	cd $(PATH_EJ2)/vhdl && $(GHDL) -e bp_ej2
	mkdir -p $(PATH_EJ2)/bin
	cd $(PATH_EJ2)/vhdl && rm *.o *.cf && mv bp_ej2 ../bin/
	mkdir -p $(PATH_EJ1)/vcd
	cd $(PATH_EJ2)/bin && ./bp_ej2 --vcd=../vcd/bp_ej2.vcd
