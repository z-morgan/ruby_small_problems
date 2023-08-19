=begin
program should read a text file, and at every instance of a keyword, insert a word of the keyword's type.

D: hash
A:
read in the text file, and split it into an array of words
create a new array, where each instance of a keyword is replaced by a random word from the hash's proper value array
  check for a keyword by seeing if the current word starts with '%'. if not, next word. 
  if so, see which key in the hash the letters at index[2..4] correspond to
  take a random word from the value array, and return it to the new array
conatonate the words, and return the new array's string.
=end

word_repo = {
  nou: ['fox', 'dog', 'head', 'leg'],
  adj: ['quick', 'lazy', 'sleepy', 'ugly'],
  ver: ['jumps', 'lifts', 'bites', 'licks'],
  adv: ['easily', 'lazily', 'noisily', 'excitedly']
}

words = File.read('madlibs_text.txt').split

new_words = words.map do |word|
  if word[0] == '%'
    word_repo[word[2..4].to_sym].sample
  else
    word
  end
end

p new_words.join(' ')