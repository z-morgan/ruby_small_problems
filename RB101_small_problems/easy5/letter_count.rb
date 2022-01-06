=begin
input: string 
output: hash

write a method which takes a string of words, and returns a hash with the keys
and values representing the word length and the number of words of that length respectively. 

- a word is defined as any run of charcters separated by a space
- an empty sting returns an empty hash
- keys are the word length
- values are the number of words of that length

D: array
A:
convert the string into an array with each word as an element
iterate throug the array, and for each element:
  if there is a hash key for that length of word, increment it's value by 1
  if there is no key for that length yet, create one and assign it a value of 1
return the hash

Ps:
SET letter_count_hsh to empty hash
convert the input string into an array of words, 
for each element in that array:
  if there is a hash element with a key equal to the length of element, 
    increment value by 1
  else create a new key, value pair with a value of 1
return letter_count_hsh
=end

def word_sizes(input_string)
  input_string.split.each_with_object({}) do |word, hsh|
    if hsh.key?(word.size)
      hsh[word.size] += 1
    else
      hsh[word.size] = 1
    end
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

def word_sizes(input_string)
  input_string.split.each_with_object(Hash.new(0)) do |word, hsh|
      hsh[word.size] += 1
  end
end