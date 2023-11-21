# Javascript
En este documento veremos algunos de los principios para aprender el lenguaje javascript 

## Preguntas conceptuales

* En JavaScript, todas las operaciones de red son asíncronas. ¿Porque es esto importante?

  Para poder tener una mejor eficiencia y rendimiento , ya uq een operaciones de red muchas veces se hace multiples operaciones simultaneas, al ser asincronas se puede hacer una operacion mientras se espera la respuesta de otra, en lugar de esperar a que termine una para empezar la otra

* En Javascript, queremos realizar acciones tras una operación/solicitud de red completa. ¿Qué paradigma de programación hace esto posible?

  Este paredigma es la programacion asincrona , la cual nos permite realizar multiples operaciones al mismo tiempo, sin tener que esperar a que termine una para empezar la otra

* ¿Javascript proporciona soporte limitado para la herencia a través de qué mecanismo?

    Para la herencia se utilizan algo llamado prototipo , en la que se crea un objeto que tiene las propiedades de otro objeto , y se puede acceder a ellas , por ejemplo :

    ```javascript
    // Definir un constructor de objetos
    function Animal(nombre) {
    this.nombre = nombre;
    }
    // Agregar un método al prototipo
    Animal.prototype.saludar = function() {
    console.log(`Hola, soy ${this.nombre}.`);
        };

    function Perro(nombre, raza) {
    // Llamar al constructor de Animal con los argumentos apropiados
    Animal.call(this, nombre); 
    this.raza = raza;}

    // Heredar el prototipo de Animal
    Perro.prototype = Object.create(Animal.prototype);
    // Restaurar el constructor correcto para Perro
    Perro.prototype.constructor = Perro;

    ```
* ¿Qué es el DOM? ¿Qué librería nos ayuda a usar Javascript para manipular el DOM?

    Las siglas DOM , significan Document Object Model (Modelo de Objetos del Documento) ,es una interfaz de programacion para los documentos HTML y XML , nos permite acceder y manipular el contenido de un documento .
    Una libreria que nos ayuda a manipular el DOM es JQuery , pongamos un ejemplo :

    En este codigo , cuando se hace click en un parrafo , este se oculta
    ```javascript

    $(function(){
        $("p").click(() => $(this).hide());
    });

    ```

    Que pasa si no lo hacemos utilizando JQuery , pues tendriamos que hacerlo de la siguiente manera :

    ```javascript   

    document.getElementById("miParrafo").addEventListener("click", function() {
      this.style.display = "none";
    });

    ```

## ¿Qué puede hacer Javascript ?

Para familiarizarnos con el lenguaje , vamos a ver algunas de las cosas que podemos hacer con el

### Booleano 

Veamos como Javascript trata algunos datos con estos ejemplos :
    
* console.log(undefined == null);   
  Si vemos la documentacion de Javascript , esta comparacion es una convencion , ya que es util para casos donde queremos comprobar si un valor es nulo o no definido ,aunque no son lo mismo , son tratados como iguales

* console.log(NaN == NaN);   
  Al igual que el anterior esta igualdad tambien es un estandar pero a diferencia del anterior , esta devuelve false , esto solo pasa si usas este codigo , pero para evitar estos "errores"  puedes utilizar algo como isNaN() , que devuelve true si el valor es NaN
* console.log(null == false);   
    En este caso , segun la documentacion , La unica comparacion que se puede hacer con null es undefined
    con otros valores este dara false . incluso con el 0 .
* console.log(0 == false);  
    En este caso , javascript al tener esta comparacion , convierte el 0 a un boleano (false), y luego compara los dos valores , por lo que devuelve true
* console.log("" == false);   
    En este caso , javascript al tener esta comparacion , convierte el "" a un boleano al ser una lista vacia lo considera como false, y luego compara los dos valores , por lo que devuelve true

Si queremos una comparacion mas estricta podemos usar "==="

### Arrays

Veamos como podemos trabajar con arrays en javascript, aqui algunos ejemplos :
* [1, 2, 3] + [4, 5, 6] 

    si impimimos esto simplemente hara que el signo concatenara los dos arreglos , dando como resultado  1,2,34,5,6

* !![]  

    Como vimos anteriormente , esto es un arreglo vacio al ponerle los signos de exclamacion estamos tratandolo como un boleano , por lo que javascript interpretara el array vacio como booleano , en este caso false , como hace una doble negacion , el resultado sera false 

* [] == true    

    En el caso anterior , vimos que un array vacio es false , pero en este caso , al compararlo con true , evidentemente esta comparacion dara false 
        
* [10, 1, 3].sort() 

    Este sort ordena los elemenstos del array convirtiendolos a strings y ordenandolos alfabeticamente , por lo que el resultado seria [1,10,3]

* [] == 0​

    Como vimos anteriormente , javascript al momento de hacer una comparacion no estricta , convierte los elementos para que tengan tipos iguales , en este caso , [] se convierte a un string vacio , y este a su vez se convierte a 0 , por lo que el resultado seria true 

### Clausuras

En el siguiente codigo podemos observar lo que es una clausura :

```javascript
 function f1(x) {
  var baz = 3;
  return function (y) {
    console.log(x + y + (baz++));
    }
}
var bar = f1(5);
bar(11);   
```

En este codigo podemos observar como se crea una funcion interna ('funtion(y){...}') , la clausura permite que la funcion interna tenga acceso a las variables de la funcion que la contiene , incluso despues de que esta ultima finalice su ejecucion 


### Algoritmos 

Esta funcion tiene una complejidad O(N^2) , Intentaremos convertirla a una  con complejidad O(N)

```javascript
function greatestNumber(array) {
  for (let i of array) {
    let isIValTheGreatest = true;
    for (let j of array) {
      if (j > i) {
        isIValTheGreatest = false;
      }
    }
    if (isIValTheGreatest) {
      return i;
    }
  }
}
```
Esta funcion recorre todo el arreglo , y lo compara con todos los demas elementos , si el elemento es el mayor , se devuelve , si no , se sigue recorriendo el arreglo , por lo que la complejidad es O(N^2)

Si cambiamos el recorrido de 2 los 2 for por 1 comparandolo con una variable inicial , podemos reducir la complejidad a O(N)

```javascript
function greatestNumber(array) {
    let a=0;
    for (let i of array) {
        if (a < i) {
            a = i;
        }
    }
    return a;
  }
```

Ahora este codigo sevuelve si hay una " X " en el arreglo , si la hay devuelve true , si no , devuelve false

```javascript
function containsX(string) {
  foundX = false;
  for(let i = 0; i < string.length; i++) {
   if (string[i] === "X") {
     foundX = true;
     }
   }
   return foundX;
  }
```
* ¿Cuál es la complejidad temporal de esta función en términos de notación O grande?
    Como vemos , este codigo , mediante un for , recorre todo el arreglo , por lo que la complejidad es O(N)

Para mejorar este codigo podemos acortar el recorrido del arreglo , ya que si encuentra una x antes de terminar el recorrido , recorrer lo demas seria en vano , por lo que podemos hacer lo siguiente :

```javascript
function containsX(string) {
  for (let i = 0; i < string.length; i++) {
    if (string[i] === "X") {
      return true;
    }
  }
  return false;
}
```
Como vemos si encuentra una x antes de que termine el recorrido este devuelve true y termina el programa , otra forma y mas corta de tener la misma funcion seria utilizando el metodo includes() , que devuelve true si el string contiene el elemento que le pasamos como parametro , en este caso "X"

```javascript
function containsX(string) {
  return string.includes("X");
}
```

