=begin
method takes an array, and returns the array with the first element moved to the end, and the remaining elements shifted down one index.
  the original array must not be modified.
input: array
output: new array

- not mutate the array that is passed to the method as an arguement
- the array can contian any object type it seems. 
- a single element array returns an array that is identicle to the input. 

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

D: a new array
A:
make a copy of the input array,
remove the first element of the array and add it to the end.
return the new array
=end

# def rotate_array(input_arr)
#   new_arr = input_arr.dup
#   new_arr << new_arr.shift
# end

def rotate_array(input_arr)
  input_arr[1..-1] << input_arr[0]
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

def rotate_string(input_str)
  rotate_array(input_str.dup.chars).join
end

y = 'hello'
puts rotate_string('hello') #== 'elloh'
puts y == 'hello'

def rotate_int(input_int)
  rotate_array(input_int.dup.to_s.chars).join.to_i
end

b = 123
puts rotate_int(b) == 231
puts b == 123
