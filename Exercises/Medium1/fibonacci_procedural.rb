def fibonacci(num)
  return 1 if num <= 2
  num1 = 1
  num2 = 1
  final = 0
  (num - 2).times do
    final = num1 + num2
    num2 = num1
    num1 = final
  end

  final

end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501