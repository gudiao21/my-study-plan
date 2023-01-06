# a = {}
# a["nome".to_sym] = "danilo" # "to_sym" transforma string em simbolo.
# a["tel".to_sym] = 8087098089
# puts a

def captura_aluno
  aluno = {}
  puts "Digite o nome do aluno"
  aluno[:nome] = gets.delete("\n")

  puts "Digite telefone do aluno"
  aluno[:tel] = gets.delete("\n")
  
  aluno
end  

  def mostrar_alunos(alunos)
    alunos.each do |aluno| #outro looping
      puts "========================="
      puts "aluno: #{aluno[:nome]}, telefone: #{aluno[:tel]}"
    end
  end  

loop do
    puts "Bem vindo ao programa"
    puts "Digit 0 para sair ou 1 para continuar."
    valor = gets.to_i

    break if(valor == 0)

    alunos = [] #Cria-se o Hash

    3.times do #Outro tipo de looping
      alunos << captura_aluno
    end
    
    mostrar_alunos(alunos)
end