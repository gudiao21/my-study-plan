nomes = ["João", "Maria", "José", "Mateus"] #Criação de uma lista com 4 elementos.

dict = {nome: "Diego", idade: 35, altura: 1.73} #Criação de um Hash, com 3 keyss e 3 valores.

nome = "Diego" #Variável criada fora do "do", não sendo assim a mesma dentro do "do".
nomes.each do |n| #Para cada elemento da lista "nomes" faça determinada coisa para cada nome "n" (variável criada se referindo a cada elemento na lista).
  puts n #Imprima a variável "nome" que está dentro do "do", não sobrescrevendo a variável "nome = Diego" criada fora do "do".
end

#Pode ser feito dessa forma:
#for nome in nomes do
  #puts nome #Aqui ele vai sobrescrever a variável nome, criada fora do "for" com o valor "Diego".
#end     

puts nome #Imprima a variável "nome = Diego" que está fora do "do", pois esse "puts" também está fora do "do".

#Pode também ser feito dessa forma:

chave = "Diego"

dict.each do |chave, valor| #Para cada "chave" e "valor" do Hash "dict", faça:
  puts "#{chave}: #{valor}" # Imprima cada chave e valor, não sobrescrevendo a variável "nome = "Diego" criada fora desse "do".
end