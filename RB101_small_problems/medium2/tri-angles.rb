=begin

- right: one angle is 90
- acute: all angles are < 90
- obtuse: one angle is > 90

=end

def triangle(a, b, c)
  arr = [a, b, c].sort
  return :invalid if arr.reduce(:+) != 180
  return :invalid if arr[0] <= 0
  return :obtuse if arr[2] > 90
  return :right if arr[2] == 90
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid