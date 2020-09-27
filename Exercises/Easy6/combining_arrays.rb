def merge(array1, array2)
  return_array = []

  array1.each do |value|
    return_array << value unless return_array.include?(value)
  end

  array2.each do |value|
    return_array << value unless return_array.include?(value)
  end

  return_array
end

arr1 = [1, 3, 5]
arr2 = [3, 6, 9]
p merge(arr1, arr2)
p merge(arr1, arr2) == [1, 3, 5, 6, 9]
