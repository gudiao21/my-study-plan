def binary_search(list, item)
  low = 0
  high = list.length -1
    
  while low <= high
    mid = (low + high)/2
    guess = list[mid]
    if guess = item
      return "O indice é: #{mid} e o elemento é: #{guess}"
    elsif guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
  my_list = [2, 3, 5, 7, 9]
  p binary_search(my_list, 7)
end              