=begin
write a method that takes two strings, determines which is longer, and concatinates the shorter to either end of the longer
Input: two strings of different lengths
Output: string

- assume the strings will always be unequal in length
- treat an empty string as the shorter string
- treat spaces as characters

E:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

A:
create two empty strings, short and long
assign the short input string to short, and the long input string to long
  if input str 1 > input str 2, set input str 1 = long, set input str 2 = short
  else reverse the assignment
concatonate like this: short + long + short
=end

def short_long_short(str1, str2)
  short = ''
  long = ''

  if str1.size > str2.size
    long, short = str1, str2 
  else
    long, short = str2, str1
  end

  short + long + short
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"


