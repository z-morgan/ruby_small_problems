=begin
Input: Length and width floats from the user
Output: sq. m and sq. feet in a string

Takes floats, with no units
puts the output string to the console 

E: 
10 by 7
0 by 0
5.5 by 2.3

D: 
store inputs in variables

A:
Initialize len and wid variables for meters (as floats)
initialize sq_m variable and sq_ft variables (as floats)
Get the len and wid values from the user. 
perform the calculations
use string interpolation to print the answer to the console

=end

SQUARE_METERS_TO_SQUARE_FEET = 10.7639
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCM = 929.0304

puts "Enter the length of the room in feet: "
len = gets.to_f

puts "Enter the width of the room in feet: "
wid = gets.to_f

sq_ft = len * wid
sq_in = sq_ft * SQFEET_TO_SQINCHES
sq_cm = sq_ft * SQFEET_TO_SQCM

puts "The area of the room is #{sq_ft.round(2)} square feet (#{sq_in.round(2)} square inches, #{sq_cm.round(2)} square cm)."

