=begin
method takes integer. returns the negative of that number if input is positive, if zero of negative, returns input int
input: integer
output: integer

- must determine if integer is greater than zero
- if not, return original object

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

A:
determine if input is greater than 0
  If so, multiply it by -1 and return it
  if not, return it
=end

def negative(input_int)
  input_int > 0 ? -input_int : input_int
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby