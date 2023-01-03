x = 10
y = 5

#Verifica se x é maior que y
resultado = x > y ? "x é maior" : "y é menor"
puts "O resultado é : #{resultado}" #imprime "x é maior". O "resultado" está interpolado.

#verifica se x é par
result = x % 2 == 0 ? "x é par" : "x é ímpar"
puts "O resultado é :#{result}"

#Atribui a string "nome é longo", se o tamanho de nome for maior que 5, senão atribui "nome é curto".