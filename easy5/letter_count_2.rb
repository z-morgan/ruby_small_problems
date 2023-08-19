=begin
re-write the method to exclude non-alphabetical characters from the count,
so "it's" has a letter count of 3.

pass the word into a helper method before getting it's size. 
the helper method will delete any non-alphabetical characters
=end

def word_sizes(input_string)
  input_string.split.each_with_object(Hash.new(0)) do |word, hsh|
      hsh[clean_up(word).size] += 1
  end
end

def clean_up(word)
  word.delete('^a-zA-Z')
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}