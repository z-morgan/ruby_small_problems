=begin
A:
creat a hash with string numbers as keys and their integer counterparts as values
create an int variable to store the output integer
create boolean variable and set it to true
iterate through the string, until index is out of range
  for each element:
    if el is '-', 
      set boolean variable to false
      increment index by 1
    if el is '+', 
      increment index by 1
    else,
      multiply by 10
      add the element to int.
      increment index by 1
check if boolean value is false, if so, multiply int by -1
return int
=end

DIGITS = { '1' => 1, '2' => 2, '3' => 3, 
  '4' => 4, '5' => 5, '6' => 6, 
  '7' => 7, '8' => 8, '9' => 9, 
  '0' => 0 }

def string_to_integer(input_str)
 
  int = 0
  index = 0
  is_positive = true

  until index == input_str.size
    if input_str[index] == '-'
      is_positive = false
      index += 1
    elsif input_str[index] == '+'
      index += 1
    else
      int *= 10 unless int == 0
      int += DIGITS[input_str[index]]
      index += 1
    end
  end
  int *= -1 if is_positive == false
  int
end


#### LS's solution below
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end


puts string_to_integer('4321') == 4321
puts string_to_integer('-570') == -570
puts string_to_integer('+100') == 100