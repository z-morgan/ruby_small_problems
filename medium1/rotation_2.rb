=begin
method takes two integers, and rotates the rightmost number (second arguement) of digites for the first arguement and returns the whole number.
input: two integers
output: integer

- the second arguement is always a positive number
- 1 results in returning the original first arguement
- 

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

D: array
A: 
convert the first arguement to a string, and then array with each digit as an element
split the array into the non-modified section and the section to be modified
  initiate new variables for the sections
  use the partiiton method to seperate each element which is not in the correct index range from the others
rotate the section to be modified
  call the rotation method from the last exercises on it
join the sections back together using array addition
convert back to a string, and then an integer, and return
=end

def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(operand, rotator)
  operand_arr = operand.to_s.chars
  
  left_sect, right_sect = operand_arr.partition.with_index do |num_str, index|
    index < (operand_arr.size - rotator)
  end
  
  new_operand_arr = left_sect + rotate_array(right_sect)
  new_operand_arr.join.to_i
end
  
puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917



