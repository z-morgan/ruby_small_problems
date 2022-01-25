=begin
method takes an integer n, and returns the nth fibonacci number
input: int
output: int

- method must use recusion
- The formulae for computing f-numbers is:
  F(1) = 1
  F(2) = 1
  F(n) = F(n - 1) + F(n - 2) where n > 2

- a recusive method calls itself, has a break condition, and uses it's own return value

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

D:
A:
if n is 1 or 2, return 1
plug n into the formulat above

=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765