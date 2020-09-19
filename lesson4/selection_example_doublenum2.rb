my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_indices(array)
  doubled_indices = []
  counter = 0

  loop do
    break if counter == array.size

    current_number = array[counter]
    current_number *= 2 if counter.odd?
    doubled_indices << current_number

    counter += 1
  end

  doubled_indices
end

p double_odd_indices(my_numbers)
p my_numbers

# next example for multiply, method with two inputs

def multiply(array, amount)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == array.size

    current_number = array[counter]
    multiplied_numbers << current_number * amount

    counter += 1
  end

  multiplied_numbers
end

p multiply(my_numbers, 3)
p multiply(my_numbers, 8)
p my_numbers