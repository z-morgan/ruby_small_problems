# my solution

def reverse_sentence(string)
  string.strip!
  return '' if string.empty?
  array = string.split
  rev_string = ""     

  until array.empty?
    rev_string << " #{array.pop}"
  end

  rev_string.strip
end



puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# ls's solution
def reverse_sentence(string)
  string.split.reverse.join(' ')
end