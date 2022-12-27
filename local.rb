#Pequeno programa para exemplificar como é uma "variável local".
def foo
  #Pode ser definida como local ou _local
  local = 'local é acessada apenas dentro deste método'
  print local
end

foo

puts local # Não pode ser atendido fora do método, pois é uma variável local apenas.