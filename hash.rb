hash = Hash.new #Criação de uma "Hash".
hash = {nome: "Diego", idade: 35} #Declaração de chaves e valores no "hash".
# ["nome"] = "Danilo" //Uma outra forma de se criar um Hash.
# {"nome" => "Danilo"} //É uma sintaxe mais antiga do Ruby(até 1.8) com o "=>" no lugar dos ":".
hash [:altura] = 1.73 #Adicionando um valor extra no "hash".
hash.delete(:altura) #Exclui a chave "altura".
#puts has.clear /limpa tudo, tanto chave, quanto valor.
puts hash.has_value?("Diego") #Método que verifica se o hash tem o valor "Diego".
puts hash.keys #Imprime as chaves "nome" e "idade".
puts hash.values #Imprime apenas o valor.
puts hash.size
puts hash.length

#hash1 = {um:1, dois:2, tres:3}
#hash2 = { tres:3, quatro:4, cinco:5}
#puts hash1 == hash2