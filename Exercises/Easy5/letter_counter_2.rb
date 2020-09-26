def word_sizes(string)
  hash = {}
  arr = string.split (' ')

  arr.each do |word|
    word_length = word.gsub(/[^a-z]/i, '').size
    if hash.has_key?(word_length)
      hash[word_length] += 1
    else
      hash[word_length] = 1
    end
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}