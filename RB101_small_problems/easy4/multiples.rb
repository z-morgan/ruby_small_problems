=begin
method input: integer greater than 1
output: integer

- sum the multiples of 3 and 5 between 1 and the input integer
- a multiple of x is a number that when divided by x has a remainder of 0
- include the input integer if it is a multiple of 3 or 5
- if a number is a multiple of 3 and 5, only count it once. 

DA:
Array
- create an array of every valid number, then sum the numbers in the array

initiate an empty array called 'num_repo'
interate from 1 to input num:
  if n % 3 == 0 or n % 5 == 0
    append number to num_repo
sum the contents of num_repo and return them
=end

def multisum(n)
  num_repo = []
  (1..n).each { |x| num_repo << x if (x % 3 == 0) || (x % 5 == 0) }
  num_repo.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
