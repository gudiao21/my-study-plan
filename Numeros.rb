class Integer
  def +(outro_valor)
    #Comando abaixo redefinirá o valor do método "+"
    #para "-"
    self - outro_valor
  end
end
p 10 + 5
puts "-" *10
#Retorna True se for par e false se for ímpar.
p 10.even