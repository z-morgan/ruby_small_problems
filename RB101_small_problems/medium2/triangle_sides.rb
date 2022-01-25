=begin
method takes three numbers, and returns the type of triangle made from the 3 sides, if any
input: 3 integers or floats
return: symbol

- if the nums are equal, equilateral
- if two are equal, isosceles
- if all are different, scalene
- if the sum of the two smaller nums is less than the larger num, invalid
- if a num is less than or equal to zero, invlid

D:
A:
sort the nums in ascending order
is the first num <= 0? if so, return invalid
is the sum of the first two nums < last num? if so, return invalid
are they all equal to each other? equilateral
are any two the same? isosceles
if none of the above, scalene

=end

def triangle(a, b, c)
  arr = [a, b, c].sort
  return :invalid if arr[0] <= 0
  return :invalid if (arr[0] + arr[1]) < arr[2]
  return :equilateral if arr[0] == arr[1] && arr[1] == arr[2]
  return :scalene if arr[0] != arr[1] && arr[1] != arr[2] && arr[0] != arr[2]
  :isosceles
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
