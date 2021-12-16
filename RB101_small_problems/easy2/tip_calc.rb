=begin
requirements:
input: two floats, one is the total amount of the bill, the other is the percentage that the tip will be
output: the tip amount, and the new total
- get the inputs from the user
- format the output for currency 
- accept input if it is integer only, or if it has $ or % respectively

A:
define a money de-format method
  input: string containing float-like numbers with or without "$"
  output: float 
  - if the string contains $, remove it
  - convert string into float

define a percentage de-format method
  input: string containing float-like number with or without "%"
  output: float
  - if string contains %, remove it
  - convert string to float

prompt the user for the bill total and the tip percentage
store these as strings in variables
call format methods on the varialbes to convert them into floats without units
calculate the tip amount and store in a variable
calculate the total bill amount and store in a variable
print the outputs to the console with proper formatting for currency

=end

def money_to_float(str)
  str.gsub!('$','') if str.include?("$")
  str.to_f
end

def percent_to_float(str)
  str.gsub!('%','') if str.include?('%')
  str.to_f
end

puts "What is the bill? "
bill_total = money_to_float(gets.chomp)

puts "What is the tip percentage? "
tip_percentage = percent_to_float(gets.chomp)

total_tip = ((tip_percentage / 100) * bill_total)
bill_plus_tip = (total_tip + bill_total)

puts "The tip is $#{format("%.2f", total_tip)}"
puts "The total is $#{format("%.2f", bill_plus_tip)}"
