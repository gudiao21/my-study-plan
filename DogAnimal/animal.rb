class Animal
  def pular
    puts 'Toing! tóim! bóim! póim'
  end

  def dormir
    puts 'ZzZzzz!'  
  end
end

class Cachorro < Animal
  def latir
    puts 'Au Au'
  end
end

puts '--Animal--'
animal = Animal.new
animal.pular #Executa o método "pular".

puts '--Cachorro--'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir
