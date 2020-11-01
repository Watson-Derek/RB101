require 'pry'
require 'long_sentence_file.txt'

def longest_sentence(text)
  sentences_array = text.split(/[.!?]/)
  index = 0
  longest = sentences_array[0]


  sentences_array.each_with_index do |sentence, i|
    if sentence.split.size > longest.split.size
      longest = sentence
      index = i
    end
  end

  p sentences_array[index].size
  p longest

end

check = File.read('long_sentence_file.txt')

p longest_sentence(check)