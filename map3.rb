#O método "map" sempre vai retornar um array.
print [1, 2, 3, 4, 5, 6, 7, 8, 9].map {|numero| numero * 2} #collect = map
hash = {bacon: "protein", apple: "fruit"}
print hash.map {|k, v| v.size}