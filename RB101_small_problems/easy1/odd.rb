
def is_odd?(num)
  num % 2 == 1
end



def is_odd?(num)
  num.remainder(2) == 1 || num.remainder(2) == -1
end

puts is_odd?(-3)