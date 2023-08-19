=begin
input: string
output: integer

A:
convert the input string into an array
transform every element the array into it's ascii value
sum every element in the new array and return it
=end

def ascii_value(str)
  return 0 if str.empty?
  str.chars.map { |char| char.ord }.reduce(:+)
end

def ascii_value(str)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
p ascii_value('') == 0
