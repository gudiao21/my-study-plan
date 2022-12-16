nome  = "Luciano"
#Nesse passo a seguir usaremso o 'heredoc',pois a 
#mensagem é muito grande!
#A seguir usaremos a Interpolação em 'Olá #{nome}':
mensagem = <<~MENSAGEM
  Olá #{nome}
  Bem vndo(a) ao meu programa!
  Obrigado
MENSAGEM
puts mensagem  