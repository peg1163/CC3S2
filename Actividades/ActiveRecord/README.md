# Tarea ActiveRecord 
En el contexto de la actividad nos muestran un proyecto donde ejecutaremos alguna pruebas , pero primero recorreremos algunos archivos : 
  * lib/activerecord_practica.rb :Crearemos metodos para corroborar que cumplan condiciones validas  
    ![image](https://github.com/peg1163/CC3S2/assets/92898224/d1c4cb9b-6c7c-4dcf-9f5a-1cafd709fe36)
    
  * spec/activerecord_practica_spec.rb:Aqui veremos algunas pruebas para los metodos creados , podemos ver que tienen el metodo xspecity , esto nos sirve para poder controlar poco a poco la creacion de los metodos a los que se pone a prueba.
      
    ![image](https://github.com/peg1163/CC3S2/assets/92898224/549c039a-19b4-44d6-9bd2-e3bad354ecc1)

Ahora que terminamos de ver los recursos para esta actividad , comenzaremos creando los metodos para estas pruebas . Siguiendo una metodologia TDD , como las pruebas ya estan creadas quitaremos el metodo xspecify en una de estas y correremos el programa :

![image](https://github.com/peg1163/CC3S2/assets/92898224/20ed804d-8a82-4186-8196-9c00776c53e5)

Al quita el ' xspecify ' y poner ' specify ' ejecutara solo la prueba dejando las demas como pendientes al ejecutar las pruebas veremos :

![image](https://github.com/peg1163/CC3S2/assets/92898224/1e212230-5685-41ef-b5a8-5360d7daaa7e)

Nos muestra un error ya que aun no hemos implementado el metodo 
Implmentando el metodo : 

![image](https://github.com/peg1163/CC3S2/assets/92898224/85921190-0f08-4e6b-88a5-fd26a49b7695)

ejecutaremos el test nuevamente

![image](https://github.com/peg1163/CC3S2/assets/92898224/c8fa72f1-7608-4163-a8d6-99774a5348b2)

Vemos que pasa las pruebas , ahora generaremos los metodos para las demas pruebas , pero antes de eso utilizaremos la gema guard para automatizar la ejecucion de las pruebas : 

![image](https://github.com/peg1163/CC3S2/assets/92898224/7af301d4-f8df-4be6-888f-f802937013ac)

Asi mismo generaremos los metodos para las respectivas pruebas :

![image](https://github.com/peg1163/CC3S2/assets/92898224/8fc2e456-002d-47df-859d-c571a6fb4418)
 
![image](https://github.com/peg1163/CC3S2/assets/92898224/9484dc77-fc61-40c4-8b9b-bee49fb93dce)

Quitaremos el xspecify y pondremos specify , guardaremos los cambios y se ejecutara el guard automaticamente: 

![image](https://github.com/peg1163/CC3S2/assets/92898224/30a91b37-49ca-4c0c-bc37-f923b91b88e3)










