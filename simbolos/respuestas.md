Cuando compilamos el objeto visibility.o tenemos que:

+ El s�mbolo _printf_ es de tipo _U_, es decir, que no est� definido.
+ _add\_abs_ es un s�mbolo que est� en el texto de forma local ya que es de tipo _t_.
+ El s�mbolo _main_ es del mismo tipo que _add_\abs_ pero es global, es decir, se puede acceder desde afuera.
+ Los s�mbolos _val1_ y _val2_ son tipo _r_ y _R_, respectivamente. Ambos se encuentran en una secci�n de c�digo que es de s�lo de lectura. La primera es local, en cambio, la segunda global.
+ _val3_ y _val4_ s�mbolos tipo _d_ y _D_, respectivamente. Esto significa que est�n inicializados.