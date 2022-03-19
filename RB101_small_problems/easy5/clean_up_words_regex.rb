=begin
  method takes a string, and returns a string where all non-alphabetic chars are converted to 
  spaces. consecutive non-alpha's are merged to one space.

  A:
  use multiple substitution to replace all sequences of one or more non-alpha chars with
  a single space. return the same object.
=end

def cleanup(str)
  str.gsub!(/[^a-z]+/i, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
