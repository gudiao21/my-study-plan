class Esportista
  def competir
    puts 'Participando de uma competição.'
  end
end

class JogadorDeFutebol < Esportista
  def correr
    puts 'Correr atrás da bola.'
    super
  end
end

class Maratonista < Esportista
  def correr
    puts 'Percorrendo o circuito.'
    super
  end
end

esportista = Esportista.new
jogadordefutebol = JogadorDeFutebol.new
maratonista = Maratonista.new

esportista.competir
jogadordefutebol.correr
maratonista.correr