# Errores iniciales

Los primeros errores que encontramos en el codigo se encuentra en la carpeta app/controller/ en el archivo aplication controller en donde llamamos 
a un metodo de la clase Moviegoer , donde no existe esta clase , por lo que cambiaremos esta a la clase Movie .

Inicio de error :

![Captura de pantalla 2023-11-13 112312](https://github.com/peg1163/CC3S2/assets/92898224/df4827cc-9226-4964-bcef-84c9e6db93e3)

Luego de cambiar por Movie : 

![image](https://github.com/peg1163/CC3S2/assets/92898224/4a5d8c8c-385a-41a7-aab4-fdcac2fabfe3)

Vemos que el error es distinto al anterior , ahora tenemos un error de sintaxis , lo cual encontraremos en la carpeta app/models 
Aqui tenemos que quitar los comentarios y ejecutamos otra vez el servidor

![image](https://github.com/peg1163/CC3S2/assets/92898224/98e3ff3b-4336-404a-b6ea-a0485bbd20a6)

Ahora el error fue corregido , podemos ver las paliculas y alguna informacion extra , tambien podemos agregar peliculas .

# Vistas parciales, validaciones y filtros

Ahora cambiaremos algunas de las vistas , cambiaremos el formato de html.haml a html.erb , primero cambiaremos la vista index.html.haml 

![image](https://github.com/peg1163/CC3S2/assets/92898224/fbc61eb3-7763-4aaa-b03e-0ccf30fd9f97)

Añadiremos una tabla al final de este codigo 

![image](https://github.com/peg1163/CC3S2/assets/92898224/4eada664-c221-4949-b59b-a553b19e97ce)

y cambiaremos lo anterior a codigo html para que no muestre errores : 

![image](https://github.com/peg1163/CC3S2/assets/92898224/2bfc81f6-140d-4d66-921a-be47b46933e9)

finalmente ejecutamos el servidor , a lo cual observamos dos tablas :

![image](https://github.com/peg1163/CC3S2/assets/92898224/00fc8851-9ba7-42cb-b0cd-853e2108438a)

Comprobamos los codigos :

![image](https://github.com/peg1163/CC3S2/assets/92898224/42a3a9b4-5920-4396-8de8-554fcf76fe8b)


Entendamos el siguiente codigo : 

        class MoviesController < ApplicationController
          def new
            @movie = Movie.new
          end 
          def create
            if (@movie = Movie.create(movie_params))
              redirect_to movies_path, :notice => "#{@movie.title} created."
            else
              flash[:alert] = "Movie #{@movie.title} could not be created: " +
                @movie.errors.full_messages.join(",")
              render 'new'
            end
          end
          def edit
            @movie = Movie.find params[:id]
          end
          def update
            @movie = Movie.find params[:id]
            if (@movie.update_attributes(movie_params))
              redirect_to movie_path(@movie), :notice => "#{@movie.title} updated."
            else
              flash[:alert] = "#{@movie.title} could not be updated: " +
                @movie.errors.full_messages.join(",")
              render 'edit'
            end
          end
          def destroy
            @movie = Movie.find(params[:id])
            @movie.destroy
            redirect_to movies_path, :notice => "#{@movie.title} deleted."
          end
          private
          def movie_params
            params.require(:movie)
            params[:movie].permit(:title,:rating,:release_date)
          end
        end
        
Este controlador vera cada uno de los botones que se ven el la primera tabla , este se encargara de direccionar los diferentes casos , por ejemplo si se 
quiere agregar alguna pelicula o si se quiere modificar alguna caracteristica , tambien si se quiere eliminar .

Comprobaremos si funciona la canonicalizacion :

![image](https://github.com/peg1163/CC3S2/assets/92898224/9ea7d513-ff94-4f14-93dd-83c34ca8a972)

# SSO y autenticación a través de tercer 
Para este paso crearemos un nuevo modelo :

![image](https://github.com/peg1163/CC3S2/assets/92898224/b86befad-c00c-44a6-9230-4b5c89a8eeb0)

ya creado modificamos el codigo para que tenga la siguiente forma :


![image](https://github.com/peg1163/CC3S2/assets/92898224/6159849a-f644-4e00-ae3b-8b34a19fbec6)

Ahora ejecutaremos rake db:migrate para que se ejcute la migracion :

![image](https://github.com/peg1163/CC3S2/assets/92898224/e427c4e6-345f-4df0-b892-50fc67a4a984)


Ahora comenzaremos preparando los codigos para poder utilzar una API , primero generaremos un controlador con el comando
rails generate controller SessionsControlller

![image](https://github.com/peg1163/CC3S2/assets/92898224/975a70b1-b6d0-4af0-b1a0-b9539f10e59e)

luego rellenamos codigo en este nuevo controlador :

![image](https://github.com/peg1163/CC3S2/assets/92898224/84316e36-47aa-41f6-8ea8-af157da64079)

Con ayuda de la gema OmniAuth autenticaremos el usuario de un tercero , haremos unas modificaciones en el archivo routes.rb 

![image](https://github.com/peg1163/CC3S2/assets/92898224/5ef8c5e2-f677-4f23-9985-44f55cc486c0)

Adicionalmente aumentaremos un controlador para gestionar el manejo de sesiones :

![image](https://github.com/peg1163/CC3S2/assets/92898224/0acc3b8d-1342-4b8d-8da7-29b406534194)

Finalmente usaremos una API ,para poder tener acceso a esta API necesitaremos una API key y una API key secret 

Dentro de config/initializers/ crearemos un archivo omniauth.rb , en donde especificaremos quien es le proveedor de la API y tambien las keys para poder acceder a esta .

![image](https://github.com/peg1163/CC3S2/assets/92898224/2631253f-d7a7-4f9f-862d-ad6a282422a8)

* Pregunta: Debes tener cuidado para evitar crear una vulnerabilidad de seguridad. ¿Qué sucede si un atacante malintencionado crea un envío de formulario que intenta modificar params[:moviegoer][:uid] o params[:moviegoer][:provider] (campos que solo deben modificarse mediante la lógica de autenticación) publicando campos de formulario ocultos denominados params[moviegoer][uid] y así sucesivamente?

si se vulnerara la seguridad de este formulario por ejemplo , con el caso de estos parametros , el atacante podria hacerse pasar por otro usuario haciendo cambios o acciones no autorizadas con el nombre de este usuario , para evitar este tipo de vulnerabilidaes es que usamos la autenticacion de usuarios atravez de un tercero , en nuestro caso usamos la gema omniauth 


# Asociaciones y claves foráneas 

El siguiente codigo hace que , seleccione los elementos de la tabla review que se encuentra dentro de la union de la tabla movies y reviews , esta tabla fue generada con ciertas condiciones  , 
las cuales son que el id de movies y el movie_id sean iguales , donde este id debe ser 41 
        
        SELECT reviews.*
    FROM movies JOIN reviews ON movies.id=reviews.movie_id
    WHERE movies.id = 41;

Generaremos algunas asociaciones pero para esto necesitaremos algunos modelos y migraciones , comenzaremos creando la tabla review , para esto ejecutamos el comando 
rails generate migration create_reviews

![image](https://github.com/peg1163/CC3S2/assets/92898224/07002ae0-58fc-42cd-8a39-9661aca9b7ef)

Ahora modificaremos esta migracion para que luzca de esta forma 
       ```
        class CreateReviews < ActiveRecord::Migration
            def change
                create_table 'reviews' do |t|
                t.integer    'potatoes'
                t.text       'comments'
                t.references 'moviegoer'
                t.references 'movie'
                end
            end
        end
        ```
![image](https://github.com/peg1163/CC3S2/assets/92898224/ba551fe7-9eae-427c-81e2-e512e67b43c4)


Asi mismo crearemos un modelo review :

![image](https://github.com/peg1163/CC3S2/assets/92898224/ee952e3c-384a-4504-a81f-adcfbc1e5992)

solo nos faltaria asociar la clase movie y moviegoer a review , para esto agregaremos la linea has_many :reviews en ambas clases 

![image](https://github.com/peg1163/CC3S2/assets/92898224/6fc6b9da-90b1-49bb-af2d-a88a25af2bb0)

![image](https://github.com/peg1163/CC3S2/assets/92898224/d2b01dca-d44f-4567-a76f-40b3dbd9cc41)


Una vez generada las asociaciones , podemos ingresar los comandos :

        # it would be nice if we could do this:
        inception = Movie.where(:title => 'Inception')
        alice,bob = Moviegoer.find(alice_id, bob_id)
        # alice likes Inception, bob less so
        alice_review = Review.new(:potatoes => 5)
        bob_review   = Review.new(:potatoes => 3)
        # a movie has many reviews:
        inception.reviews = [alice_review, bob_review]
        # a moviegoer has many reviews:
        alice.reviews << alice_review
        bob.reviews << bob_review
        # can we find out who wrote each review?
        inception.reviews.map { |r| r.moviegoer.name } # => ['alice','bob']    

Comencemos con inception = Movie.where(:title => 'Inception') :

![image](https://github.com/peg1163/CC3S2/assets/92898224/cc4c612e-821d-417d-8ce9-f06be7429d3f)

como vemos funciona correctamente 

Sigamos con el siguiente comando :

![image](https://github.com/peg1163/CC3S2/assets/92898224/7f595996-b983-488e-b7a7-c5ccfafaead7)

observamos que hay un error , ya que queremos asignar elementos de la tabla moviegoer , pero esta esa vacia , aparte de esto no sabemos los valores de alice_id y bob_id , por lo que para crearlos usamos lo siguiente :

![image](https://github.com/peg1163/CC3S2/assets/92898224/0876bfb8-7693-4a26-8888-76945c4dea2e)

ya creados podemos seguir con los comandos mostrados , seria el turno de :alice_review = Review.new(:potatoes => 5) y bob_review   = Review.new(:potatoes => 3) 

![image](https://github.com/peg1163/CC3S2/assets/92898224/f67c0c90-eac2-43c7-97c1-8f430a763afc)

Ahora asociaremos inception con las reviews 

![image](https://github.com/peg1163/CC3S2/assets/92898224/aa27b973-7b4e-49e6-84af-ef53b3274c8b)







