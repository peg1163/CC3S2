
def letra_guess(frase)
  #inicializaremos un arreglo con el alfabeto
  alfabeto = ('a'..'z').to_a
  #iteraremos sobre la frase y borraremos las letras que se encuentren en el arreglo
  frase.split('').each do |letra|
    alfabeto.delete(letra)
  end
  alfabeto.first
end


frase = "the quick brown fox jumps over the lazy dog"
puts letra_guess(frase)
