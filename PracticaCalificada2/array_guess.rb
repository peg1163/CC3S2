def letra_guess(frase)
    #definiremos un arreglo con un alfabeto 
    alfabeto = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
        'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
        'u', 'v', 'w', 'x', 'y', 'z']
    #recorreremos la frase y eliminaremos las letras que esten en el alfabeto y en la frase
    frase.each_char do |letra|
        alfabeto.delete(letra)
    end
    #finalmente devolveremos las letras del alfabeto que no esten en la frase 
    return alfabeto
end
frase="the quick brown box jumps over a lazy dog "
puts letra_guess(frase)
