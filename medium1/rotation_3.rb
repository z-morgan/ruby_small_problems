=begin
input: integer
output: integer

- dont have to handle sucessive zeros
- if one digit, returns that digit
- if "_" inserted for clarity, return value has them too
- if the return value would have a leading zero, it can be dropped.

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

A:
create a variable to store the intermediate version of the input integer
loop through a subprocess that rotates a sub-set of intermediate variable
  (the loop should start with the whole number, and reduce the sub-set by one per iteration)
  re-assign the storage variable to the return value of the loop at each iteration
  
looping subprocess:
  take the intermediate value, and the index (or sub-set range) that dictates the subset
  use the subset range to rotate the subset, and replace it's range in the intermediate num with the result of rotation.
  
PS:
set intermediate_num = input_integer
use a loop that tracks the index from left to right:
  set sub_set to the range in intermediate to be rotated
  rotate sub_set
  re-assign intermediate to it's original value with the sub-set range replaced by sub_set
  increment index if needed for loop method
return the last version of intermediate
=end
  
def max_rotation(input_int)
  intermediate = input_int.to_s.chars
  starting_index = 0
  until starting_index >= input_int.to_s.size
    subset = intermediate[starting_index..-1]
    subset = subset[1..-1] + [subset[0]]
    intermediate[starting_index..-1] = subset
    starting_index += 1
  end
  intermediate.join.to_i
end

puts max_rotation(1002) 
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845