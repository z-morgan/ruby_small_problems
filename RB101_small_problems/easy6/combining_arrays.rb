def merge(arr1, arr2)
  output_arr = []
  output_arr << arr1 + arr2
  output_arr.flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

###LS's sol
def merge(arr1, arr2)
  arr1 | arr2
end