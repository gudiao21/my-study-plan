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
    numero_de_mortos = 0
  end

  def bater(alvo)
    if alvo.esta_vivo?
      self.ataque = Random.rand(5) + 3 #Tirará no mínimo 3 do oponente.
      puts "Você acertou o monstro, seu dano foi #{self.ataque}"
      alvo.energia -= self.ataque
    else
      puts "O monstro está morto! \n\n"
      self.numero_de_mortos += 1
    end
  end  

    def esta_vivo?
      true if self.energia > 0
    end
end

odim = Heroi.new #Instanciando monstro1
fishman = Monstro.new #Instanciando monstro2
puts odim.inspect
puts fishman.inspect

odim.bater(fishman)
puts fishman.inspect