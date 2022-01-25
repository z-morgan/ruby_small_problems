=begin
method takes a string, and returns a hash containing the ratio of cases in the input
input: string
return: hash

- the input string will always contain at least one character
- report the ratio of lowercase:uppercase:neither
- anything that is not alphabetical is qualified as neither
- percentage should be a float with one decimal place
- (total in cat / total) * 100


letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

D: three storage array
A:
create two arrays, one with all the lowercase chars, one with all uppercase chars
use count to find the total number of characters in input_string that are upper and lower

input those values along with the number of remaining chars into the percentage formula
add the resulting float as a value to the hash to be returned

=end

LOWER = 'abcdefghijklmnopqrstuvwxyz'
UPPER = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def letter_percentages(input_str)
  upper_num = input_str.count(UPPER)
  lower_num = input_str.count(LOWER)
  remaining_num = input_str.size - (upper_num + lower_num)

  hsh = {}
  hsh[:lowercase] = ((lower_num.to_f / input_str.size) * 100).round(1)
  hsh[:uppercase] = ((upper_num.to_f / input_str.size) * 100).round(1)
  hsh[:neither] = ((remaining_num.to_f / input_str.size) * 100).round(1)
  hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')