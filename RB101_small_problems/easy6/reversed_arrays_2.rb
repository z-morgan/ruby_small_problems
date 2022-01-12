=begin
same as prev, but cannot modify original array

A:
iterate through the input array, prepending each element to a new array

=end

def reverse_new(arr)
  arr.each_with_object([]) { |el, new_arr| new_arr.unshift(el) }
end

puts reverse_new([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse_new(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse_new(['abc']) == ['abc']              # => true
puts reverse_new([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse_new(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true