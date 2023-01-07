#
# A = lambda do |p| #Início do bloco com o "do".
#   puts p
# end #Fim do bloco com o "end".

# A.call('Danilo') #Chamada do bloco acima pela palavra-chave "call", podendo ou não passar o(s) parâmetro(s), sendo que a quantidades de argumentos passadas tem que ser igual a recebida. Entretanto, nesse caso, foi passado 'Danilo' como parâmetro para o |p|.

#Outra forma de se fazer a mesma coisa.
A = proc.new do |p| #Poderia ser apenas 'proc' também.
    puts p
end
A.call('Danilo')