=begin
input: array with strings as elements
output: same as input, but with vowels removed from elements

test cases:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

- try and return the same objects... see how it goes
- ignores case

D: array, original objects
A: 
iterate through the input array, and for each element:
  delete all vowels from the string
=end

def remove_vowels(input_arr)
  input_arr.each { |string| string.delete!('aeiouAEIOU') }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']