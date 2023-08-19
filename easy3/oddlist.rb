=begin
write a method that has an array passed in as an arguement, and returns an array with every other element from the arguement array. 

input: an array
output: an array with every other element 
- the returned array should start with the 1st element of the input array
- an empty input array should result in an empty output array
- it does not matter if the returned array is the same object as the input array. 

A: 
initiate a count variable
initiate an empty array
loop through the input array until count is greater than the array length
  append the element at the current index to the empty array
  increment the count variable by 2
return the new array
=end

# def odd_elements(input_array)
#   count = 0
#   output_array = []
#   while count < input_array.size
#     output_array << input_array[count]
#     count += 2
#   end
#   output_array
# end

# def odd_elements(input_array)
#   count = 0
#   output_array = []
#   return output_array if input_array.empty?
#   loop do
#     output_array << input_array[count]
#     count += 2
#     return output_array if count >= input_array.size
#   end
# end

# def odd_elements(input_array) #this version does the even elements
#   count = 1
#   output_array = []
#   while count <= input_array.size
#     output_array << input_array[count]
#     count += 2
#   end
#   output_array
# end

def odd_elements(input_array)
  output_array = []
  # return output_array if input_array.empty?
  input_array.each_index { |i| output_array << input_array[i] if i.even? }
  output_array
end


puts odd_elements([2, 3, 4, 5, 6]) == [2, 4, 6]
puts odd_elements([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts odd_elements(['abc', 'def']) == ['abc']
puts odd_elements([123]) == [123]
puts odd_elements([]) == []

