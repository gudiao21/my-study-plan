#Programa que aplica o conceito de atributo (Variável de Instância).Isso tudo de 2 formas diferentes.A primeira mais rápida, simples e sofisticada e a outra mais arcaica.
class Dog
  attr_accessor :name, :age #Passagem de 2 atributos. Aqui é como se eu criasse mais de 1 métodos em uma linha de comando.
end

dog = Dog.new 
dog.name = 'Rex'
puts dog.name

dog.age = '1 ano'
puts dog.age

#Outra forma de fazer:

class Dog
  def name #Primeiro método da Classe Dog.
    @name # O "return" é opcional. Lê a "variáel de instância", @name.
  end
  
  def name= name #Segundo método da classe name.
    @name = name # "Seta" o valor, ou seja, chama a variável de instância de "name".
  end
end

dog = Dog.new #Criando uma instância do objeto "dog".
dog.name = 'Rex' #Preenchendo a variável de instância "name" do dog como Rex.
puts dog.name #Printa o nome do dog.