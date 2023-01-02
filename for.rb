nomes = ["joão", "maria", "josé", "mateus"] #Lista

dict = {nome: "Diego", idade: 35, altura: 1.73} #Hash

#for nome in nomes do / a variável nome poderia ser qualquer outro. 
#puts nome
#end

for k, v in dict do #Para cada Key e valor em "dict" faça:
  puts "#{k}: #{v}" #Imprima "k"de key e "v" de value.
end
