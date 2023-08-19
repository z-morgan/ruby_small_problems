=begin 
input: get 6 integers from the user
output: string

get 6 numbers from the user, and determine if the last number was one of the first 5 already given

A: 
define a method for validating the number inputs
initialize an empty array 'number_storage'
prompt the user for 5 numbers, an store each one in the 'number_storage' array after validating them
get another number from the user. 
tell the user whether or not the number has already been stored.
  (see if the number is in the 'number_storage' array)

=end

def valid_number?(str)
  str.to_i.to_s == str
end

format_num = {
  1 => "1st",
  2 => "2nd",
  3 => "3rd",
  4 => "4th",
  5 => "5th"
}


number_storage = Array.new
count = 1
while count <= 5
  loop do 
    puts "==> Enter the #{format_num[count]} number:"
    input = gets.chomp

    if valid_number?(input)
      number_storage << input.to_i
      break
    else
      puts "That is not a valid input"
    end
  end

  count += 1
end

puts "==> Enter the last number:"
last_num = gets.to_i

if number_storage.include?(last_num)
  puts "The number #{last_num} appears in #{number_storage}."
else
  puts "The number #{last_num} does not appear in #{number_storage}."
end
