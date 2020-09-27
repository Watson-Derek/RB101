def reverse(array)
  return_array = []
  num_times = array.size
  index = -1

  num_times.times do
    return_array << array[index]
    index -= 1
  end

  return_array
end

arr1 = [1, 2, 3, 4]
new_arr1 = reverse(arr1)
p arr1
p new_arr1