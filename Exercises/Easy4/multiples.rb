def multisum(number)
  sum = 0
  i = 1
  while i <= number do
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
    i += 1
  end
  sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)
