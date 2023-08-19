=begin
method takes no arguments, and prints out the longest sentence (by word count) in a text file, and the number of words in that sentence.
input: none
output: sentence and word count 

- var = File.read('file name') to access file contents
- split the contents into an array containing each sentence. 
- words are space delimited sequences of characters besides sentence-ending punctuation

D: array of strings
A:
generate an array containing each sentence as an element.
initiate a new empty array
for each element, count the words, and add the count to the empty array. 
    split the sentence into an array of words, and get the size of the array.
get the index of the highest number, and print out the number, as well as the sentence which corresponds with it. 
  get the max value, then use the #index method to get the index of that number
=end

ENDINGS = %w(. ! ?)

text = File.read('test_book.txt')

text_word_arr = text.split
sentences = []
one_sentence = []
index = 0
until index == text_word_arr.size
  one_sentence << text_word_arr[index]
  if ENDINGS.include?(text_word_arr[index][-1])
    sentences << one_sentence.join(' ')
    one_sentence = []
  end
  index += 1
end

word_counts = sentences.map { |sentence| sentence.split.size }
highest_count = word_counts.max
longest_sentence_index = word_counts.index(highest_count)

puts "#{sentences[longest_sentence_index]} is #{highest_count} words long."