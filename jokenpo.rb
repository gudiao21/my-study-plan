#A regra 
def calcula_vendecor (sua_escolha, pc_escolha)
  resultado = (sua_escolha - pc_escolha) % 3

  if resultado == 1
    'Você ganhou!'
  elsif  resultado == 2
    'PC Ganhou!'
  else
    'Deu empate!'
  end  
end    

opcoes = {
    1 => 'Pedra',
    2 => 'Papel',
    3 => 'Tesoura'
}

opcoes.each do |k, v|
  puts "#{k} - #{v}"
end

print 'Escolha uma opção acima: '
sua_escolha = gets.to_i

while opcoes[sua_escolha].nil?
  print 'Opção inválida! Escolha novamente: '
  sua_escolha = gets.to_i
end

pc_escolha = Random.rand(3) + 1

puts "\nVocê escolheu #{opcoes[sua_escolha]}"
puts "O PC escolheu #{opcoes[pc_escolha]}"

