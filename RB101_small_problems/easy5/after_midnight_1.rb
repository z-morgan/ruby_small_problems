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


###### Second attempt at the original problem, while studying for RB109 interview assessment ###

=begin
method takes an integer, and returns a string in 24 hour time format. The return value is the time of day cooresponding to the input integer before or after midnight. 
input: integer
return: string

- if the input is negative, the return value is the input number of minutes before midnight.
- if the input is positive, the return value is the input number of minutes after midnight.
- if input is zero, return '00:00'

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

D:
A:
get the number of minutes after midnight:
store the sign, and then treat the absolute value of the number according to the sign it had.
if the value exceeds 1440, subtract 1440 from the value until the value is less than 1440.
if the value is negative, subtract the value from 1440 to get the number of minutes after midnight
if the value is positive, it is the number of minutes after midnight.

divide the number of minutes after midnight by 60, and report that as the number of hours
the remainder is the number of minutes
use string interpolation to insert those numbers into a string, which is returned. 
if either value is only one digit, add a zero character to the string in front of it. 
=end

def get_min_after_midnight(int)
  is_positive = true
  is_positive = false if int < 0
  abs_int = int.abs
  until abs_int < 1440
    abs_int -= 1440
  end
  abs_int = 1440 - abs_int unless is_positive
  abs_int
end

def form(str)
  str = '0' + str if str.size < 2
  str
end

def time_of_day(int)
  min_after_midnight = get_min_after_midnight(int)
  hours = min_after_midnight / 60
  minutes = min_after_midnight % 60
  hours_str = form(hours.to_s)
  minutes_str = form(minutes.to_s)
  hours_str + ':' + minutes_str
end