=begin
input: array
output: array

- elements are integers from 0 to 19 inclusive
- output is a sorted version of the input based on the english words for the numbers
- sort from a to z

A:
create a hash constant containing the english words for each number
convert each element in the input array to it's english form,
sort the array, 

=end

# ENGLISH_NUMBERS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
#   6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve',
#   13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}

# def alphabetic_number_sort(input_arr)
#   english_input_arr = input_arr.map { |el| ENGLISH_NUMBERS[el] }

#   english_input_arr.sort.map do |el| 
#     for i in ENGLISH_NUMBERS.keys
#       el = i if ENGLISH_NUMBERS[i] == el
#     end
#     el
#   end
# end

NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
numbers.sort_by! { |number| NUMBER_WORDS[number] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]