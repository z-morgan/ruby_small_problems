=begin
input: a string from the user
output: a string displaying how many characters exculding whitespace are in the input string

A:
get the input from the user, store it in a variable
 method 1:
  convert the string to an array of characters excluding whitespace
  count the number of elements

method 2: 
  count the number of non-whitespace characters in the string 

store the number in a variable, and use string interpolation to display it to the user. 
=end

puts "Please write word or multiple words:"
input = gets.chomp

count = input.chars.count

puts "There are #{count} characters in \"#{input}\"."
puts input