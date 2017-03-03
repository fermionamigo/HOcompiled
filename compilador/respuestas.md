#Respuestas

**1.**

### Pre-processing
Cuando se detiene la compilaci�n en el pre-procesamiento se genera un archivo que tiene, adem�s del c�digo de mi programa, todo el contenido de las librer�as "stdio" y "calculator". O sea, "escribe" un programa con el c�digo de todas las librer�as que incluyo y del main. 

### Compilaci�n I
En esta etapa el compilador "traduce" a assembler el c�digo generado en el pre-procesamiento. El resultado sigue siendo un c�digo escrito en caracteres. _Ac� se pierde informaci�n del lenguaje en el cual se escribi� el programa_.

### Compilaci�n II
Se generan las instrucciones en c�digo binario. El resultado de esta etapa son archivos llamados "objetos" que no son archivos ejecutables.

### Linkeo
El compilador junta todos los objetos creados en esta compilaci�n (o incluyendo a otros explicitos en el momento de compilar) y los condensa en un archivo ejecutable. Obviamente este archivo es binario. Entiendo que lo que hace el linker es acomodar las piezas de forma que encajen: por ej. si hay funciones en el main que no tienen direcciones de memoria asignadas, pero si la tienen en un objeto usa esas direcciones de memoria a la hora de ejecucci�n. Adem�s, usa librerias del sistema operativo (supongo) para que no se pise con otros procesos corriendo (a nivel memoria).

**2.**
El pre-procesador agrega el c�digo correspondiente a todas la librer�as incluidas en el programa que escribimos. En este caso va a incluir el header de stdio y calculator.

**3.**
En el c�digo el assembler las funciones se identifican en la l�nea que comienza con _.type_. En nuestro caso, tanto _main_ como _add\_numbers_ son funciones de la rutina.  

**4.**
Los descriptores de este caso son _T_ y _U_. Tanto _main_ como _add\_numbers_ tienen descriptor _T_ y significa que est�n en la secci�n de texto. _printf_ tiene descriptor _U_ es una funci�n declarada pero no definida en el objeto.

**5.**
El objeto _calculator.o_ tiene s�lo los s�mbolos descritos en **4.** pero el ejecutable, adem�s, incluye los s�mbolos del objeto stdio. Por otro lado, las direcciones de memoria son distintas para las mismas funciones. Eso tiene que ver con que el linker copia los pedazos de c�digo de stdio y los pone en el ejecutable, entonces, est� asignando de otra forma la memoria para los s�mbolos del objeto.