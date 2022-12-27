#Programa para exemplificar como é uma "variável de classe".
class User
  @@user_count = 0
  def add(name)
    puts "User #{name} adicionado"
    @@user_count += 1
    puts @@user_count
  end
end

first_user = User.new #Cria o objeto "first_user" para o classe "User".
first_user.add('João') # Chama o método "add" e passando o parâmetro 'João' para a mesma.

second_user = User.new #Cria o objeto "second_user" para o classe "User".
second_user.add('Mario') # Chama o método "add" e passando o parâmetro 'João' para a mesma.

third_user = User.new #Cria o objeto "third_user" para o classe "User".
third_user.add('Luciano') # Chama o método "add" e passando o parâmetro 'João' para a mesma.

#Obs: A "variável de Classe" compartilha com todos os métodos existentes dentro dela.