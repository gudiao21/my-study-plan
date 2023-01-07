#
# A = lambda do |p| #Início do bloco com o "do".
#   puts p
# end #Fim do bloco com o "end".

# A.call('Danilo') #Chamada do bloco acima pela palavra-chave "call", podendo ou não passar o(s) parâmetro(s), sendo que a quantidades de argumentos passadas tem que ser igual a recebida. Entretanto, nesse caso, foi passado 'Danilo' como parâmetro para o |p|.

l = lambda {|param| param * 5} #lambda com apenas 1 parâmetro."para * 5" imprime na tela.
puts l.call(4)

l = lambda do |p1, p2| #lambda com apenas 2 parâmetros.
    p1 + p2
end

puts l.call(4, 5)

#Outra forma de se fazer a mesma coisa.
l = proc.new {|param| param * 5} #Poderia ser apenas 'proc' também.
    puts l.call(4)