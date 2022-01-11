=begin
- returns a new string
- swaps the case of every alphabetical character, leaving others unchanged
=end

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(input_string)
  input_string.chars.map do |char|
    if UPPERCASE.include?(char)
      char.downcase
    elsif LOWERCASE.include?(char)
      char.upcase
    else
      char
    end
  end.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'