array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 = array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# to avoid mutating array 2, you can either add #clone to value on line 3, 
# or you can change value.upcase! to value = value.upcase on line 4