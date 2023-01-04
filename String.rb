#Aula 5 - Tratamento de String
b = "aniversário"
c = 1
a = "  nossa aula de hoJe #{b}   " # o sustenido(#), já converte para string quando for número. Além de que para esse tipo de concatenação, tenho que usar "aspas duplas" apenas.
d = '2'
p a
p a + c.to_s # Diferente do "#" o "c" é preciso converter para string manualmente.
p 'aula prática ' + d #Para concatenar 2 variáveis, as 2 tem que ser do mesmo tipo.
p a << b #Outra forma de concatenação.
p a.gsub("aula", "aula 5") #Substitui "aula" por "aula 2" na String toda.
p a[0, 4] #Printa 4 posições da String, utilizando-me do método "substring".
p a.scan(/nossa/) #Encontra a palavra "nossa" no array e printa.
p a.split("") # Printa uma lista separada por espaço.
p a.upcase #Deixa as letras todas em maiúsculas.
p a.downcase #Deixa as letras todas em minúsculas.
p a.capitalize #Maiuscula apenas a primeira letra da frase.
p a.delete("aula") #Deleta "aula" de toda a string.
p a.strip #tira os espaços nas estremidades da string.
p a.lstrip #Tira os espaços apenas da esquerda (left).
p a.rstrip #Tira os espaços apenas da direita (right).
p a.include?("nossa")# Que saber se tem a palavra "nossa" em toda a string.
p a.index("nossa") #Retorna a posição da palavra "nossa".
p a.reverse