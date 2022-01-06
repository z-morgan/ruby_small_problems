def does_include(arr, int)
  arr.each { |num| return true if num == int }
  false
end

puts does_include([1,2,3,4,5], 3) == true
puts does_include([1,2,3,4,5], 6) == false
puts does_include([], 3) == false
puts does_include([nil], nil) == true
puts does_include([], nil) == false

### look at LS's first solution. 