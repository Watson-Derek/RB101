statement = "The Flintstones Rock"

# create a hash
# iterate through each character, if new then create new key and value of 1
# if key already exists, then value += 1

all_letters = ('A'..'Z').to_a + ('a'..'z').to_a

freq_hash = {}

all_letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  freq_hash[letter] = letter_frequency if letter_frequency > 0
end

p freq_hash

freq_hash2 = {}

all_letters.each do |letter|
  letter_frequency = statement.count(letter)
  freq_hash2[letter] = letter_frequency if letter_frequency > 0
end

p freq_hash2
