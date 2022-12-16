mensagem = "minha mensagem"
#comando para tranformar a primeira letra em maiuscula
puts mensagem.capitalize
puts "-" *10
mensagem = "Olá nome"
#Comando substitui nome por Luciano
puts mensagem.gsub("nome","Luciano")
puts "-" *10
#Comando "split" transforma uma variável em array
nomes = "Luciano Milvia Luis".split
p nomes