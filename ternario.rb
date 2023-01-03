#Aula 11 do curso "Ruby para Iniciantes" - Operador Ternário ou Operação Ternária ou Conditional Ternary Operator.
nome = "Diego"
n = 5
if nome.eql? "Diego" #É a mesma coisa de: if nome == "Diego".
  puts "Dono do canal Noob Code se o 'Operador Ternário'."
else
  puts "Visitante"
end
#Abaixo aplicação do Modelo Ternário para eliminação de linhas de código, o tornando mais enchuto.
#condição ? verdadeiro : falso
puts nome.eql?("Diego") ? "Dono do canal Noob Code" : "Visitante"
resultado = nome.eql?("Diego") ? "Dono do canal Noob Code - resultado" : "Visitante - resultado" #A importância de se criar uma variável é que ela pode ser usada mais a frente no código.
puts resultado

#condição ? verdadeiro : falso
soma = n.eql?(5) ? n + 10: n - 1 #Se o n = 5, some n + 10, senão n-1
puts soma