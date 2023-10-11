# Practica calificada  2:
## Parte 3 :
Verificamos las versiones de las gemas que tenemos y creamos la aplicacion con rails :

c![image](https://github.com/peg1163/CC3S2/assets/92898224/e14f3580-4a4f-4aad-9d57-c8b9237f674c)

¿Qué pasa con ese mensaje run bundle install?

El mismo rails ejecuta este comando , ya instalando todas las dependencias necesarias para desarrollar una aplicacion en ruby . Si ejecutamos el comando  , veremos que no nos muestra como se instala cada una de estas gemas una por una sino que nos notificara que las gemas ya han sido instaladas correctamente

![image](https://github.com/peg1163/CC3S2/assets/92898224/0c7caafc-6757-4d2c-9e84-68542abc5686)

Verificamos que la instalacion sea correcta ejecutandola localmente :

![image](https://github.com/peg1163/CC3S2/assets/92898224/953b5141-6e2e-4b95-a922-00562ab5c430)

### Migraciones :
Crearemos una migracion para controlar los cambios en la estructura de la base de datos .
Ejecutamos el comando rails generate migration create_movies :   

![image](https://github.com/peg1163/CC3S2/assets/92898224/6767bce0-9b14-45c0-ba3d-822fbdc59e06)

La imagen anterior nos dice que se ha creado un archivo para la migracion llamado CreateMovies ,inicialmente este tiene la sig estructura :  

![image](https://github.com/peg1163/CC3S2/assets/92898224/95eb21fe-ff29-48ef-ab19-c22215fbe42a)

Crearemos la tabla para este migracion con el comando rails db:migrate :

![image](https://github.com/peg1163/CC3S2/assets/92898224/c577b2fb-6ab0-41bc-b4db-65ad165cdc52)


Agregando las lineas de codigo mostradas en la practica  :  

![image](https://github.com/peg1163/CC3S2/assets/92898224/d905332d-c901-4bba-a3d1-70f844ae043c)

### Crea el modelo inicial e inicializa la base de datos  

Crearemos un modelo "movie" :   

![image](https://github.com/peg1163/CC3S2/assets/92898224/0984ff80-2e41-4199-a661-e731d0d70438)

si entramos a la consola de rails y ejecutamos Movie.new nos da el sig resultado :

![image](https://github.com/peg1163/CC3S2/assets/92898224/ba42435f-a526-4449-b4f4-1c29b89d9c40)

Vemos que aun no han sido guardadas peliculas por eso el resultado de nulo  en la imagen anterior , y lo comprobaremos ejecutanto Movie.first que nos devuleve el primer dato de la base de datos :

![image](https://github.com/peg1163/CC3S2/assets/92898224/5e37fcb7-23b3-4114-adf9-62ba83fb10c2)  

Para poder agregar datos a la base de datos , ingresaremos los datos seeds que esta dentro de db , ingresando los datos necesarios y un comando final , lo ejecutaremos :

![image](https://github.com/peg1163/CC3S2/assets/92898224/765b1f25-d8ca-4c31-b724-eb34abad2dd4)

![image](https://github.com/peg1163/CC3S2/assets/92898224/c4f087df-db4b-46c0-bd9d-7eec778a0d0f)

Ahora si ejecutamos nuevamente el comando Movie.first dentro de la consola de rails veremos  :  

![image](https://github.com/peg1163/CC3S2/assets/92898224/11decacf-d769-4e46-bdc4-dac36751a1b7)

### Crear rutas, acciones y vistas CRUD para películas

Si ejecutamos el programa nuevamente veremos que muestra el logo visto anteriormente pero si intentamos entrar en una direccion /movies , nos genera un error .

![image](https://github.com/peg1163/CC3S2/assets/92898224/75a45766-012c-4304-8230-415b30f982f0)

esto sucede porque no hemos especificado en el programa que es lo que queremos mostrar cuando ingresamos a la direccion /movies para esto configuraremos config/routes dentro de nuestra aplicacion :

![image](https://github.com/peg1163/CC3S2/assets/92898224/c7ca9380-730d-4e82-9f25-3fe79c790dce)


#### Crear acciones y vistas

Con el comando rails g scaffold_controller Movie title rating description release_date --skip-test creamos los recursos necesarios para controlar las vistas .

![image](https://github.com/peg1163/CC3S2/assets/92898224/019bc583-8eaf-4166-ba5e-9a86280f2820)

si volvemos a ejecutar el programa y nos vamos a la direccion /movies veremos los elementos que ingresamos en la base de datos

![image](https://github.com/peg1163/CC3S2/assets/92898224/b37abfe2-8d9a-4472-b5d9-18de9661132b)

Como vemos esta aplicacion logra levantarse de manera local , lamentablemente algunos motivos no se pudo subir a heroku .







