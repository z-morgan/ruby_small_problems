def interleave(arr1, arr2)
  new_arr = []
  index = 0

  until index >= arr1.size
    new_arr << arr1[index]
    new_arr << arr2[index]
    index += 1
  end
  new_arr
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#further ex.

def zip_method(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts zip_method([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']