=begin 
input: integer
output: integer

method takes an integer, and returns one less than the index of the first fibonacci number with that number of digits
- note: the index of the fibonacci sequence starts at one in this method. 

test cases:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

I suspect that simply generating a fibonacci sequence and finding the correct index will require a lot of run-time... but that would be one soluion.
D: array
A: 
initiate an empty array to contain the f. sequence
generate a f sequence with lenght (input integer * 5)
iterate through the sequence and for each element:
  convert element to string
  see if the input integer is equal to the size of the string
    if so, return the index of that element
    else, next iteration
=end

def generate_fib_sequence(int)
  sequence = [1, 1]
  index = 1
  until index == (int * 5)
    sequence << (sequence[-2] + sequence[-1])
    index += 1
  end
  sequence
end

def find_fibonacci_index_by_length(input_int)
  sequence = generate_fib_sequence(input_int)
  sequence.each_with_index do |el, index|
    return (index + 1) if el.to_s.size == input_int
  end
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847

######### look at LS solution still.. ran out of time at work.


