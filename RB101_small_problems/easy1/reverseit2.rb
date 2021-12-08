def reverse_long_words(string)
  array = string.split
  array.map { |word| word.reverse! if word.length > 4 }
  
  
  
end

