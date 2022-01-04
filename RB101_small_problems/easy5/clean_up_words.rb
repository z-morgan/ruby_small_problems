=begin
input: string
output: string

- output should resemble input, but with all non-alphabetical characters replaced by a single space. 
- if multiple non-alphabetical characters occur consequtively, they should only be replaced by a single space. 
- assume all letters are lowercase

D:
A: 
hack and slash attempt: 
  add a space after every non-alphabetical character
  delete every character that is not alphabetical or a space
  convert the string to an array of words, and then join them together again with a space
    in order to remove excess spaces
  add bookend spaces if needed

second, PEDAC attempt:
  convert the string to an array of characters
  iterate through the string and for each element:
    if it is non-alphanumeric, replace it with a space.
  add bookend spaces if needed.
      if the input string starts with a non-alpha character, append a space to the front of new string
      if the input string ends with a non-alpha character, append a space to end of new string

=end

def cleanup(input_string)
  clean_arr = []
  input_string.chars.map do |chr| 
      if ('a'..'z').include?(chr)
        clean_arr << chr
      else
        clean_arr << ' ' unless clean_arr.last == ' '
      end
    end

  clean_arr.join
end

# def cleanup(dirty_string)
#   clean_string = ''
#   for i in 0..(dirty_string.size - 1)  # could extract this to a helper method
#     if dirty_string[i].count('^a-z', '^ ') > 0
#       clean_string << (dirty_string[i] + ' ')
#     else
#       clean_string << dirty_string[i]
#     end
#   end

#   clean_string.delete!('^a-z ')
  
#   # the below code needs to be refactored. 
#   return (' ' + clean_string.split.join(' ') + ' ') if clean_string[0] == ' ' && clean_string[-1] == ' '
#   return (' ' + clean_string.split.join(' ')) if clean_string[0] == ' ' && clean_string[-1] != ' '
#   return (clean_string.split.join(' ') + ' ') if clean_string[0] != ' ' && clean_string[-1] == ' '
#   clean_string.split.join(' ')
# end

puts cleanup("---what's my +*& line?") == ' what s my line '

