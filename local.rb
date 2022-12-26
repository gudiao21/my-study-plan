def foo
  #Pode ser definida como local ou _local
  local = 'local é acessada apenas dentro deste método'
  print local
end

foo

puts local # Não pode ser atendido fora do método.