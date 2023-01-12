#Aula 5 - Tratamento de String
b = "aniversário"
c = 1
a = "linHa 4 #{b}   " # o sustenido(#), já converte para string quando for número. Além de que para esse tipo de concatenação, tenho que usar "aspas duplas" apenas.
d = '2'
e = "aula"
f = "   aprendizado   "
p "linha 8 #{a}"
p  a + c.to_s # Diferente do "#" o "c" é preciso converter para string manualmente.
p 'Linha 10: ' + d #Para concatenar 2 variáveis, as 2 tem que ser do mesmo tipo.
p "Linha 11: #{a << b}" #Outra forma de concatenação 2 vezes, uma por cada "<".
p e.gsub("aula", "linha11") #Substitui "aula" por "linha 11" na String toda.
p a[0, 4] #Printa 4 posições da String, utilizando-me do método "substring".
p a.scan(/nossa/) #Encontra a palavra "nossa" no array e printa.
p "Linha 14: #{b.split("")}" # Printa uma string em lista separada por espaço, um array!
p "Linha 16: #{b.upcase}" #Deixa as letras todas em maiúsculas.
p "Linha 17: #{b.downcase}" #Deixa as letras todas em minúsculas.
p "Linha 18: #{b.capitalize}" #Maiuscula apenas a primeira letra da frase.
p "Linha 19: #{b.delete("sário")}" #Deleta "s,á,r,i,o" de toda a string.
p "Linha 20: #{f.strip}" #tira os espaços nas estremidades da string.
p "Linha 21: #{f.lstrip}" ##{Tira os espaços apenas da esquerda (left).
p "Linha 22: #{f.rstrip}" #Tira os espaços apenas da direita (right).
p "Linha 23: #{a.include?("nossa")}"# Que saber se tem a palavra "nossa" em toda a string.
p "Linha 24: #{a.index("nossa")}" #Retorna a posição da palavra nossa.
p "Linha 25: #{f.reverse}" #Escreva o que está em f ao contrário.