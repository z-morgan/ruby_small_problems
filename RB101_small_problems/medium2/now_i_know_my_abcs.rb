=begin
method takes a word, and returns true if the word can be spelled. false otherwise
input: string
return: boolean

- case insensitive
- a word can be spelled if it only uses valid letters
- each letter is paired with another, and a letter becomes unavailable if it's partner is used. 
- input will alwasy be one word, and never empty.

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

D: nested array
A:
create a nested array where each sub-array contains a pair of letters
iterate through the upcased input word, and for each letter
  create a new nested_array with all of the elements except the sub-array which contained the letter
    contition: if any of the sub-array elements is the letter, don't select sub_array
if input word.size == 13 - array length, return true
else, false
=end



# def block_word?(word)
#   blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], 
#             ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], 
#             ['L', 'Y'], ['Z', 'M'], ['G', 'T']]

#   word.upcase.each_char do |letter|
#     blocks = blocks.reject { |sub_arr| sub_arr.any?(letter) }
#   end

#   word.size == 13 - blocks.size
# end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  word = word.upcase
  !BLOCKS.any? { |block| word.count(block) > 1 }
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
