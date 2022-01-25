=begin
method takes a string, and returns true if the parentheses are correct, false if not
input: string
output: boolean

- input will never by empty
- for parentheses to be correct, each ( must be followed by a ) eventually, and
-   ) can never preceed it's matching (

balanced?('What (is) this?') == true  
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true  #> 
balanced?('((What)) (is this))?') == false #> 
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

A:
create layer vaiable and set it to zero
iterate through the parentheses:
  if it is open, add 1 to layer
  if it is close, sub 1 from layer
  is layer negative? if so, return false

is layer zero? if so return true
=end

def balanced?(str)
  layer = 0
  str.each_char do |char|
    layer += 1 if char == '('
    layer -= 1 if char == ')'
    return false if layer < 0
  end
  layer == 0
end

p balanced?('What (is) this?') == true  
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
