def palindromo?(palavra) #O ? é convensionado entre a comunidade quando o método retorna um boleano.
    palavra = palavra.downcase
    palavra_reversa = ""

    indice = palavra.length
    until indice == 0 #Fazer até chegar a zero
        letra = palavra [indice - 1]
        palavra_reversa << letra # técnica que adiciona uma letra em uma lista.
        indice -= 1 # que é a mesma coisa de indice = indice -1
    end
    palavra_reversa == palavra #Ovo == ovo
end

puts palindromo?("ovo")
puts palindromo?("Ovo")
puts palindromo?("foo")

#Agora abaixo é a forma mais resumida para fazer a mesma coisa!

#def palindromo?(palavra)
    #palavra.downcase == palavra.downcase.rev
#end
#puts palindromo?("ovo")
#puts palindromo?("Ovo")
#puts palindromo?("foo")
