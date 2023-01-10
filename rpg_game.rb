class Monstro
  attr_accessor :energia, :ataque, :vivo
  def initialize
    self.energia = Random.rand(10) + 6
    self.vivo = true
  end  
  
  def bater(alvo)
    if alvo.esta_vivo?
      self.ataque = Random.rand(5)
      puts "O dano do monstro foi #{self.ataque}"
      alvo.energia -= self.ataque
    else
      puts 'Você está morto!'  
    end
    #puts 'Você está morto! unless is_alive?'
  end
   
  def esta_vivo?
    true if self.energia > 0
  end
end

class Heroi
  attr_accessor :energia, :ataque, :vivo, :numero_de_mortos
  
  def initialize
    self.energia = 30
    self.vivo = true
    self.numero_de_mortos = 0 #O "self" faz atribuir o atributo a classe "Heroi".
  end

  def bater(alvo)
    if alvo.esta_vivo?
      self.ataque = Random.rand(5) + 3 #Tirará no mínimo 3 do oponente.
      puts "Você acertou o monstro, seu dano foi #{self.ataque}"
      alvo.energia -= self.ataque
    else
      puts "O monstro está morto! \n\n"
      self.numero_de_mortos += 1 #Atribui quantidade corrente de mortos.
    end
  end  

    def esta_vivo?
      true if self.energia > 0
    end
end

odim = Heroi.new #Instanciando monstro1
puts odim.inspect

while odim.esta_vivo? #Verifica se o personagem "odim" está vivo.
  fishman = Monstro.new #Instanciando monstro2
  puts fishman.inspect

  while fishman.esta_vivo? && odim.esta_vivo? #Verifica se o personagem "fishman" está vivo e odim também.
    odim.bater(fishman)
    puts"A energia do Fishman é #{fishman.energia}" if fishman.esta_vivo?
    
    if fishman.esta_vivo?
      fishman.bater(odim)
      print "Sua energia é #{odim.energia}"
      puts ''
    end  
  end  
end

puts 'Odim está morto.'
puts "Você matou #{odim.numero_de_mortos} monstros"