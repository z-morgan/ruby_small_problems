=begin
method takes an array of four letter strings, and displays to the console arrays containing all of the words that are anagrams of each other.
input: array of strings
output: displays multiple arrays to the console, returns nil

- an anagram of a word is a word that contains all of the same letters regardless of their order. 
- dipslays to console, returns nil
- does not matte whether the printed array elements are the same objects. 
- assume must print each list of anagrams exactly once

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
prints: 
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

A:


initiate a storage array for used words
for each word:
  if that word is not in the storage array:
    initate an empty array
    iterates through the list of words
      sort the word, and each word passed in
      if the sorted words are the same, select the iteration word and add it to the array
    display the array
=end

def anagrams(list_of_words)
  used_words = []
  list_of_words.each do |base_word|
    unless used_words.include?(base_word)
      anagrams_of_base_word = list_of_words.select { |word| word.chars.sort == base_word.chars.sort }
      p anagrams_of_base_word
      used_words += anagrams_of_base_word
    end
  end
end
  
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
anagrams(words)