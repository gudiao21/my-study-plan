novo_jogo = "s"

while novo_jogo == "s"
  palavras = %w{cachorro gato camelo formiga morcego dromedário}
  palavra_sorteada = palavras.sample #Escolhe aleatoriamente uma palavra acima.
  palavra_tamanho = palavra_sorteada.size

  puts "Descrubra a palavra que eu estou pensando! "

  palavra_parcial = [] #criação de um array.
  palavra_tamanho.times do
  palavra_parcial << " _ " #O looping vai fazer ter "_" com mesmo número de letras da palavra.
  end

puts palavra_parcial.join #Imprime a quantidade exata de "_" que a palavra escolhida tem.

fim = false #atribui false à variável "fim".

while fim == false #Comparando fim com false.
  puts "Escolha uma letra: "
  sua_letra = gets.chomp

  aux = 0
  palavra_sorteada.each_char do |letra_palavra| #Para cada caracter faça.
    if palavra_parcial[aux] == ' _ ' #Se a letra_parcial no respectivo índice = "_".
      if letra_palavra == sua_letra
        palavra_parcial[aux] = sua_letra #imprime "sua_letra" no lugar do "_".
      end
    end
    
    aux += 1  
    end
  
  if palavra_parcial.join.count(" _ ") > 0 #Concatena 2 métodos(join e count).condição para o término do jogo.
    fim  = false
    puts palavra_parcial.join
  else
    fim = true # Sai do "while", pois o jogo acabou.
  end
end

  puts "Parabéns, a palavra era '#{palavra_parcial.join}'!" #Imprime a palavra acertada.
  puts "Deseja jogar novamente? (s/n)"
  novo_jogo = gets.chomp
end

puts "Obrigado por jogar."