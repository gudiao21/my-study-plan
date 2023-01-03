#O método "map" sempre vai retornar um array.
print [1, 2, 3, 4, 5, 6, 7, 8, 9].map {|numero| numero * 2} #collect = map
hash = {bacon: "protein", apple: "fruit"}
print hash.map {|k, v| v.size}
array = %w(1 2 3) #O método "%w" é um atalho para criar um array de strings. Ele é útil quando você escrever uma lista de palavras como elementos de um array, pois é mais curto e mais legível do que usar aspas e vírgulas. Seria a mesma coisa de eu criar "Array = ["1", "2", "3"].
p array.map {|n|n.to_i} #Receberia o array = %w(1 2 3) e o transformaria em integer.