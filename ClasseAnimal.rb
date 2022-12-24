class Animal
   def pular
     puts 'Toing! tóim! bóim! póim!'
   end
   
   def dormir
     puts 'ZzZzzz!'
   end
end
   
class Cachorro < Animal #Linha de comando para dizer que a classe Cachorro herda a classe Animal.
  def latir #Cria método (comportamento ou Ação) da classe "Cachorro".
    puts 'Au Au' # imprima ação ou comportamento exato atribuído ao método "Latir".
  end  
end

class Gato < Animal #Classe gato herda comportamentos da classe "Animal".
  def meow #Criação de método dentro da classe "Gato".
    puts 'meow'
  end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir
puts "_ " * 10 /n
gato = Gato.new
gato.pular
gato.dormir
gato.meow
gato.latir #Exemplo de como não é possível puxar o método latir que é exclusivo do cachorro, pois dá erro "Undefined method".
