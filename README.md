# IC3-PEC-Sep20-UNEDII

Público desde el día 21/09/2020 a las 18:09 GMT+2.

### Informe:

El pdf del informe se encuentra dentro de la carpeta `Informe/` junto al código fuente en LaTeX por si se deseara recompilarlo.

### Código Fuente:

Cada uno de los ejercicios tiene su respectiva carpeta (`Ejercicio1/` y `Ejercicio2/`) con el código fuente dentro de una carpeta llamada `vhdl/`.

El nombre de cada archivo de código fuente relacionado a cada apartado tiene el formato `ejX_Y.vhd`, siendo X el número del ejercicio e Y la letra del apartado del ejercicio.

### Compilación:

Yo he utilizado el compilador `ghdl` junto al visor <em>GTKWave</em> para desarrollar el proyecto. Aunque utilizar otro tipo de simuladores o compiladores no debería de ser un problema, considero importante mencionarlo.

Además incluyo un `Makefile` para simplificar la compilación si se está utilizando un sistema UNIX con ghdl. Las ordenes del `Makefile` son las siguientes:

| Comando                | Acción                                                                                       |
|------------------------|----------------------------------------------------------------------------------------------|
|`make ej1comportamiento`| Crea un `.vcd` utilizando la `architecture` del apartado <em>b</em> del ejercicio <em>1</em> |
|`make ej1estructura`    | Crea un `.vcd` utilizando la `architecture` del apartado <em>d</em> del ejercicio <em>1</em> |
|`make ej2`              | Crea un `.vcd` para el ejercicio <em>2</em>                                                  |

Los archivos de objeto y configuraciones los borra automáticamente cuando ya no los necesita. Los archivos `.vcd` los guarda dentro de la carpeta `vcd/` de cada ejercicio, mientras que el binario de la simulación en la subcarpeta `bin/` de cada ejercicio también.

### Circuitos y Cronogramas

Dentro de la carpeta de cada ejercicio la carpeta `circuitos/` se encuentran las imagenes de todos los circuitos que se utilizan. Además dentro de la carpeta `wave/` se encuentran los cronogramas de cada apartado en forma de imagen.





