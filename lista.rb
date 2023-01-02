lista = [] #Criação da lista em vazia!

lista.push("Diego", "João") #Adiciona "Diego" e "João" nas respectivas posições 0 e 1.
lista << "Maria" #Insere "Maria" na última posição.
lista.insert(3,"Fulano") #Adicionar o elemento "Fulano na posição 3."
lista.insert(2,"Siclano")
lista.delete("Siclano")
puts lista
puts lista.length #Retorna a quantidade total de elementos.
puts lista.sort #No caso de nomes, organiza em ordem alfabética.
puts lista.sort.first
puts lista.sort.last