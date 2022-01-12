=begin
method which takes an integer, and makes an astrisk right triangle with that many stars as sides.

A:
format way:

generate a string with 0 stars
loop this n times
  add one star to string
  use a format method to add spaces to the front, so the total size is n
  display the string

the each way:
generate an array with n spaces as elements
iterate through the array in reverse, and for each:
  convert element at index to star
  convert the array to a string, and display the result
  convert the string back to an array
=end

def triangle(n)
  layer_string = ''
  n.times { layer_string << '*'}
  puts layer_string

  (n - 1).times do
    layer_string.slice!(0)
    puts format("%-#{n}s", layer_string)
  end
end

triangle(5)



