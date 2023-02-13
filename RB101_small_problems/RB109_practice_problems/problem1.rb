# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.


=begin
Write a method which takes an array of numbers, and returns an array of the same length, where 
each number is the count of unique numbers in the original array which are smaller than
the number at that index in the original array.

rules:

input: array of numbers
- minimum length 1
- elements always number objects
- numbers will always be positive integers

return: array of numbers
- same length
- output is a new array object

other:
- each number in output represents the number of unique values smaller than the number 
    at that index in input
    - unique values smaller means if 1, 2, 2 are smaller, there are two unique values


DS:
use result array as intermediate DS.

A:
iterate through input array, and for each:
  get the the unique elements in the array
  select only the elements which are less than current element
  count the number of remaining elements
  use the count as the value at that index in returned array

  count number of unique elments which are smaller
=end


def smaller_numbers_than_current(input_arr)
  input_arr.map { |num_in|
    input_arr.uniq.count { |num| num < num_in }
  }
end


# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".