#Respuestas

**1.**

### Pre-processing
Cuando se detiene la compilación en el pre-procesamiento se genera un archivo que tiene, además del código de mi programa, todo el contenido de las librerías "stdio" y "calculator". O sea, "escribe" un programa con el código de todas las librerías que incluyo y del main. 

### Compilación I
En esta etapa el compilador "traduce" a assembler el código generado en el pre-procesamiento. El resultado sigue siendo un código escrito en caracteres. _Acá se pierde información del lenguaje en el cual se escribió el programa_.

### Compilación II
Se generan las instrucciones en código binario. El resultado de esta etapa son archivos llamados "objetos" que no son archivos ejecutables.

### Linkeo
El compilador junta todos los objetos creados en esta compilación (o incluyendo a otros explicitos en el momento de compilar) y los condensa en un archivo ejecutable. Obviamente este archivo es binario. Entiendo que lo que hace el linker es acomodar las piezas de forma que encajen: por ej. si hay funciones en el main que no tienen direcciones de memoria asignadas, pero si la tienen en un objeto usa esas direcciones de memoria a la hora de ejecucción. Además, usa librerias del sistema operativo (supongo) para que no se pise con otros procesos corriendo (a nivel memoria).

**2.**
El pre-procesador agrega el código correspondiente a todas la librerías incluidas en el programa que escribimos. En este caso va a incluir el header de stdio y calculator.

**3.**
En el código el assembler las funciones se identifican en la línea que comienza con _.type_. En nuestro caso, tanto _main_ como _add\_numbers_ son funciones de la rutina.  

**4.**
Los descriptores de este caso son _T_ y _U_. Tanto _main_ como _add\_numbers_ tienen descriptor _T_ y significa que están en la sección de texto. _printf_ tiene descriptor _U_ es una función declarada pero no definida en el objeto.

**5.**
El objeto _calculator.o_ tiene sólo los símbolos descritos en **4.** pero el ejecutable, además, incluye los símbolos del objeto stdio. Por otro lado, las direcciones de memoria son distintas para las mismas funciones. Eso tiene que ver con que el linker copia los pedazos de código de stdio y los pone en el ejecutable, entonces, está asignando de otra forma la memoria para los símbolos del objeto.