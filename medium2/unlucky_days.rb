require 'date'

def friday_13th(year)
  date = Date.new(year)
  num_fridays = 0

  365.times do
    num_fridays += 1 if date.friday? && date.day == 13
    date += 1
  end

  num_fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2