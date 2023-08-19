=begin
method takes a string of words, and returns the same string, with an number words converted to their digits
input/return: string

- returns the same string object
- any sequence of characters consituting a number name will be subed by:
- the digit, in string form
- empty input returns empty output
- only lowercase letters to worry about.
- words are seperated by spaces, but may also include puncuation.

D: sting
A:
create a hash with number words as keys and number digits as values
loop through the hash, and for each pair, 
  substitute all instances of the key in the input string with the value
return the input string. 

=end
require 'pry'

WORD_WITH_DIGIT = { 'zero' => '0', 'one' => '1', 'two' => '2', 
                    'three' => '3', 'four' => '4', 'five' => '5', 
                    'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

def remove_spaces(input_str)
  test_values = WORD_WITH_DIGIT.values.each { |digit| digit << '*' }
  # got stuck trying to remove spaces from the string...
end

def word_to_digit(input_string)
  WORD_WITH_DIGIT.each{ |word, digit| input_string.gsub!(word, digit + '*') }
  remove_spaces(input_string)
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'