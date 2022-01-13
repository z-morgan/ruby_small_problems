=begin
method should take a string, and return a new string with the same characters as the input, but with all consonants doubled.

input: string
output: new string

- a consonant is any alphanumeric character that is no a, e, i, o, or u
- the method is case-insensitive
- empty input returns empty output string

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

D: string
A:
initiate a constant containing all lowecase consonants (as an array)
initiate a new string 
iterate through the characters in the input string, and for each:
  check if the lowercase version is a consonant (in consonant array)
    if so, append the character to the new string twice
    if not, append the character to the new string
return the new string

=end

# CONSONANTS = ('a'..'z').to_a.select { |char| char.count('aeiou') == 0 }

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(input_str)
  output_str = ''
  input_str.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      output_str << char << char
    else
      output_str << char
    end
  end
  output_str
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""

