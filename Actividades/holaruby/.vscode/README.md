## Parte 1: Arreglos, hashes y enumerables
Consulta la documentación de Ruby 3.x + sobre Array, Hash y Enumerable, ya que podrían ser de gran ayuda con estos ejercicios. Aunque Ruby admite for y while, considera usar la sintaxis de bloque con cada una para un uso más idiomático de Ruby.

1.  Define un método sum(array) que tome un   arreglo de números enteros como argumento y devuelva la suma de sus elementos. Para una matriz vacía, debería devolver cero. Ejecuta las pruebas asociadas a través de:
<details>
<summary>Resultado</summary><p><blockquote>
 Definimos un metodo que sume los elementos de un arreglo, para ello utilizamos el metodo inject, el cual nos permite sumar los elementos de un arreglo, en este caso, el metodo inject recibe como parametro un valor inicial, en este caso 0, y luego recorre el arreglo sumando los elementos del arreglo con el valor inicial, en este caso 0, y luego retorna el resultado de la suma.
 el codigo nos quedaria de la siguiente manera:

    ~~~markdown
    ~~~ruby
        def sum(array)
        array.inject(0) {|sum, x| sum + x }
        end
    ~~~
</p></blockquote>
</details>
1. <details>
<summary>Resultado</summary><p><blockquote> 
</p></blockquote>
</details>