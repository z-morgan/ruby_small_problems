=begin
input: string of words and spaces
output: string with the first and last letter of each word in the input string swapped

- the string only contains words and spaces
- each word is at least one letter
- the string has at least one word
- case should be preserved
- return a new object

D: An array of words
A: 
convert the string to an array with each word as an element
for each element, store the first letter in a variable, then mutate the first letter to the letter at the last index
  mutate the last letter to the letter stored in a variable. 
mutate the string, exchanging the letters for their counterparts
join the array into a string and return it


array method pseudo:
  SET first_letter to word[0]
  SET last_letter to word[-1]
  last_letter + word[1,-2] + first_letter

  word[-1] + word[1, -2] + word[0]
=end
require 'pry'

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  
  result.join(' ')
end

# def swap(string_of_words)
#   arr_of_words = string_of_words.split
#   arr_of_words.each do |word|
#     first_letter = word[0]
#     word[0] = word[-1]
#     word[-1] = first_letter
#   end

#   arr_of_words.join(" ")
# end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

