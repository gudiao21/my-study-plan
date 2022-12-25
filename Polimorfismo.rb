class Instrumento
  def escrever
    puts 'Escrevendo'
  end
end

class Teclado < Instrumento #Herdará o exato método da "class Instrumento"
  def escrever
    puts "tecladoooo"
    super #Além de executar o comando "puts" acima, herda, também, exatamente a "class Instrumento", ou seja, faz o método "puts"(linha 9) e o que se faz na "class Instrumento".
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

teclado = Teclado.new #Criando o objeto "teclado" a partir da "class Teclado". Sendo a "class Teclado" um esboço e o "teclado" o objeto do mundo real.
lapis = Lapis.new #Criando o objeto "lapis" a partir da "class Lapis". Sendo a classe "Lapis" um esboço e o "lapis" é o objeto do mundo real.
caneta = Caneta.new #Criando o objeto "caneta" a partir da "class Caneta". Onde a "Class Caneta" é o esboço e a "caneta" o objeto do mundo real.

lapis.escrever #Chamada do objeto "lapis" que está ligado à "classe Instrumento", mas que o sobrescreve.
caneta.escrever #Chamada do objeto "caneta" que está ligado à "classe Instrumento", mas que o sobrescreve.
teclado.escrever #Chamada do objeto "teclado" que está ligado à "class Instrumento", mas que não o sobrescreve.