puts "Enter text:"
text = gets.chomp

def palindrome?(string)
  string == string.reverse
end

puts palindrome?(text)