=begin
method takes an integer n and returns the nth fibonacci number

- f-sequence starts at 1, then 1
- proceedural, not recursive solution

A:

return 1 if n < 3
create two variables to store the working values

loop through the following steps n - 2 times
  assign a storage variable to the second variable
  set the second variable to the sum of the two variables, 
  set the first variable to what the second variable was initially
end

return the second variable
=end

def fibonacci(n)
  return 1 if n < 3
  first = 1
  second = 1

  (n - 2).times do
    storage = second
    second = first + second
    first = storage
  end
  second
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501