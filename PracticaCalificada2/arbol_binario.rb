class BinaryTree
  #se le da acceso a los atributos de la clase
  attr_accessor :hijo_izquierdo, :hijo_derecho , :valor

  def initialize(valor)
    #definimos los atributos de la clase
    @valor = valor
    @hijo_izquierdo=:null
    @hijo_derecho=:null
  end
  def

  end
  def empty? #este metodo devolvera true si el arbol esta vacio
    return @valor.nil? &&  @hijo_izquierdo.nil? && @hijo_derecho.nil?
  end
end
