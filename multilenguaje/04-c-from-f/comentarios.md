Para poder usar una función de C en FORTRAN lo primero que hicimos fue escribir la interface de la función de C en el programa principal de FORTRAN. Con la interface generamos una API que permite comunicar el programa con la función. Además, hicimos uso de _iso\_c\_binding_ que compatibilizar los tipos de variable de C con FORTRAN. 

A la función de C le pasamos el valor del puntero correspondiente al array que usa con la instrucción _type (c_ptr), value::inp_. Además le mandamos como valor el tamaño del vector con _integer(c_int),value::num_.

En la función de C agregamos _extern_ para informarle a C que esa función va a interactuar con otro tipo de lenguajes.

Para compilar ponemos en la linea de comandos:
_gcc f-main.f90 c-sum.c -o f-main.e -lgfortran_