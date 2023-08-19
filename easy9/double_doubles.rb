=begin
method takes an integer, and returns twice that number, unless the input is a double number (if double number, returns the input number (same object)). A digits which make up the first half are identicle to those which make up the second half if it is a double number. 

input: integer
output: integer

- only takes integers
- accepts integers with underscores inserted for clarity
- returns same object if input is double num
- input is double num if the digits in the first half are the same as those in the second half (and in the same order)
- the double num must have an even number of digits.

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

D:
A:
determine whether input is a double number or not
- if it has odd number of digits, it's not, return it multiplied by 2
- if it has even digits AND (this first part is inplied if the method returns an odd integer before this.) 
    the first half equals the second half, return input

first half == second half? subprocess:
  convert the num to string, then split in half. if the halves are equal, it's a double num
  
pass int to a helper method which determines if it is a double num
if true, return num
if false, return twice num

Ps:
convert input int to a string
pass it to a helper method which sees if it is a double
  method: if string has an even number of chars:
    get the first half of string
    get the second half of string
    if the halves are the same, return true
  end if
  return false (if the if doesn't run, or if it runs but doesn't return
  end method
if it is a double, return it, otherwise, return twice it's value)
=end

require 'pry'

def double_num?(int)
  if int.size.even?
    first_half = int[0, (int.size / 2)] 
    second_half = int[(int.size / 2)..-1]
    return true if first_half == second_half
  end
  false
end

def twice(int)
  double_num?(int.to_s) ? int : (int * 2)
end
  
puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10