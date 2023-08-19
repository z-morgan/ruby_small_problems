=begin
input: integer 
output: string

-zero or greater

A:
see if int is + or -, 
  if + prepend "+" to result
  if - prepend "-" to result
  if 0, don't prepend anything (this branch first)
  end




=end
require 'pry'

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3',
  4 => '4', 5 => '5', 6 => '6',
  7 => '7', 8 => '8', 9 => '9', 
}

def integer_to_string(input_int)
  result = ''
  input_int.digits.each { |int| result << DIGITS[int] }
  result.reverse
end

def signed_integer_to_string(signed_int)
  return '0' if signed_int == 0
  return "+" + integer_to_string(signed_int) if signed_int > 0
  "-" + integer_to_string(-signed_int)
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
