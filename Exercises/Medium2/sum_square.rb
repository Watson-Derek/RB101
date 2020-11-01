def sum_square_difference(integer)
  num1 = (1..integer).reduce(:+) ** 2

  num2 = 0
  1.upto(integer) { |number| num2 += number ** 2 }

  num1 - num2
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
