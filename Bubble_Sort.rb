def bubble_sort(lista)
       
  comprimento = lista.length #Poderia por "size" no lugar de "length" para saber a quantidade total de elementos.
  
  loop do 
    trocado = false #É preciso criar essa variável que vai ser usada para que não caia em um Loop infinito!Aqui se gerencia a troca.
    (comprimento-1).times do|i| #Comando para execultar o LOOP para cada elemento da lista.
 
      if
        lista[i] > lista [i+1] # Se o elemento anterior da lista for maior que o posterior.
        lista[i], lista[i+1] = lista[i+1], lista[i] #Então troque a posição dos 2 elementos (só fará isso se o comando acima for satisfeito)
        trocado = true
      end  

    end
    break if not trocado # Esse comando terminará o Loop se a variável "trocado" não for configurado para verdadeira, ou seja, se for FALSO, pois no último comando o mesmo recebeu "True" como valor.
    # boleano. É aqui que ele checa se todos os elementos estão em ordem crescente, do primeiro elemento ao último, porque se não tiver o LOOP será execultado novamente.
    # sem troca significa que a lista já está ordenada, sendo assim não precisa mais de comparações.
  end
  
  lista # retorna o novo array com a sequencia de trocas correntes.

end

#p bubble_sort([4, 0, 3, 2, 9]) Pelo que entendi os 2 comandos abaixo poderia se resumir a apenas esse comando nessa linha!
a = [4, 0, 3, 2, 9]
p bubble_sort(a)
