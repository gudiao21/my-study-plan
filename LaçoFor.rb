for i in [1,2,3,4,5] #ou "for meu_valor in 0..5"
    puts "O número é #{i}" #ou "puts Meu valor é #{meu_valor}
end

lista = [0, 1, 2, 3, 4, 5]
for meu_valor in lista
    puts "Meu valor (usando for) é #{meu_valor}"
end    

lista.each do|meu_valor| #Procura usa o each
    puts "Meu valor (usando each) é #{meu_valor}"
end    
