nome = "Luis"
#Estes dois comandos abaixo imprime o último índice
#da String nome, ou seja, a última letra.
p nome[nome.length - 1]
p nome[-1]
#Esse comando imprimirá a penúltima letra
p nome[-2]
#Este comando retorna um array da String "nome"
p nome.chars
#Retornará o tamanho desse Array
p nome.chars.length
#Próximo comando imprimirá separador
puts "-" *10
#Próximo comando retornará as 2 primeiras letras
p nome[0,2]