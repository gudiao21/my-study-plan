numero = 42
#Esse comando adiciona 3 dígitos a mais da variável
#"numero"
puts "o número é %05d" % numero
#Próximo comando imprimirá strings eliminando espaços
#em branco no final e no início.
mensagem = "      mensagem. Aqui vai minha mensagem!       "
puts mensagem.strip
puts "-" *10
nome_minusculo = "luis"
nome_maiusculo = "LUIS"
puts nome_minusculo.upcase
puts nome_maiusculo.downcase
#Próximo muda o valor da variável no mesmo espaço em
#memória
puts nome_minusculo.upcase!