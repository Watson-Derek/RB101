words = "the flintstones rock"

words_array = words.split

p words_array

words_array.each do |word|
  word.capitalize!
end

p words_array

words = words_array.join(' ')

p words