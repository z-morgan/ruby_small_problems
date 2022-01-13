=begin
method takes an integer, and returns the integer with the digits in reverse order

input: integer
output: integer (new object)

- the digits must be in reverse order
- the output should not have leading zeros, it's a normal integer
- no empty inputs, no inputs with leading zeros

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

D: string
A:
convert the input integer to a string
reverse the string
convert the string back to an integer and return it.

=end

def reversed_number(int)
  int.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1