def fibonacci(integer)
  fib_arr = [1]

  num1 = 0
  num2 = 1

  until integer == fib_arr.last.to_s.length
    calc = num1 + num2
    fib_arr << calc
    num1 = num2
    num2 = calc
  end

  index_value = fib_arr.last
  fib_arr.index(index_value) + 1
end

p fibonacci(2)
p fibonacci(3)
p fibonacci(10)
p fibonacci(100)
p fibonacci(1000)
p fibonacci(10000)
