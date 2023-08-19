=begin
input: integer 
output: string

-zero or greater

A:
get the modulo of 10 for the integer, and using a hash legend, add the coorespoding string character it to an array. 
divide the interger by 10. 
repeat the above steps until the interger is zero or less. 
join the array into one string

SET DIGITS to a hash containing the numerals as keys and the string characters as values
SET result to an empty string
convert integer to an array of numerals
iterate through the array, using the DIGITS hash to add the correct character to result at each index
=end
require 'pry'

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3',
  4 => '4', 5 => '5', 6 => '6',
  7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(input_int)
  result = ''
  input_int.digits.each { |int| result << DIGITS[int] }
  result.reverse
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'