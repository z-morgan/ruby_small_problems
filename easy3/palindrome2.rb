=begin
write a method that takes a string as an arguement, and returns true if the string is a palindrome

- method is case-INSENSITIVE
- method ignores all non-alphanumeric characters

A:
create an array containing all of the alpha-numeric characters in lower-case
downcase the input string
iterate through the string and delete anything that is not in the test-array
  initiate an index variable
  initiate a new str called str2
  for each index, check if that character is in the test array. if so, append it to str2
  increment index
  break the loop when index = input string's size
call the palindome? method from the previous exercise
=end


def palindrome?(str)
  str.reverse == str
end

# This is my first attempt:
# def palindrome2?(str)
#   valid_chars = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 
#     'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '1', '2', 
#     '3', '4', '5', '6', '7', '8', '9', '0']

#   str.downcase!

#   index = 0
#   str2 = ''
#   loop do
#     str2 << str[index] if valid_chars.include?(str[index])
#     index += 1
#     break if index == str.size
#   end
  
#   palindrome?(str2)
# end

#LS's solution:
def palindrome2?(str)
  str = str.downcase.delete('^a-z0-9')
  palindrome?(str)
end

puts palindrome2?('madam') == true
puts palindrome2?('Madam') == true           # (case does not matter)
puts palindrome2?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts palindrome2?('356653') == true
puts palindrome2?('356a653') == true
puts palindrome2?('123ab321') == false

