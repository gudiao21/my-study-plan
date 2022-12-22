def palindromo?(palavra) #O ? é convensionado entre a comunidade quando o método retorna um boleano.
    palavra = palavra.downcase #A string "palavra" é transformada toda em minúscula.
    palavra_reversa = "" #Torna a palavra_reversa vazia, eu acho!
    indice = palavra.length #Variável indice recebe o comprimento da palavra.

    until indice == 0 #Fazer até chegar a zero, ou seja, fazer até ser verdadeira a igualdade.
        letra = palavra [indice - 1] # Analiza letra por letra
        palavra_reversa << letra # técnica que adiciona uma letra em uma lista.
        indice -= 1 # que é a mesma coisa de indice = indice -1
    end
   
    palavra_reversa == palavra # "Palavra_reversa" é igual a "palavra"?

end

puts palindromo?("ovo") #Chamada do método, passando "ovo" como parâmetro.
puts palindromo?("Ovo") #Chamada do método, passando "Ovo" como parâmetro.
puts palindromo?("foo") #Chamada do método, passando "foo" como parâmeto.

#Agora abaixo é a forma mais resumida para fazer a mesma coisa:

def palindromo?(palavra)
    palavra.downcase == palavra.downcase.reverse
end
puts palindromo?("ovo")
puts palindromo?("Ovo")
puts palindromo?("foo")
