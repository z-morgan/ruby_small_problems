=begin
input: float
output: string

- encapsulate angle in %()
- a degree has 60 minutes, a minute has 60 seconds

D: variables, one for each level
A:
initiate variables for degrees, minutes, and seconds
convert the input to an integer to the the degrees
get the remainder of dividing the input by the degrees, call it x, multiply it by 100
  convert that number into an integer to get the minutes
get the remainder of dividing x by the minutes, multiply it by 100, and convert it to an integer to get seconds
use string interpolation and format method to return the values in the correct format
=end
require 'pry'

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

# def dms(input_float)
#   degrees = input_float.to_i
#   minutes_float = MINUTES_PER_DEGREE * (input_float % degrees) rescue minutes_float = 0
#   minutes = minutes_float.to_i
#   seconds = (SECONDS_PER_MINUTE * (minutes_float % minutes)).to_i rescue seconds = 0

#   "%(#{format("%02d", degrees)}#{DEGREE}#{format("%02d", minutes)}'#{format("%02d", seconds)}\")"
# end

def dms(new_float)
  arr = []
  index = 0
  arr << new_float.to_i

  until index == 2 
    arr[index] == 0 ? new_float = MINUTES_PER_DEGREE * new_float : 
      new_float = MINUTES_PER_DEGREE * (new_float % arr[index])
    arr << new_float.to_i
    index += 1
  end

  "%(#{format("%02d", arr[0])}#{DEGREE}#{format("%02d", arr[1])}'#{format("%02d", arr[2])}\")"
end

puts dms(30)
puts dms(76.73)
puts dms(254.6) 
puts dms(93.034773)
puts dms(0)
puts dms(360)