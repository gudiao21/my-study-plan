def linear_search(array,Key)
  i = 0
  while i < array.length #Enquanto i for menor que o total de elementos do array.
    if array[i] == key # Se o elemento do array com índice "i" for = 3.
      return "#{key} at index #{array.index(key)}" #Imprima na tela ...