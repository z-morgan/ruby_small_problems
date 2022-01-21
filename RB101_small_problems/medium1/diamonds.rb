=begin
method takes an odd integer, and outputs a 4 pointed diamond made of splats, input characters across, and input rows tall.
input: integer
output: string diamond

- input will always be odd integer (positive)
- input of 1 will return single *
- Ignore method's return value
- The string is made of spaces, then stars, then spaces
- the spaces on each side are input - number of stars, divided by 2
- the number of stars on row 1 is 1, and for each row, increases by two, until the number of stars equals the input
- then the number of stars decreases by 2 until there is only 1 left. 

D: string
A:
for each row, output a string of spaces, concatonated with a string of stars, and another string of spaces. 

start with -1 stars
loop the following steps until number of stars == input
  increment the number of stars by 2
  generate the number of stars
    generate the stars string by multiplying * by the number of stars
  generate the number of spaces
    get the number according to the above formula
    generate the spaces string by multiplying ' ' by the number of spaces
  output spaces string + stars string + spaces string

loop the same steps, except decrement the number of stars by 2 until it is below zero
=end

def print_row(grid_size, number_of_stars)
  stars = '*' * number_of_stars
  number_of_spaces = (grid_size - number_of_stars) / 2
  spaces = ' ' * number_of_spaces
  puts spaces + stars + spaces
end

def diamond(grid_size)
  number_of_stars = -1

  until number_of_stars == grid_size
    number_of_stars += 2
    print_row(grid_size, number_of_stars)
  end

  until number_of_stars == 1
    number_of_stars -= 2
    print_row(grid_size, number_of_stars)
  end
end

diamond(15)



  


