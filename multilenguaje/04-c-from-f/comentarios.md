Para poder usar una funci�n de C en FORTRAN lo primero que hicimos fue escribir la interface de la funci�n de C en el programa principal de FORTRAN. Con la interface generamos una API que permite comunicar el programa con la funci�n. Adem�s, hicimos uso de _iso\_c\_binding_ que compatibilizar los tipos de variable de C con FORTRAN. 

A la funci�n de C le pasamos el valor del puntero correspondiente al array que usa con la instrucci�n _type (c_ptr), value::inp_. Adem�s le mandamos como valor el tama�o del vector con _integer(c_int),value::num_.

En la funci�n de C agregamos _extern_ para informarle a C que esa funci�n va a interactuar con otro tipo de lenguajes.

Para compilar ponemos en la linea de comandos:
_gcc f-main.f90 c-sum.c -o f-main.e -lgfortran_