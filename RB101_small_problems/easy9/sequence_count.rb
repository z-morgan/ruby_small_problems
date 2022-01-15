=begin

method takes two integers as arguements, it returns an array with the same number of elements as the first arguement
where each element is a multiple of the second arguement.

input: two integers as arguments
output: array of integers

- multiple means arguement * n where n starts at 1 and increases by 1 each time
- first arguement is zero or greater
- second arguement can be any integer
- if the first arguement is zero, an empty array is returned. 

D: array 
A:
create an empty array
create a variable called mult and set it to 1
loop until mult is greater than count
  - add start num * mult to array
  - add one to mult
return the array
=end

def sequence(count, start_num)
  output_arr = []
  mult = 1
  count.times do
    output_arr << (start_num * mult)
    mult += 1
  end
  output_arr
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []