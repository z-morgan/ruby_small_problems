=begin
write a method that takes a string as an arguement, and returns true if that string is a palindrome

input: string
output: boolean
- palindrome reads the same forward and reverse
- all string characters count, as well as their case

A: 
check to see if the string is equal to the reversed version.
=end

def palindrome?(str)
  str.reverse == str
end

obj = [1, 2, 3, 2, 1]
puts palindrome?(obj)