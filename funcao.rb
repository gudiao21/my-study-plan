#Programa focado no aprendizado de função com tratamento de erro dentro da mesma.
def teste(*parametros) #Função ou método que se passa a quantidade parâmetros que se queira.
  return 1 if parametros.include? 2 #Se tem o 2 em "parâmetros" retorne 1
  
  a = "aa" + 1 #Dará um erro, pois o ruby e fortemente tipado.
  1 + 420 - 3 #Se a condição acima não for satisfeita, faça-se o que está nesta linha.
rescue Exception => e #Se der algum erro (e).
  puts "Opa, aconteceu erro."
  puts e.message #Imprimirá a mensagem de erro em si.
end

a = teste 1, 5, 3, 4, 5, 6
puts a