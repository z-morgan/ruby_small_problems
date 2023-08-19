def stringy(n)
  string = ''
  n.times { |x| x.even? ? string << "1" : string << "0" }
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# part 2

def stringy(n, start = 1)
  string = ''

  if start == 1
    n.times { |x| x.even? ? string << "1" : string << "0" }
  elsif start == 0
    n.times { |x| x.odd? ? string << "1" : string << "0" }
  end

  string
end

puts stringy(6,0) == '010101'
puts stringy(9,0) == '010101010'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'