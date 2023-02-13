# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

=begin
A:
iterate through the array of words with index, and for each:
  if the index + 1 is a factor of 3:
    upcase every odd-indexed character in that word


=end

def to_weird_case(input_str)
  input_str.split(' ').map.with_index do |word, idx|
    if (idx + 1) % 3 == 0
      p word.object_id
      word.chars.each_with_index do |char, i|
        char.upcase! if i % 2 == 1
      end.join('')
      p word.object_id
    else
      word
    end
  end.join(' ')
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') # == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".