require 'pry'

def substrings(str)
  arr = []
  0.upto(str.size - 1) do |start_index|
    start_index.upto(str.size - 1) { |index| arr << str[start_index..index] }
  end
  arr
end

def only_az(str)
  str.downcase.delete('^a-z')
end

def palindromes(str)
  list_of_substrings = substrings(str)
  list_of_substrings.select { |sub_str| only_az(sub_str) == only_az(sub_str).reverse if only_az(sub_str).size > 1 }
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') # == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]