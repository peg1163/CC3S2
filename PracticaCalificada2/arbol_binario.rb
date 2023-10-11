class BinaryTree
  #se le da acceso a los atributos de la clase
  attr_accessor :hijo_izquierdo, :hijo_derecho , :valor

  def initialize(valor)
    #definimos los atributos de la clase
    @valor = valor
    @hijo_izquierdo=:null
    @hijo_derecho=:null
  end
  #Usaremos este metodo para poder insertar un elemento en el arbol
  #comparara si es menor o mayor que el valor del nodo
  #y lo posicionara a la izquierda o derecha
  def pos(elemento)
    if  elemento <=value
        if @hijo_izquierdo.nil?
            @hijo_izquierdo = BinaryTree.new(elemento)
        else
            @hijo_izquierdo.pos(elemento)
        end
    else
        if @hijo_derecho.nil?
            @hijo_derecho = BinaryTree.new(elemento)
        else
            @hijo_derecho.pos(elemento)
        end
    end

  end
  def empty? #este metodo devolvera true si el arbol esta vacio
    return @hijo_izquierdo.nil? && @hijo_derecho.nil?
  end
end
def each

end
