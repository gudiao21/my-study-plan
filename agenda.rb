agenda = {
  Ana: '8989-8989',
  Clara: '8787-8787',
  Pedro: '2323-2323'
}

while true
	puts ""
	puts "1 - Adicionar"
	puts "2 - Atualizar"
	puts "3 - Exibir"
	puts "4 - Excluir"

	print "Escolha uma opção: "
	escolha = gets.chomp
	puts ""

	case escolha
	when '1'
	  print "Insira o nome do contato: "
	  nome = gets.chomp
	  if agenda[nome.to_sym].nil?
	    print "Insira o telefone: "
	    telefone = gets.chomp
	    agenda[nome.to_sym] = telefone.to_i
	    puts "#Você adicionou #{nome} com o telefone #{telefone}."
	  else
	    puts "Este nome já existe na sua agenda"
	  end
	when '2'
	  puts "Que nome você gostaria de atualizar?"
	  nome = gets.chomp
	  if agenda[nome.to_sym].nil?
	    puts "Nome não encontrado!"
	  else
	    puts "Qual o novo telefone?"
	    telefone = gets.chomp
	    agenda[nome.to_sym] = telefone.to_i
	    puts "#{nome} foi atualizado, seu novo telefone é #{telefone}."
	  end
	when '3'
	  agenda.each do |nome, telefone|
	    puts "Nome: #{nome} - Telefone: #{telefone}"
	  end
	when '4'
	  puts "Qual nome você gostaria de apagar?"
	  nome = gets.chomp
	  if agenda[nome.to_sym].nil?
	    puts "Nome não encontrado!"
	  else
	    agenda.delete(nome.to_sym)
	    puts "#{nome} foi deletado."
	  end
	else
	  puts "Desculpa, opção inválida."
	end

end