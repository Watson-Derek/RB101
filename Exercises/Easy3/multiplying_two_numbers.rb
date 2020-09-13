def multiply(num1, num2)
  num1 * num2
end

puts "Enter the first number:"
number1 = gets.chomp.to_i

puts "Enter the second number:"
number2 = gets.chomp.to_i

puts multiply(number1, number2)