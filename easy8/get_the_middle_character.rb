=begin
method takes a string, and returns the middle character(s) as a string.
input:string
output:string

- input is never empty string
- if input has even length, return the two middle characters
- if input has odd length, return the middle character
- spaces count as characters
- assume punctuation also counds as characters

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

A:
see if the string has even or odd length
if odd:
  return the character at the middle index
    divide the size of the string by 2 to get the index
if even
  return the characters at the middle indeces
    divide the size of the string by 2 to get the index of the second char
    subtract one from that index to get the index of the first char
    concatonate the chars
=end

def center_of(str)
  middle_index = (str.size / 2)
  case str.size.odd?
  when true then str[middle_index]
  when false then str[middle_index - 1] + str[middle_index]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'