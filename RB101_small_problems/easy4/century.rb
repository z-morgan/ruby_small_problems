=begin
method input: year as integer
output: century as string

reqs:
- cent boundries are 1901-2000, new cent begins with 01
- cent must be appended by suffix st, nd, rd, th
    st when cent ends in 1 (besides 11)
    nd when cent ends in 2 (besides 12)
    rd when cent ends in 3 (besides 13)
    th any other time
- only C.E. cents
- cent number is the (year/100 + 1) for all years with one exception:
    if the 1s and 10s place numbers are both 0, the cent number is year/100
      (aka, if the year can be evenly divided by 100)
- 

A:
initiate a cent variable as 0
if year / 100 has a modulo of 0:
  divide the year by 100 to get the century number
if year / 100 has a modulo != 0:
  divide the year by 100 and add 1 to get the cent number

convert cent to string
determine the suffix: (cent as string)
  st if cent[-1, 2] != 11 and cent[-1] == 1:
    append 'st' to end of cent
  similar conditions for others***

return cent
=end

################### My first attempt
def century(year)
  cent = 0
  if year % 100 == 0
    cent = year / 100
  else
    cent = (year / 100) + 1
  end

  cent = cent.to_s
  if cent[-2, 2] != '11' && cent[-1] == '1'
    cent << 'st'
  elsif cent[-2, 2] != '12' && cent[-1] == '2'
    cent << 'nd'
  elsif cent[-2, 2] != '13' && cent[-1] == '3'
    cent << 'rd'
  else
    cent << 'th'
  end

  cent
end

######################## My second attempt
# def century(year)
#   cent = 0
#   if year % 100 == 0
#     cent = year / 100
#   else
#     cent = (year / 100) + 1
#   end

#   if cent % 100 != 11 && cent % 10 == 1
#     cent = cent.to_s
#     cent << 'st'
#   elsif cent % 100 != 12 && cent % 10 == 2
#     cent = cent.to_s
#     cent << 'nd'
#   elsif cent % 100 != 13 && cent % 10 == 3
#     cent = cent.to_s
#     cent << 'rd'
#   else
#     cent = cent.to_s
#     cent << 'th'
#   end

#   cent
# end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'




