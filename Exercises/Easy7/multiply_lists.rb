def multiply_list(array1, array2)
  result_array = []

  array1.each_with_index do |value, index|
    result_array << value * array2[index]
  end

  result_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
