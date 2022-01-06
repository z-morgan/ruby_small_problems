=begin
write a reverse! method without using that ruby method. So it takes an array, 
  and reverses it in-place(mutates the original object), and returns that object.

- reverses only the order of elements, not any of the elements themselves. 

D: array
A:
setup a loop that:
  pops the -1 object off and adds it to index 0
next it:
  pops the -1 object off, and adds it to index 1 (don't know how to add in the middle of an array)
continues for (n - array.size) times

A2:
loop

[1, 2, 3, 4, 5]


back_num = nil
index = 0
loop through the following: until index == (arr.size / 2) - 1
  set back_num to arr[-(index + 1)]
  reassign arr[-(index + 1)] to arr[index]
  reassign arr[index] to back_num
  index += 1
end
=end

def reverse_array(arr)
  # back_num = nil
  index = 0
  until index > ((arr.size / 2) - 1)
    # back_num = arr[-(index + 1)]
    # arr[-(index + 1)] = arr[index]
    # arr[index] = back_num
    arr[index], arr[-(index + 1)] = arr[-(index + 1)], arr[index]
    index += 1
  end
  arr
end


list = [1,2,3,4]
result = reverse_array(list)
result
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse_array(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse_array(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse_array(list) == [] # true
puts list == [] # true