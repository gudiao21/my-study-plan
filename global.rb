#Pequeno programa para exemplificar o conceito de "variável global".
class Bar
  def foo
    $global = 0
    puts $global #chamada da variável $global entro da classe onde foi criada.
  end
end

class Baz
  def qux
    $global += 1
    puts $global #Chamada da variável $global em outra classe.
  end
end

bar = Bar.new #Criação do Objeto
baz = Baz.new #Criação do Objeto
bar.foo #Chamada do método Bar e executa o que está nele.
baz.qux #Chamada do método Baz e executa o que está nele.
baz.qux #Chamada do método Baz, novamente, e executa o que está nele.
puts $global #Chamada da variável $global fora de qualquer classe.

#OBS: Variáveis globais não são recomendadas, pois qualquer método ou lugar no programa que ocorrer um erro com a mesma será difícil identificar.