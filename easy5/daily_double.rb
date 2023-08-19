=begin
write a method that takes a string and returns a string with will all consecutive duplicate characters 
converted to a single character.

- consecutive duplicates are characters that immediately follow the same character
So 'ddd' becomes 'd'
- empty string returns empty string
- blind to type of character

D: array
A:
initiate a new empty string
convert the input into an array of characters
iterate through the array, adding each character to the empty string unless
  it matches the last character added
return the new string
=end

def crunch(input_string)
  crunched_str = ''
  input_string.chars.each { |char| crunched_str << char unless char == crunched_str[-1] }
  crunched_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''