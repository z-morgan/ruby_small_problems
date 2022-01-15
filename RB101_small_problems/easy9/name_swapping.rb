=begin

method takes a string, whhich is a two word name. it returns a string with the last name first followed by a comma, space and then the first name
input:string
output:string

- always two word name as input
- assume new object

swap_name('Joe Roberts') == 'Roberts, Joe'

D: array
A:
convert the string to an array containing the first and last name as elements 
use string interpolation to insert the elemetns in order, and then return the string

=end

# def swap_name(name)
#   name_arr = name.split
#   "#{name_arr[1]}, #{name_arr[0]}"
# end

def swap_name(name)
  name.split.reverse.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'