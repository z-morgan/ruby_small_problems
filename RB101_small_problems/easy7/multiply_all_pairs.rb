def multiply_all_pairs(arr1, arr2)
  arr1.map { |num| arr2.map { |num2| num * num2 } }.flatten.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]