agenda = {
    Ana: '8989-8989',
    Pedro: '8787-8787'
}

while true
    puts ''
    puts '1 - Adicionar'
    puts '2 - Atualizar'
    puts '3 - Exibir'
    puts '4 - Excluir'

    print 'Escolha uma opção: '
    escolha = gets.chomp
    puts ''
    
    case escolha
    when '1'
      print 'Insira o nome do contato: '
      nome = gets.chomp
      if agenda [nome.to_sym].nil?
        print 'Insira o telefone: '
        telefone = gets.chomp
        agenda[nome.to_sym] = telefone
      end
    end  
end