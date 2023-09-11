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
  | ¡CRB!	| Declarar etiquetas para filtrar pruebas |
  | @ExtendWith	| Registrar extensiones personalizadas |


  
    

  
