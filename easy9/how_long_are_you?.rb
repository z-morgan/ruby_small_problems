=begin

method takes a string, and returns an array containing each word in the input with a space and it's length 
input: string
output: array of strings

- a word is any substring demarkated by a space
- assume there are never two consecutive spaces in the input
- and empty string input returns an empty array
- all characters are counted when determining the word length, even if not alphanumeric

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

D: Array
A:
convert string to array of words
iterate through the array and for each element:
  get its length and convert it to a string
  append a space and the length to the element
return the array

=end

def word_lengths(input_str)
  input_str.split.map { |sub_str| sub_str + ' ' + sub_str.size.to_s }
end

puts word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

puts word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

puts word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

puts word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

puts word_lengths("") == []
