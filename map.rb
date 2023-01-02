#Método map, criando uma nova lista sem alterar a lista do qual recebemos os valores.
nomes = ["João", "Maria", "José", "Mateus"] #Criação da lista com 4 pessoas da mesma família.

nomes_completos = nomes.map do |nome_completo|#Nova lista "nomes_completos" é criada com base na lista "nomes" para cada índice "nome_completo" no array.
#nomes.map! do |nome_completo| #Vai sobrescrever a nossa lista "nomes".
  nome_completo + " sobrenome" #Para cada nome de uma pessoa eu adiciono o "sobrenome".
end

puts nomes #Simples impressão da lista "nomes".
puts "_" * 20
puts nomes_completos #Chama para imprimir na tela o novo Array "nomes_completos" que recebeu o outro Array "nomes".