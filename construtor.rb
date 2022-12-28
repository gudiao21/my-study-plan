#Programa que envolve o uso de construtores, que é um método.Toda vez que a instância de uma classe é criada, o Ruby procura por um método chamado 'initialize'. Se pode criar este método para especificar valores padrões durante a construção do objeto.

class Person
  
    def initialize(name, age)
    @name = name #Primeiro parâmetro ou argumento.
    @age = age #Segundo parâmetro ou argumento.
  end
  
  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Name = #{@name}"
    puts "Idade = #{@age}"
  end

end

person = Person.new('Luciano', 45) #Passagem de 2 parâmetros na criação do objeto 'person'.
person.check #Chamada do método 'check'.
