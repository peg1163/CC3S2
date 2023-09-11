# Tarea N1
## Tutorial de JUnit5 :

  Este tutorial nos muestra Junit , el marco de pruebas para el lenguaje de programacion Java.
  
### Arquitectura de JUnit5   
  
  Comenzando con las componenetes de JUnit :
  
  ![image](https://github.com/peg1163/CC3S2/assets/92898224/05bf1344-391c-41e2-aa14-31776f56a20e)

  * JUnit Platform es la base sobre la cual se ejecutan y se construyen marcos de pruebas para Java y otros lenguajes JVM,
    proporcionando una infraestructura sólida y extensible para la ejecución de pruebas unitarias.
  * JUnit Jupiter proporciona el nuevo modelo de programación para escribir pruebas en JUnit 5 y es la parte de JUnit 5 que introdujo
    muchas de las características y anotaciones nuevas que se utilizan para escribir pruebas modernas y más expresivas como :
    @BeginAll o @Test
  * JUnit Vintage fue creado para garantizar la compatibilidad y migración suave de las pruebas existentes escritas en versiones antiguas
    de JUnit hacia JUnit 5.

### Implementacion de JUnit5

  Pasando a implementarlo a nuestro proyectos , solo es necesario incrementar una dependencia en el archivo xml

    '''HTML <dependencies>
          <dependency>
              <groupId>org.junit.jupiter</groupId>
              <artifactId>junit-jupiter</artifactId>
              <version>RELEASE</version>
              <scope>compile</scope>
          </dependency>
      </dependencies> '''

  Aumentando esto , el archivo xml nos quedaria : 

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/f5c3f22b-87d4-4c5d-a38e-da410fca306c)

  Ya implementado veamos algunas de las nuevas caracteristicas de JUnit5 
  
### Nuevas Caracteristicas de JUnit5 
  
  * Anotaciones
    
  Una de las nuevas caracteristicas en los componentes de JUnit5 es JUnit Jupiter , que proporciona anotaciones para un mejor entendimiento 
  en las pruebas .Estas anotaciones serian :

  | Anotacion | Descripcion |
  |-------------|-------------|
  | @Test	| Denota un método de prueba |
  | @DisplayName	| Declara un nombre para mostrar personalizado para la clase de prueba o el método de prueba |
  | @BeforeEach	| Indica que el método anotado debe ejecutarse antes de cada método de prueba |
  | @AfterEach	| Indica que el método anotado debe ejecutarse después de cada método de prueba |
  | @BeforeAll	| Indica que el método anotado debe ejecutarse antes que todos los métodos de prueba |
  | @AfterAll	| Indica que el método anotado debe ejecutarse después de todos los métodos de prueba |
  | @Disable	| Se usa para deshabilitar una clase de prueba o un método de prueba |
  | @Nested	| Indica que la clase anotada es una clase de prueba anidada y no estática |
  | @ExtendWith	| Registrar extensiones personalizadas |

  Poniendo a prueba estas anotaciones 

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/247f49ca-f4d5-4894-8ae8-f8c78e73f79d)

  La ejecucion nos muestra como estas anotaciones trabajan 

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/f6c27c3b-0d70-4242-ae8b-772f075f0d07)

  * Aserciones

  Las aserciones comparan un resultado reteniendo el programa si devuelve un FALSE , estas aserciones , cuentan con diferentes metodos para 
  la comparacion :

  | Asercion | Descripcion |
  |-------------|-------------|
  | assertEquals(esperado, real)	| Falla cuando esperado no es igual a real |
  | assertFalse(expresión) |	Se produce un error cuando la expresión no es false | 
  | assertNull(actual)  |	Se produce un error cuando real no es null |
  | assertNotNull(actual)	 | Se produce un error cuando real es null |
  | assertAll() |	Agrupe muchas aserciones y cada aserción se ejecutará incluso si una o más de ellas fallan |
  | assertTrue(expresión) |	Se produce un error si la expresión no es verdadera |
  | assertThrows() |	Se espera que la clase que se va a probar genere una excepción |

  Probemos estas aserciones :

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/64f380b3-ac10-4288-9a6d-c0c5f9221f70)

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/62e9c75f-1e08-41b2-9576-e4149dda19bb)

  Asi mismo sus ejecuciones :

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/527c2ff6-0a5d-4519-b3d2-269d5eada36a)

  Probando el metodo asertAll cambiando alguno de las aserciones : 

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/59a99589-22d2-48ba-847b-9e2ea5efb2c0)

  Veremos que es necesario que todas las pruebas pasen para que corra el metodo completo , este es uno de los ejemplos mostrados en el tutorial 
  para que ejecute el lector .

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/9566c649-b956-43ce-97e0-9336c420b103)

  * Suposiciones

  Las suposiciones en JUnit son condiciones que se deben cumplir para que una prueba se ejecute; si no se cumplen, la prueba se salta sin generar un     
  fallo. Son utilizadas para verificar condiciones previas antes de ejecutar pruebas y no para verificar el comportamiento real de la aplicación , 
  veamos algunas de estas : 

  | Asercion | Descripcion |
  |-------------|-------------|
  | assumeTrue	| Ejecute el cuerpo de lamda cuando se omita la prueba de retención de condición positiva |
  | assumeFalse	 | Ejecute el cuerpo de lamda cuando se omita la prueba de retención de condición negativa |
  | assumingthat |	Parte del método de prueba se ejecutará si una suposición es verdadera y todo lo que sigue a la lambda se ejecutará independientemente de la suposición en el supuesto de que se cumpla That() |

  

  
  



  

  
  




  
    

  
