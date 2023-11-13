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





