def sum1(num)
  total = 0
  while num > 0
    op_array = num.divmod(10)
    num = op_array[0]
    total += op_array[1]
  end
  total
end

def sum(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end




puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45