Cuando compilamos el objeto visibility.o tenemos que:

+ El símbolo _printf_ es de tipo _U_, es decir, que no está definido.
+ _add\_abs_ es un símbolo que está en el texto de forma local ya que es de tipo _t_.
+ El símbolo _main_ es del mismo tipo que _add_\abs_ pero es global, es decir, se puede acceder desde afuera.
+ Los símbolos _val1_ y _val2_ son tipo _r_ y _R_, respectivamente. Ambos se encuentran en una sección de código que es de sólo de lectura. La primera es local, en cambio, la segunda global.
+ _val3_ y _val4_ símbolos tipo _d_ y _D_, respectivamente. Esto significa que están inicializados.