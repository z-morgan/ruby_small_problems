=begin
Input: none
Output: "Teddy is *random int* years old!" where int is between 20 and 200.

result should be printed to console

A: 
randomly sample a range from 20 to 200.
use string interpolation to inject that number into the output string
put the string to console 

=end


def get_name
  puts "What is your name?"
  name = gets.chomp
  return "Teddy" if name == ''
  name
end

age = rand(20..200)
puts "#{get_name} is #{age} years old!"