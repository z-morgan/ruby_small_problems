=begin
write a method that takes two integers as arguements
it multiplies them together and then returns the product.
=end

def multiply(a, b)
  a * b
end

def square(a)
  multiply(a, a)
end

puts square(5)
puts square(-8)