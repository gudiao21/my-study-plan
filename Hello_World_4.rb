nome = "Luciano"
#para usar interpolação, teria que usar o '%Q'
mensagem = %q(Bem vindo ao meu programa!)
puts mensagem
#Agora com '%Q' para poder interpolar
mensagem = %Q(Bem vindo ao meu programa! #{nome})
puts mensagem
#Próximo comando é para retornar o tamanho da última
#string com o método 'length'.
puts "Essa última string tem tamanho de: "
puts mensagem.length
puts mensagem.public_methods