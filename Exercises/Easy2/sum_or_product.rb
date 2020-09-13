def prompt(string)
  puts ">> #{string}"
end

def valid_integer?(input)
  input > 0
end

def valid_choice?(input)
  input.downcase == 's' || input.downcase == 'p'
end

number = ""
prompt("Please enter an integer greater than 0:")

loop do
  number = gets.chomp.to_i
  break if valid_integer?(number)

  prompt("Not a valid integer. Please try again:")
end

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = ''

loop do
  choice = gets.chomp
  break if valid_choice?(choice)

  prompt("Not a valid choice, please choose 's' for sum or 'p' for product.")
end

answer = 0
if choice.downcase == 's'
  for i in 1..number
    answer += i
  end
  puts "The sum of the integers between 1 and #{number} is #{answer}."
else
  answer = 1
  for i in 1..number
    answer *= i
  end
  puts "The product of the integers between 1 and #{number} is #{answer}."
end
