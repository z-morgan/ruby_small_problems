# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.


=begin
write a method which takes an array of integers, and returns the smallest sum which can be 
formed from 5 consecutive elements.

input: array of integers
- can be negative

return the sum as integer, or nil if fewer than 5 consecutive elements in input array


DS:
array of possible sums

A:
if length of input array is < 5, return nil

get each overlapping sequence of 5 consecutive numbers and for each sequence:
    get the sum of those elements
    append sum to storage array
return the minimum value in the storage array



=end

def minimum_sum(input_arr)
  return nil if input_arr.size < 5

  sums = []
  # input_arr.each_cons(5) do |sub_arr|
  #   sums.push(sub_arr.sum)
  # end

  idx = 0
  while (idx + 4) < input_arr.size do
    sums.push(input_arr[idx...(idx + 5)].sum)
    idx += 1
  end

  return sums.min
end



# Examples:

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".