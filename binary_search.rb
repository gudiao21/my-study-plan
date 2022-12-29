
def binary_search(list, item)
    low = 0 #Definindo o 'low' e o 'high' para o início e fim da lista, respectivamente.
    high = list.length - 1
  
    while low <= high 
      mid = (low + high) / 2 #Calculando o ponto médio da lista.
      guess = list[mid] #Guess será o elemento que ocupa a posição meio da lista. 
  
      if guess == item #Se o elementto que ocupa a posição meio da lista for igual ao item.
        return mid #Retorne o índice 'mid', ou seja, imprime o índice na tela.
      elsif guess > item 
        high = mid - 1 #Significa que o item deve ser procurado na metado inferior da lista.
      else
        low = mid + 1 #Se o 'guess' < 'item', low = mid + 1. Isso significa que o item dver ser procuradeo na metade superior da lista.
      end
    end
  
    #return nil
  end
  
  my_list = [2, 3, 5, 7, 9]
  puts binary_search(my_list, 7) # => 1, retorno do índice.
  
  # We need to use .inspect here because just printing nil.
  # would output an empty string.
