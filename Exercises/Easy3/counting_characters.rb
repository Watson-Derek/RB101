puts "Please write a word or multiple words:"
user_string = gets.chomp

spaces_removed = user_string.delete " "
num_characters = spaces_removed.length

puts "There are #{num_characters} characters in \"#{user_string}\"."