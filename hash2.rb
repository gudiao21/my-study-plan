# a = {}
# a["nome".to_sym] = "danilo" # "to_sym" transforma string em simbolo.
# a["tel".to_sym] = 8087098089
# puts a

loop do
    puts "Bem vindo ao programa"
    puts "Digit 0 para sair ou 1 para continuar."
    valor = gets.to_i

    break if(valor == 0)

    alunos = [] #Cria-se o Hash

    3.times do
      aluno = {}
      
      puts "Digite o nome do aluno"
      aluno[:nome] = gets.delete("\n") #deleta o "/n", mostrando tudo em uma linha só.

      puts "Digite telefone do aluno"
      aluno[:tel] = gets.chomp #deleta o "/n", mostrando tudo em uma linha só.

      alunos << aluno
    end
    
    alunos.each do |aluno|
      puts "========================="
      puts "aluno: #{aluno[:nome]}, telefone: #{aluno[:tel]}"
    end
end