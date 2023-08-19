=begin
input: string
ouput: new string object

method takes a string, and returns a new string, containing two of each character in the input string

- all characters count
- and empty string returns and empty string

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

D: array
A: 
create an empty string
create an array with the characters in input string as elements
iterate through the array, and for each character, add two of that character to the new string
return the new string

=end

# def repeater(input_str)
#   output_str = ''
#   input_str.chars.each { |char| 2.times { output_str << char } }
#   output_str
# end

# the LS solution:

def repeater(input_str)
  output_str = ''
  input_str.each_char { |char| output_str << char << char }
  output_str
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''

