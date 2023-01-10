class Monstro
  attr_accessor :energia, :ataque, :vivo
  def initialize
    self.energia = Ramdom.rand(10) + 6
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

monstro1 = Monstro.new #Instanciando monstro1
monstro2 = Monstro.new #Instanciando monstro2
puts monstro1.inspect
puts monstro2.inspect

monstro1.