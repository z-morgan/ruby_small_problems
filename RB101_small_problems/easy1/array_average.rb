def find_average(arr)
  sum = 0.0
  arr.each { |x| sum += x }
  sum / arr.size
end

puts find_average([1.0, 3.5])