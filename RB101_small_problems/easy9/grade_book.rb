=begin
method takes three integers as arguements, and returns the letter grade associated with the average of the three.

- input is always 0 to 100 inclusive
- input is int, output is string
- letter is assign according to given scheme

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
get_grade(2, 0, 80) == 'F'

D:
A:
get the average of the three input values
use conditionals to determine which letter grade suits the score
return the letter grade as a string

Ps
score = (int1 +  int2 + int3) / 3
use case score
=end

def get_grade(int1, int2, int3)
  score = (int1 + int2 + int3) / 3
  if score >= 90 && score <= 100
    'A'
  elsif score >= 80 && score < 90
    'B'
  elsif score >= 70 && score < 80
    'C'
  elsif score >= 60 && score < 70
    'D'
  else
    'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(2, 0, 80) == 'F'
puts get_grade(100, 100, 100) == "A"
puts get_grade(60, 60, 60) == "D"
puts get_grade(0, 0, 0) == 'F'
