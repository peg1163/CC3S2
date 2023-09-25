# Tarea Introduccion a HTTP y URI :
## Grupo :
    | Participantes  |
    |-----------------------|
    | Jaime Gonzalo Acuña Napan |
    | Alejandra Aztirma Zuñiga Chicaña |
    | Edward Alexander Canales Yarin |
* Pregunta:¿Cuáles son las dos diferencias principales que has visto anteriormente y lo que ves en un navegador web 'normal'? ¿Qué explica estas diferencias?

 Respuesta: En este problema nos muestran una pagina donde hay palabras aleatorias ,cada vez que entramos en esta pagina se genera una palabra nueva :
 
![Alt text](image.png)

y si cargamos otra vez la pagina aparecera una nueva

![Alt text](image-1.png)

Ahora entrando desde la terminal , accedemos a la pagina y nos devuelve en texto el html 

![Alt text](image-2.png)

ahora si copiamos esto en un archivo html y lo vemos en un navegador 

![Alt text](image-3.png)

vemos que nos devuelve una palabra aleatoria , pero si cargamos la pagina otra vez , esta no dara palabras aleatorias , porque pasa esto ?
porque solo hemos copiado una respuesta del servidor y si recargamos cargamos esta unica respuesta una y otra vez , para obtener otra palabra aleatoria tendriamos que usar nuevamente el comando curl 

![Alt text](image-4.png)

si copiamos esto nuevamente en el html y cargamos la pagina ,veremos que nnos da una nueva palabra aleatorio

![Alt text](image-5.png)

* Pregunta: Suponiendo que estás ejecutando curl desde otro shell ¿qué URL tendrás que pasarle a curl para intentar acceder a tu servidor falso y por qué?

Respuesta: Primero crearemos el servidor web en el puerto 8081 :

![Alt text](image-6.png)

En ese momento se ejecuta el servidor en el puerto 8081 , ahora para acceder a este , pondremos ele comando curl http://localhost:8081

ejecutando este comando , veremos que en el primer shell que lanza un GET en el servidor 

![Alt text](image-7.png)

* Pregunta: La primera línea de la solicitud identifica qué URL desea recuperar el cliente. ¿Por qué no ves http://localhost:8081 en ninguna parte de esa línea?

Porque esta no vendria siendo la solicitud , si no el lugar a donde se hace la solicitud ,tambien es redundante ya que este servidor es local 


* Pregunta: Según los encabezados del servidor, ¿cuál es el código de respuesta HTTP del servidor que indica el estado de la solicitud del cliente y qué versión del protocolo HTTP utilizó el servidor para responder al cliente?

Ejecutando el comando curl -i 'http://randomword.saasbook.info'

esto nos dara los encabezados del servidor y tambien el html 


![Alt text](image-8.png)

Si vemos la linea numero 1 vemos que nos pone :

HTTP/1.1 200 OK 

esto significa que la version del http es la 1.1 , el numero 200 es que la solictud es exitosa y la expresion 'ok' es para una descripcion legible de que la conexion a sido correcta 

* Pregunta: Cualquier solicitud web determinada puede devolver una página HTML, una imagen u otros tipos de entidades. ¿Hay algo en los encabezados que crea que le dice al cliente cómo interpretar el resultado?.

![Alt text](image-9.png)

Podemos observar que hay muchos encabezados , esta es toda la informacion de la solicitud del servidor , primero nos da la version del protocolo http 
y si la solicitud a sido exitosa 
tambien nos muestra el tipo de contenido , la longitud del contenido y muchas mas informacion .

* Pregunta: ¿Cuál sería el código de respuesta del servidor si intentaras buscar una URL inexistente en el sitio generador de palabras aleatorias? Pruéba esto utilizando el procedimiento anterior.

Ahora si usamos el comando curl -i http://randomword.saasbook.info/a vemos que no encuentra la pagina , ya que esta pagina no cuenta con el directorio por lo que en la informacion nos devuelve un error 

![Alt text](image-10.png)

especificamente el error 404 significa que no encuentra la pagina 

¿Qué otros códigos de error HTTP existen? Utiliza Wikipedia u otro recurso para conocer los significados de algunos de los más comunes: 200, 301, 302, 400, 404, 500. Ten en cuenta que estas son familias de estados: todos los estados 2xx significan funcionó, todos los 3xx son redireccionar etc.
Tanto el encabezado 4xx como el 5xx indican condiciones de error. ¿Cuál es la principal diferencia entre 4xx y 5xx?.

 2xx:   
 Estos códigos indican que la solicitud del cliente se recibió, se comprendió y se procesó correctamente en el servidor.    
 3xx:   
 Estos códigos se utilizan para indicar redireccionamientos de URL. Indican que el cliente debe tomar alguna acción adicional para completar la solicitud   
 4xx:   
 Estos errores se generan cuando el servidor recibe una solicitud que no puede procesar debido a problemas en el lado del cliente   
 5xx:   
 Estos errores son generados por el servidor web y generalmente indican problemas en el lado del servidor

## ¿Que es un cuerpo de Request ?
 * Pregunta: Cuando se envía un formulario HTML, se genera una solicitud HTTP POST desde el navegador. Para llegar a tu servidor falso, ¿con qué URL deberías reemplazar Url-servidor-falso en el archivo anterior?

 Para que esto se ejecute en el servidor local del puerto 8081 pondremos el link del host osea : http://localhost:8081 

 Abriendo el archivo html ,nos mostraria : 

  
![Alt text](image-11.png)


ahora cambiando el servidor , si ingresamos algun correo y contraseña y vemos el estado del servidor veremos que se ha generado un post 

![Alt text](image-12.png)

esto quiere decir que la informacion ingresada a sido recibida por el servidor 

* Pregunta:¿Cómo se presenta al servidor la información que ingresó en el formulario? ¿Qué tareas necesitaría realizar un framework SaaS como Sinatra o Rails para presentar esta información en un formato conveniente a una aplicación SaaS escrita, por ejemplo, en Ruby?
  Cuando se utiliza el método POST, los datos del formulario se envían en el cuerpo de la solicitud HTTP en lugar de aparecer en la URL como lo es cuando se usa el metodo GET

  ![image](https://github.com/peg1163/CC3S2/assets/92898224/658c2583-cec5-4f56-af1d-4be2fd0cda3b)

* Repite el experimento varias veces para responder las siguientes preguntas observando las diferencias en el resultado impreso por nc:

 ¿Cuál es el efecto de agregar parámetros URI adicionales como parte de la ruta POST?    
    No tienen efecto alguno ya que los parametros se incluiran en la URL pero los datos que se envian en el metodo POST en el cuerpo de la solicitud POST y no en la URL        
 ¿Cuál es el efecto de cambiar las propiedades de nombre de los campos del formulario?    
 Cambiara como se identifican esos campos en el lado del servidor cuando se procesa la solicitud     
 veamos un ejemplo :    
 ![image](https://github.com/peg1163/CC3S2/assets/92898224/192e4288-8efe-4a38-ad02-4f1d783c2400)

 inicialmente tenemos estos parametros , ahora cambiandolos :    
    ![image](https://github.com/peg1163/CC3S2/assets/92898224/7dcc8337-00b6-438f-94c5-6d05afedfdcc)

vemos que en la parte final ya no es password sino passwords 
 
 ¿Puedes tener más de un botón Submit? Si es así, ¿cómo sabe el servidor en cuál se hizo clic? (Sugerencia: experimenta con los atributos de la etiqueta 
 <submit>).    
 Sí, puedes tener más de un botón submit en un formulario HTML. Para identificar cuál de los botones se hizo clic, puedes usar el atributo name en los botones y luego verificar cuál de los botones se incluyó en la solicitud HTTP en el lado del servidor
 veamoslo , agregaremos un boton :    
![image](https://github.com/peg1163/CC3S2/assets/92898224/d62cb0b3-0177-4953-a60f-c5bee412f8fd)
vemos que en el lado del servidor el valor del boton es Eliminar lo cual diferenciaria los dos submit que pusimos 
 ![image](https://github.com/peg1163/CC3S2/assets/92898224/124215fa-906b-4e88-96a8-87208e0d539b)

 
 ¿Se puede enviar el formulario mediante GET en lugar de POST? En caso afirmativo, ¿cuál es la diferencia en cómo el servidor ve esas solicitudes?

 Si se puede , la mayor diferencia es que los datos estaran adjuntos al URL , y que como el formulario ahora esta en GET estos lo tratara  de forma distinta que usando el metodo POST     
 
 ![image](https://github.com/peg1163/CC3S2/assets/92898224/951d13fe-c2ce-4528-95a5-fcb7a609fedc)

 ¿Qué otros verbos HTTP son posibles en la ruta de envío del formulario? ¿Puedes hacer que el navegador web genere una ruta que utilice PUT, PATCH o 
  DELETE?.

  Normalmente, los navegadores web generan solicitudes GET o POST al enviar formularios HTML. Para utilizar otros verbos HTTP como PUT, PATCH o DELETE en la ruta de envío del formulario, generalmente se requiere programación adicional utilizando JavaScript o frameworks de desarrollo web


* Pregunta: Prueba las dos primeras operaciones GET anteriores. El cuerpo de la respuesta para la primera debe ser "Logged in: false" y para la segunda "Login cookie set". ¿Cuáles son las diferencias en los encabezados de respuesta que indican que la segunda operación está configurando una cookie? (Sugerencia: usa curl -v, que mostrará tanto los encabezados de solicitud como los encabezados y el cuerpo de la respuesta, junto con otra información de depuración. curl --help imprimirá una ayuda voluminosa para usar cURL y man curl mostrará la página del manual de Unix para cURL en la mayoría de los sistemas.)
ejecutamos la primera opcion :

![image](https://github.com/peg1163/CC3S2/assets/92898224/43f14fff-1f2f-4eeb-a0e1-e59b626b5c87)

Ahora la segunda :    

![image](https://github.com/peg1163/CC3S2/assets/92898224/ab9cbc71-8e91-49da-871a-14966f3e8fff)

vemos que en la segunda se activa el login 

* Pregunta: Bien, ahora supuestamente "logged in" porque el servidor configuró una cookie que indica esto. Sin embargo, si intentaa GET / nuevamente, seguirá diciendo "Logged: false". ¿Qué está sucediendo? (Sugerencia: usa curl -v y observa los encabezados de solicitud del cliente).

Siguiendo los pasos :

![image](https://github.com/peg1163/CC3S2/assets/92898224/74cd06c0-21b0-4d36-a8da-05e003f6f786)

se genera un txt donde se guardara la cookie, ahora haremos que incluyas las cockies necesarias :

![image](https://github.com/peg1163/CC3S2/assets/92898224/7c272cc0-3fd4-457e-bd90-585fc0df5a4b)





