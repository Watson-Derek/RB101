def multiply(num1, num2)
  num1 * num2
end

def square(x)
  multiply(x, x)
end

puts "Enter integer:"
input = gets.chomp.to_i

puts square(input)