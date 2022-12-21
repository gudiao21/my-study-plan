def is_pangram(string) #Cria um Método com parâmetro chamado "string".

  alpha = ("a".."z").to_a #Cria e armazena na variável "alpha" um array de letras de "a" até "z".Portando "alpha" foi transformado em um array através do comando ".to_a".
  string.downcase.split("").each do |i| #Para cada elemento do parâmetro "string", que será transformado em minúsculos através do método ".downcase", faça a linha abaixo. O "Split("")" acredito que seria uma forma de ingnorar os espaços encontrados no parâmentro "string", analizando assim letra por letra para cada "i" do parâmetro "string", pois os espaços não são relevantes para a análise em questão!
    if alpha.include?(i) #Se estiver incluso o respectivo elemento i(cada elemento do parâmetro "string" em "The quick brown ...") no array "alpha".
      then alpha.delete(i) #Então delete o respectivo elemento i do parâmetro "string" em alpha. 
    end  
  end

  if alpha.empty? #Se o Array "Alpha" estiver vazio escreva a mensagem abaixo, pois quer dizer que todos os 26 caracteres do array "alpha" foram deletados de um a um para cada correspondente "i" do parâmentro ou argumento chamado "string": "The quick borwn fox  ....".
    puts "Esta string é um pangram" # Escreva isso se o Array estiver vazio.
  else
    puts "Esta String não é um pangram" #Escreva isso se o Array não estiver vazio, ou seja, não sendo deletado todos os elementos de "a" até "z" em alpha, que quer dizer que o parâmetro "string" não é um pangram, porque não contém todas as 26 letras do alfabeto.
  end

  puts "A quantidade de letras que faltam para ser um pangram são/é: #{alpha.length}" #Imprime a quantidade de elementos do Array "alpha".Se todas as letras foram deletadas retornará zero, e se restar x letras aparecerá o número correspondente a ela.
  puts "Letra(s) que faltam para ser um pangram são/é: #{alpha}" # imprimir os caracteres que não foram deletados e que impediram que a frase "The quick brown ..." não seja um pangram.
end

is_pangram("The quick brown fox jumps over the lazy dog!") #chama o Método pelo nome "is_pangram" e passa o parâmetro "string" como " The quick ..."