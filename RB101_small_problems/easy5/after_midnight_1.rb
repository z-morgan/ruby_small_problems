=begin
write a method that takes an integer representing the 
number of minutes before or after midnight, and returns a string containing the time in standard 24hr format.

input: any integer
output: string in "00:00" format. 

- takes positive, negative, and zeri ints
- return value is irrespective of the day that the time falls in. 

D: use variables
A:
convert the input into an integer number of hours, and an integer number of minutes.
if the input was positive:
  format the hours and minutes in a 24hr string and return it
if the input was negative:
  subract the hours from 24, subract the minutes from 60
  format the results in 24hr string and return it. 

Ps:
determine the sign of the input, and store in a boolean
divide the input by 60, and store it in an hours variable
get the modulo of the division, and store in a minutes variable
if sign was positive:
  interpolate the hours and minutes into a string and return it
if sign was negative:
  see algorithm. 
=end

def time_of_day(input_int)
  hours, minutes = input_int.abs.divmod(60)
  hours -= 24 while hours >= 24
  
  if input_int.negative?
    hours = 24 - (hours + 1)
    minutes = 60 - minutes
  end

  "#{format("%02d", hours)}:#{format("%02d", minutes)}" 
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29" 

### Problem 2 ###

SECONDS_PER_MINUTE = 60
DAYS_OF_THE_WEEK = { 0=>"Sunday", 1=>"Monday", 2=>"Tuesday", 3=>"Wednesday", 4=>"Thursday", 5=>"Friday", 6=>"Saturday" }

def time_of_day(input_int)
  t = Time.new(2000, 1, 2)
  t += (input_int * SECONDS_PER_MINUTE)
  "#{DAYS_OF_THE_WEEK[t.wday]} #{format("%02d:%02d", t.hour, t.min)}" 
end

# puts time_of_day(0)
# puts time_of_day(-3)
# puts time_of_day(35)
# puts time_of_day(-1437)
# puts time_of_day(3000)
# puts time_of_day(800)
# puts time_of_day(-4231)