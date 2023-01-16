def binary_search(list, item)
  low = 0
  high = list.length - 1 #"list.length" nos dará a quantidade total de elementos na lista, mas que a nível de "índex", se começa para o primeiro elemento o "0" e para compensar tem que se diminuir 1 para chegar o índex relativo à metade da lista. OBS: Entre "1" e "0" é obrigatório um espaço.
    
  while low <= high
    mid = (low + high)/2 #"mid" será arrendondado para baixo automaticamente pelo Ruby se (low + high) não for um número par.
    guess = list[mid]
    if guess == item
      return "O elemento é #{item} e seu índice é #{mid}."
    elsif guess > item
      high = mid - 1
    else #Lembrando que o "else" se refere ao que sobrou (guess < item).
      low = mid + 1
    end
  end
end  
  my_list = [2, 3, 5, 7, 9]
  puts binary_search(my_list, 7)