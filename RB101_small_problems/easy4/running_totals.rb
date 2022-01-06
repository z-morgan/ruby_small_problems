=begin
input: array of integers
output: array of integers

- output has the same number of elements as input
- each element in output is a running total of the elements in input at that index
- running total is the sum of the current element and each element preceeding it.
- elements are positive integers
- an empty input array returns an empty array
- return a new object

DA:
create a varable to track the sum
create an empty output array
iterate through input:
  for each element, add the element to the sum variable
  append the sum variable to the output array.
return the output array
=end

# def running_total(input_arr)
#   current_sum = 0
#   output_arr = []
#   input_arr.each do |num|
#     current_sum += num
#     output_arr << current_sum
#   end
#   output_arr
# end

# def running_total(input_arr)
#   sum = 0
#   input_arr.map { |int| sum += int }
# end

def running_total(arr)
  


end


puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []