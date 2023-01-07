def cpf_valido?(cpf)
  cpf = cpf.gsub(/[^\d], '')
  return false if cpf.size != 11
  return false if cpf.count(cpf[0]) == 11

  verificadores = cpf[-2..-1]
  cpf_parcial = cpf[0..-2]

  #calcular o primeiro verificador
  soma = 0
  cpf_parcial.chars.each_with_index do |char, index|
    soma += char.to_i * (10 - index)
  end
  
  verificador1 = (soma % 11)
  verificador1 = verificador1 < 2 ? 0 : 11 - verificador1

  #Calcular o segundo verificador
  soma = 0
  cpf_parcial.chars.each_with_index do |char, index|
    soma += char.to_i *(11 - index)
  end
  soma += verificador1 * 2
  
  verificador2 = (soma % 11)
  verificador2 = verificador2 < 2 ? 0 : 11 - verificador2

  verificadores == "#{verificador1}#{verificador2}"
end  