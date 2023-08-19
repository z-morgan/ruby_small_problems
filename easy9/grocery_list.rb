=begin
method takes an array of sub-arrays where each sub-array contians a fruit string and an integer. returns an array contianing the integer number of each fruit string.
input: nested array
output: array

- input array can contain any number of sub-arrays
- assume that a count of zero causes that fruit not to me listed in the return array
- empty array returns and empty array
- empty sub-array does not add anything to returned list
- not specified whether it returns the same object

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  
buy_fruit([]) == []

buy_fruit([[], ['blueberry', 0], ['apple', 1]]) == ['apple']

D: array and iteration methods
A:
create a new array
iterate through the input, and for each sub-array
add the fruit to the new array integer number of times
return the new array

=end

# def buy_fruit(input_list)
#   output_list = []
#   input_list.each { |sub_arr| sub_arr[1].times { output_list << sub_arr[0] } unless sub_arr.empty? }
#   output_list
# end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  
puts buy_fruit([]) == []

puts buy_fruit([[], ['blueberry', 0], ['apple', 1]]) == ['apple']