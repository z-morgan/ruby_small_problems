=begin
input: integer greater than 0, string
output: integer

A:
propmt the user for an integer greater than zero
store in variable and convert it to integer
ask the user whether they want to sum or multiply the integers from 1 up to their chosen number?
store in variable titled 'choice'
if 'choice' is 's', 
  add all of the numbers from 1 to the num they chose
    initiate a variable called 'result' with a value of 0
    iterate through 1 to num, adding each number to 'result'
    put 'result' to the console
if 'choice is 'p', 
  multiply all of the numbers from 1 to the num they chose
    initiate a variable called 'result' with a value of 1
    iterate from 1 to num, multiplying 'result' by each num.
    put the result to the console
=end

puts 'Please enter an integer greater than 0: '
num = gets.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

case choice
when 's'
  result = 0
  result = (1..num).inject(:+)
  puts result
when 'p'
  result = 1
  result = (1..num).inject(:*)
  puts result
end
