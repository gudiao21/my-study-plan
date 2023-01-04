A = 1
if A == 1
  puts "Oi"
end

#No Ruby tem uma outra forma única de se escrever o "if", diferente de todas outras linguagens.
puts "Oii" if A == 1 #Imprima "Oi" se A == 1

# "=" é um sinal de atribuição criando um espaço de memória para se guardar algo.
# "==" é um sinal de atribuição criado para comparar o valor que está em um espaço de memória com um valor que eu quero comparar.

#Outra possibilidade seria:
if A == 1 ; then puts "oi" ; end #Para acompanhar outras linguagem é possível o uso do ";".

#Enclementando:
if A == 1 # O parênteses é opcional.
  puts "OOi"
elsif (A == 2)    
  puts "Olaa"
else
  puts 1
end

#Uma outra opção que engloba os conceitos de "if" é o "Operador Ternário":
p A == 1 ? "Ternário Oi" : "Ternário Tchau!"