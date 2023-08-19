=begin
method input: string
output: integer

A: 
creat a hash with string numbers as keys and their integer counterparts as values
create an int variable to store the output integer
iterate through the string:
  for each element, multiply by 10 and add the element to int.
return int

=end

# def string_to_integer(input_str)
#   DIGITS = { '1' => 1, '2' => 2, '3' => 3, 
#             '4' => 4, '5' => 5, '6' => 6, 
#             '7' => 7, '8' => 8, '9' => 9, 
#             '0' => 0 }
#   int = 0
#   index = 0
#   loop do
#     int += DIGITS[input_str[index]]
#     index += 1
#     break if index == input_str.size
#     int *= 10
#   end
#   int
# end

# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570


############ unfinished hexidecimal portion ############ 
=begin
hexdec A:
creat a hash with string numbers as keys and their integer counterparts as values
create an int variable to store the output integer
iterate through the string:
  for each character, see if it is a numberal or a letter:
    if numeral, multiply by 10 and add the element to int.
    if letter, multiply by 100 and add the element to int. 
return int

=end

HEXDIGITS = { '1' => 1, '2' => 2, '3' => 3, 
  '4' => 4, '5' => 5, '6' => 6, 
  '7' => 7, '8' => 8, '9' => 9, 
  '0' => 0, 'a' => 10, 'A' => 10, 
  'b' => 11, 'B' => 11, 'c' => 12, 
  'C' => 12, 'd' => 13, 'D' => 13, 
  'e' => 14, 'E' => 14, 'f' => 15,
  'F' => 15
}

def hexstring_to_integer(input_str, legend)
  

  int = legend[input_str[0]]
  index = 1
  until index == input_str.size
    (0..9).include?(input_str[index]) ? int *= 10 : int *= 100
    int += legend[input_str[index]]
    index += 1
  end

  int
end

puts hexstring_to_integer('4D9f', HEXDIGITS) # == 19871