require_relative 'animal' #Importa o arquivo "animal.rb", independente da pasta que estamos. Esse tem que ser mensionado primeiro, porque o arquivo 'cachorro.rb' herda de animal, respeitando assim o fluxo correto.
require_relative 'cachorro' #Importa o arquivo "cachorro.rb", independente da pasta que estamos.

puts '--Animal--'
animal = Animal.new #Criando uma instancia de animal.
animal.pular # printa o pular na tela.

puts "--Cachorro--"
cachorro = Cachorro.new #Criando uma instancia de cachorro.
cachorro.pular #imprimir o pulo, herdado pela importação de animal.rb
cachorro.latir #imprimir o latir, herdado pela importação de cachorro.