=begin
method takes string, returns true if all alphabetic chars are uppercase
input: string
output: boolean

- non-alphabetic chars are ignored
- emtpy str returns true
- so... return false if there ARE lowercase letters in the string

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

A:
use a conditional operator to return false if there are any lowercase chars in the input

0 == the number of lowercase chars
=end

def uppercase?(str)
  0 == str.count('a-z')
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true