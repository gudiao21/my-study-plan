class Animal
attr_reader :nome #Cria o getter e Lê dentro do atributo "nome" declarado dentro do método como "@nome"
attr_writer :nome #Cria o getter e escreve dentro do atributo "nome" declarado dentro do método como "@nome"
attr_accessor :especie #Cria o getter e Lê e escreve dentro do atributo "nome" declarado dentro do método como "@nome"

  def initialize(n,e)
    @nome = n #Aqui se define o atributo "nome" para o Pet. O "@" significa que é uma variável de instância, ou seja, para cada objeto será possível se criar "nome" distintos.
    @especie = e #Aqui se define o atributo "espécie" para o meu Pet. O "@" significa que é uma variável de instância, ou seja, para cada objeto será possível se criar "espécies" distintas.
  end
end

pet = Animal.new(n, e)#Aqui se cria o Objeto pet, ou seja, instancía-se a classe.
puts "Qual o nome de seu animal de estimação?"
pet.nome = gets.chomp()
puts "Qual a espécie do pet?"
pet.especie = gets.chomp()

puts pet.nome
puts pet.especie