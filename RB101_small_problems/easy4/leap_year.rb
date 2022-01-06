=begin
method input: year as integer
output; boolean

- determine if the year is a leap year
    a leap year is defined as:
      - any year that is evenly divisable by 4, 
      - unless it is also divisable by 100
      - any year that is evenly divisable by 400
- only takes years greater than 0

A:
create a boolean variable set to false

if the year is divisable by 4, set variable to true
if the year is divisable by 100, set variable to false,
if the year is divisable by 400, set the variabe to true

return variable

=end

def leap_year?(year)
  leap = false

  leap = true if year % 4 == 0
  leap = false if year % 100 == 0
  leap = true if year % 400 == 0
   
  leap
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
