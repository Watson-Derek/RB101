puts "enter num1:"
num1 = gets.chomp.to_i
puts "enter num2:"
num2 = gets.chomp.to_i

puts "which operation? add / subtract / multiply / divide"
operation = gets.chomp

if operation == 'add'
  puts num1 + num2
elsif operation == 'subtract'
  puts num1 - num2
elsif operation == 'multiply'
  puts num1 * num2
elsif operation == 'divide'
  puts num1 / num2
else
  puts 'invalid operation'
end
