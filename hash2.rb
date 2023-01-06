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

    break if(valor == 0) #Condição de saída do looping.

    alunos = [] #Cria-se o array.

    3.times do #Outro tipo de looping, o executando 3 vezes.
      alunos << captura_aluno #Guarda os 3 inputs em um array chamado "alunos"
    end
    
    mostrar_alunos(alunos) #Chama o método "mostrar_alunos" passando "aluno" como parâmetro.
end