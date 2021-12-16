=begin
P: put all odd numbers from 1 to 99 to the console, each on a new line

Input: none
Output: see above

A: 
create a range from 1 to 99
iterate through the range. if an iteration is odd, puts it to the console.
=end

# (1..99).each { |n| puts n if n.odd? }

# for n in 1..99
#   puts n if n.odd?
# end

# 1.upto(99).each { |n| puts n if n.odd? }

puts (1..99).select { |n| n.odd? }

