=begin
method takes an integer, and returns the next highest featured number, or an error message
input: integer
output: integer

- a featured number is one that meets all three of the following:
  - it is odd
  - it is a multiple of 7
  - all of the digits in it are unique
  - if the input is a featured number, return the next one

featured(12) == 21
featured(20) == 21
featured(21) == 35 
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987
featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

D:
A:
check if a number is a featured number:
    odd, multiple of 7
    unique digits:
      convert to array of string digits, and see if the uniq version is the same length as original

starting with the input, increment a variable num by 1 until a featured number is reached
  for each iteration, check if num is a featured num
    if so, return it

if num has more than 10 digits, throw an error
=end

def featured(num)
  until num.to_s.size > 10
    num += 1
    return num if featured?(num)
  end
  "There is no possible number that fulfills those requirements"
end
      
def featured?(num)
  return false if num.even?
  return false if num % 7 != 0
  num.to_s.chars.uniq == num.to_s.chars
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35 
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements