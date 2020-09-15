
def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end
limit = 15
result = fib(0, 1, limit)
puts "result is #{result}"

#limit is a variable outside the method, and is not passed into it,
#so it needs to be initialized inside the method, or passed into it
