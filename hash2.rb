# a = {}
# a["nome".to_sym] = "danilo" # "to_sym" transforma string em simbolo.
# a["tel".to_sym] = 8087098089
# puts a

loop do
    puts "Bem vindo ao programa"
    puts "Digit 0 para sair ou 1 para continuar."
    valor = gets.to_i

    break if(valor == 0)

    alunos = []
    3.times do
      aluno = {}
      
      puts "Digite o nome do aluno"
      aluno[:nome] = gets

      puts "Digite telefone do aluno"
      aluno[:tel] = gets

      alunos << aluno
    end
    
    alunos.each do |aluno|
      puts "========================="
      puts "aluno: #{aluno[:nome]}, telefone: #{aluno[:tel]}"
    end
end