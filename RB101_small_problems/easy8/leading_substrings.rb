# def leading_substrings(str)
#   count = 1
#   output_arr = []
#   until count > str.size
#     output_arr << str[0, count]
#     count += 1
#   end
#   output_arr
# end

def leading_substrings(str)
  arr = []
  0.upto(str.size - 1) { |index| arr << str[0..index] }
  arr
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# three ways to capture a range in a string
str[0] + str[1] + str[2]
str[0, 3]
str[0..2]
