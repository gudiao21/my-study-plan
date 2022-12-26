require_relative 'animal' #Importa o arquivo "animal.rb", independente da pasta que estamos.
require_relative 'cachorro' #importa o arquivo cachorro.rb", independente da pasta que estamos.

puts '--Animal--'
animal = Animal.new #Criando uma instancia de animal.
animal.pular # printa o pular na tela.

puts "--Cachorro--"
cachorro = Cachorro.new #Criando uma instancia de cachorro.
cachorro.pular #imprimir o pulo.
cachorro.latir #imprimir o latir.