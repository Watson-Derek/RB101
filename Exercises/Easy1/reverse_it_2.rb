def reverse_words(string)
  words = []
  string.split.each do |x|
    x.reverse! if x.length >= 5
    words << x
  end
  words.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')