p "Qual ano você nasceu?"
anoNascimento = gets.to_i

if (anoNascimento >= 1946 && anoNascimento <= 1964)
  p ("Sou da geração Baby Boomers.")

elsif (anoNascimento >= 1965 && anoNascimento <= 1980)
   p  "Sou da geração X."

elsif (anoNascimento >= 1981 && anoNascimento <= 1996)
   p "Sou da geração Y ou Millennials."

elsif (anoNascimento >= 1997 && anoNascimento <= 2010)
   p "Sou da geração Z."

else (anoNascimento > 2010)
   p "Sou da geração Alfa."
end