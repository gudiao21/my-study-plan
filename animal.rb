class Animal
  def pular
    puts 'Toing! tóim! bóim! póim' # Primeiro método criado dentro da classe "Animal".
  end

  def dormir
    puts 'ZzZzzz!' # Segundo métoddo criado dentro da classe "Animal".
  end
end

require_relative 'cachorro' # Esse comando ou as linhas de comando abaixo para fazer a mesma coisas! Respeitando o fluxo do arquivo 'app.rb'.

#class Cachorro < Animal
 # def latir
   # puts 'Au Au'
  #end
#end

puts '--Animal--'
animal = Animal.new
animal.pular #Executa o método "pular".

puts '--Cachorro--'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir
