=begin
method takes integer greater than zero, and returns an array of all ints from 1 to input inclusive
input: int
output: array of ints

- array is inclusive of bounds
- if input is 1, returns an array containing 1

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

D: array
A:
iterate from 1 to the input int, appending each element to the array

initiate a new array
create a range from 1 to input, and iterate through it. 
for each number, append it to the array
return the array

=end

def sequence(input_int)
  arr = []
  if input_int > 0
    (1..input_int).each { |num| arr << num }
  else
    1.downto(input_int) { |num| arr << num }
  end
  arr
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(-1)