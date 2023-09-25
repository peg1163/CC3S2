# Tarea 1 :
## Grupo :
    * Jaime Gonzalo Acuña Napan
    * Alejandra Aztirma Zuñiga Chicaña
    * Edward Alexander Canales Yarin
Pregunta:¿Cuáles son las dos diferencias principales que has visto anteriormente y lo que ves en un navegador web 'normal'? ¿Qué explica estas diferencias?

En este problema nos muestran una pagina donde hay palabras aleatorias ,cada vez que entramos en esta pagina se genera una palabra nueva :
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

Pregunta: Suponiendo que estás ejecutando curl desde otro shell ¿qué URL tendrás que pasarle a curl para intentar acceder a tu servidor falso y por qué?

Primero crearemos el servidor web en el puerto 8081 :

![Alt text](image-6.png)

En ese momento se ejecuta el servidor en el puerto 8081 , ahora para acceder a este , pondremos ele comando curl http://localhost:8081

ejecutando este comando , veremos que en el primer shell que lanza un GET en el servidor 

![Alt text](image-7.png)

Pregunta: La primera línea de la solicitud identifica qué URL desea recuperar el cliente. ¿Por qué no ves http://localhost:8081 en ninguna parte de esa línea?

Porque esta no vendria siendo la solicitud , si no el lugar a donde se hace la solicitud 


Pregunta: Según los encabezados del servidor, ¿cuál es el código de respuesta HTTP del servidor que indica el estado de la solicitud del cliente y qué versión del protocolo HTTP utilizó el servidor para responder al cliente?

Ejecutando el comando curl -i 'http://randomword.saasbook.info'

esto nos dara los encabezados del servidor y tambien el html 


![Alt text](image-8.png)

Si vemos la linea numero 1 vemos que nos pone :

HTTP/1.1 200 OK 

esto significa que la version del http es la 1.1 , el numero 200 es que la solictud es exitosa y la expresion 'ok' es para una descripcion legible de que la conexion a sido correcta 

Pregunta: Cualquier solicitud web determinada puede devolver una página HTML, una imagen u otros tipos de entidades. ¿Hay algo en los encabezados que crea que le dice al cliente cómo interpretar el resultado?.


