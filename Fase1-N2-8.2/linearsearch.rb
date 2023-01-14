#Programa para encontrar um elemento em um array e retornar o mesmo e seu respectivo índice.
def linear_search (array, key) #Criando o método.
  i = 0 #É importante zerar a constante que indicará o índice antes de entrar no looping!
  while i < array.length #Enquanto i for menor que o total de elementos do array.
    if array[i] == key # Se o elemento do array com índice "i" for = 3.
      return "#{key} at index #{array.index(key)}" #Imprima na tela ...
    end
    i += 1 #Incrementando sempre +1 antes de recomeçar o looping.
  end
  return "Element not found in the array." # Para indicar que o elemento não foi encontrado no array.
end

arr = [2, 8, 34, 17, 1, 10, 7, 32, 4, 6]#Criação do Array com 10 elementos.
key = 32 # O número que se deseja achar no array.
p linear_search(arr, key) #Chamada do método com passagem de parâmetros.
