=begin
input: the users age, and the age they want to retire
output: The current year, the year they will retire, and difference between the two.

- determine the current year and base it off of that. 

A:
Get the users age and the age they want to retire. Store these in variables
Get the current year from the Time class/object
subtract the retirement age from the current age, store in a variable
add that value to the current year to get the year of retirement. store in a variable

=end

puts "What is your age?"
current_age = gets.chomp.to_i

puts "What age would you like to retire?"
target_age = gets.chomp.to_i

time = Time.new
current_year = time.year

years_left = target_age - current_age
target_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{target_year}."
puts "You only have #{years_left} years of work to go!"
