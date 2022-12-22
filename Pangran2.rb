word = 'The five boxing wizards jump quickly'

def pangram?(word)
  splitted_word = word.downcase.split('')
  missing_letters = ('a'..'z').to_a.each_with_object([]) do |val, acc|
    acc.push val unless splitted_word.include?(val)
  end

  missing_letters.none?
end

pp pangram?(word)