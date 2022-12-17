def soma(valor1, valor2 = 0)
    puts "Estou somando #{valor1} e #{valor2}"
    valor1 + valor2
end    

def soma_com_parametros_nomeados(valor1:, valor2:0)
    soma (valor1, valor2)
end

puts "Vou executar a soma"
puts soma_com_parametros_nomeados(valor1: 5)