def substrings(str)
  arr = []
  0.upto(str.size - 1) do |start_index|
    start_index.upto(str.size - 1) { |index| arr << str[start_index..index] }
  end
  arr
end


puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]