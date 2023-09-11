class Pelicula
    def initialize(titulo, fecha)
      @titulo = titulo
      @fecha = fecha
    end
    def titulo
      @titulo
    end
    def titulo=(nuevo_titulo)
      @titulo = nuevo_titulo
    end
    def fecha ; @fecha ; end
    def fecha=(nueva_fecha) ; @fecha = nueva_fecha ; end
    # Como se muestra la informacion de la pelicula
    @@incluye_fecha = false
    def Pelicula.incluye_fecha=(nuevo_valor)
      @@incluye_fecha = nuevo_valor
    end
    def titulo_completo
      if @@incluye_fecha
        "#{self.titulo} (#{self.fecha})"
      else
        self.titulo
      end
    end
  end
  
  # Ejemplo de uso de la clase Pelicula
  
  pasajero = Pelicula.new('Alien, el octavo pasajero ', '1979')
  
  # Nombre de la pelicula
  puts "Estoy viendo #{pasajero.titulo_completo}"
  
  #Fecha de la pelicula
  Pelicula.incluye_fecha = true
  puts "Estoy viendo #{pasajero.titulo_completo}"
  
# Cambio de titulo
pasajero.titulo = 'Alien, el octavo pasajero'
puts "El Nostromo alli '#{pasajero.titulo}!'"