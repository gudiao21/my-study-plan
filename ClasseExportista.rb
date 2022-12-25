class Esportista # Classe Pai.
  def competir
    puts 'Participando de uma competição.'
  end
end

class JogadorDeFutebol < Esportista # Classe Filho.
  def correr
    puts "Correr atrás da bola."
  end
end

class Maratonista < Esportista # Classe Filho.
  def correr
    puts 'Percorrendo o circuito.'
  end
end

#esportista = Esportista.new

jogador = JogadorDeFutebol.new
maratonista = Maratonista.new

jogador.competir
jogador.correr
maratonista.competir
maratonista.correr