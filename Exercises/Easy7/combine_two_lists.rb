def interleave(array1, array2)
  combined_array = []
  index = 0

  array1.each do |value|
    combined_array[index] = value
    index += 2
  end

  index = 1

  array2.each do |value|
    combined_array[index] = value
    index += 2
  end

  combined_array
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
