def reverse_long_words(string)
  array = string.split
  array.map! { |word| word.length > 4 ? word.reverse : word }
  array.join(", ")
end

puts reverse_long_words('Professional')          # => lanoisseforP
puts reverse_long_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_long_words('Launch School')         # => hcnuaL loohcS