#Se guarda um valor entrado pelo usuário de nome "valor" e o tranforma de "string" para "inteiro"
valor = gets.chomp.to_i

if valor > 20
    puts "Esse valor é maior que 20"
elsif valor == 20
    puts "Esse valor é igual a 20"
else
    puts "Esse valor é menor que 20"
end