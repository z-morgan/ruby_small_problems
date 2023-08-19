def halvsies(arr)
  halfway_index = (arr.size / 2)
  halfway_index -= 1 if arr.size.even?

  arr.partition.with_index { |_, i| i <= halfway_index }
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]