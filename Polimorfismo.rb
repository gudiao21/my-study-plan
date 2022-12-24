class Instrumento
  def escrever
    puts 'Escrevendo'
  end
end

class Teclado < Instrumento #Aqui não há a criação de método, então herdará o exato método da "classe Instrumento", não gerando assim "polimorfismo".
  def escrever
    puts "tecladoooo"
    super #Além de executar o comando "puts" acima, herda, também, exatamente a "classe Instrumento", ou seja, faz o método "puts" e o que se faz a "class Instrumento".
  end  
end

class Lapis < Instrumento
  def escrever #Como tem o mesmo nome do método pai que está na "classe Instrumento", o sobrescreve, gerando assim o "polimorfismo".
    puts 'Escrevendo à Lápis'
  end
end

class Caneta < Instrumento
  def escrever #Como tem o mesmo nome do método pai que está na "classe Instrumento", o sobrescreve, gerando assim o "polimorfismo".
    puts 'Escrevendo à Caneta'
  end
end

teclado = Teclado.new #Criando o objeto "teclado".
lapis = Lapis.new #Criando o objeto "lapis".
caneta = Caneta.new #Criando o objeto "caneta".

lapis.escrever #Chamada do objeto lapis que está ligado à "classe Instrumento", mas que o sobrescreve.
caneta.escrever #Chamada do objeto caneta que está ligado à "classe Instrumento", mas que o sobrescreve.
teclado.escrever #Chamada do objeto teclado que está ligado à "classe Instrumento", mas que não o sobrescreve.