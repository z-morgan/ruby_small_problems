=begin
method takes an integer, and returns a star with dimensions integer by integer
input integer
output: strings

if integer is n,
- the middle row is n splats
- the second to the middle is 3 splats padded by (n - 3 / 2) spaces

- need to track two spaces variables, one of which increases as the row number increases, and the other decreases.
- need to track the row number

D:loops and variables
A:
first row - padding is zero, gap is (n - 3 / 2)
second row - padding is one, gap is gap - 1

set padding to zero
set gap to (n - 3 / 2)
set row to 1
until row is (n - 1) / 2
  construct string
    padding + star + gap + star + padding
  padding += 1
  gap -=1
  row += 1

output n splats

until row is 1
  construct string
    padding + star + gap + star + padding
  padding -= 1
  gap +=1
  row -= 1
=end

def output_string(padding, gap)
  puts ((" " * padding) + "*" + (" " * gap) + "*" + (" " * gap) + "*" + (" " * padding))
end

def star(n)
  padding = 0
  gap = (n - 3) / 2
  row = 1

  until row > (n - 1) / 2
    output_string(padding, gap)
    padding += 1
    gap -= 1
    row += 1
  end

  puts ("*" * n)

  until row == 1
    padding -= 1
    gap += 1
    row -= 1
    output_string(padding, gap)
  end
end

star(21)

