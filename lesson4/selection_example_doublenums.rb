my_numbers = [1, 4, 3, 7, 2, 6]

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

def double_numbers_mutate(numbers)
  numbers.map! { |value| value * 2 }
end

p double_numbers(my_numbers)
p my_numbers

p double_numbers_mutate(my_numbers)
p my_numbers