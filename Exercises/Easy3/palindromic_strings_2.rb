puts "Enter text:"
text = gets.chomp

def palindrome?(string)
  string == string.reverse
end

def delete_nonalpha(string)
  palindrome?(string.downcase.delete('^a-z0-9'))
end

puts delete_nonalpha(text)
