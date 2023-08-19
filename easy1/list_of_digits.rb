require 'pry'
# my first attempt, converting the integer to a string
def digit_list(int)
  string = int.to_s
  arr = Array.new
  string.each_char { |digit| arr.push(digit.to_i) }
  arr
end


# second attempt, chopping off one digit at a time
def digit_list2(int)
  arr = Array.new
  while int > 0
    arr = arr.unshift(int % 10)
    int = int / 10
  end
  arr
end


#lauch school's first solution
def digit_list3(int)
  arr = Array.new
  loop do
    int, remainder = int.divmod(10)  #this line is cool
    arr.unshift(remainder)
    break if int == 0
  end
  arr
end

#ls's second solution
def digit_list4(int)
  int.to_s.chars.map(&:to_i)
end

p digit_list4(123)

