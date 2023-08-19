=begin
method takes an integer, and returns an integer

(1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
- formula: (1 + 2 .. + n)**2 - (1**2 + 2**2 + .. n**2)
- input will always be positive integer

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

D:
A:
for the first term:
  create an empty array
  1 to n, for each, add number to array
  sum the elements and square the sum

for the second term:
  use the array from the first term, and transform each value by
  squaring it.
  sum the elements 

subtract the first term from the second
=end

def sum_square_difference(n)
  nums_arr = []
  1.upto(n) { |num| nums_arr << num }
  first_term = nums_arr.reduce(:+)**2

  second_term = nums_arr.map { |num| num**2 }.reduce(:+)
  first_term - second_term
end



p sum_square_difference(3) == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150