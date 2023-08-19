=begin
Write two methods, both taking a string in 24hr format as an arguement. One method returns an integer
number of minutes that the input is before midnight, and the other ter midnight. 

- input will not exceed 24 hours, zero minutes
- '00:00' and '24:00' are treated the same, returning zero
- the output should be an integer between 0 and 1439 inclusive

D: variables
A:
Convert the input into a number of hours, and number of minutes
combine the above two to get the total number of minutes. 
- for the after_midnight method:
  return the total number of minutes, unless it is 1440, in which case return 0
- for the before_midnight method:
  subtract number of minutes from 1440, and return that integer
  if the number of minutes is zero, return zero. 

SET MINUTES_PER_DAY to 1440 (at outset)
=end

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def get_total_minutes(time_str)
  hours, minutes = time_str.split(":").map(&:to_i)
  total_minutes = minutes + (hours * MINUTES_PER_HOUR)
end

def after_midnight(input_str)
  total_minutes = get_total_minutes(input_str)
  total_minutes == MINUTES_PER_DAY ? 0 : total_minutes
end

def before_midnight(input_str)
  total_minutes = get_total_minutes(input_str)
  return 0 if total_minutes == 0
  MINUTES_PER_DAY - total_minutes
end

# puts after_midnight('00:00') == 0
# puts before_midnight('00:00') == 0
# puts after_midnight('12:34') == 754
# puts before_midnight('12:34') == 686
# puts after_midnight('24:00') == 0
# puts before_midnight('24:00') == 0

