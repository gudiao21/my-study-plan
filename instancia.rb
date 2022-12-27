#Programa que consiste em mostar a aplicação de uma "variável de instância".
class User
  def add(name) #Primeiro método da classe "User".
    @name = name #Criando variável de instância "@name".
    puts "User adicionado."
    hello #Chamada do método "hello" dentro do método "add".
  end
  
  def hello #Segundo método da classe "User".
    puts "Seja bem vindo, #{@name}!"
  end
end

user = User.new 
user.add('Luciano')

#A "variável de instância" consiste em métodos diferentes conseguir acessar a mesma variável(@name)!Entretanto, cada objeto terá a sua variável de instância para a mesma classe.