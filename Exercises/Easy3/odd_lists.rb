def oddities(array)
  new_array = []
  index = 0
  while index < array.length
    new_array << array[index] if index.even?
    index += 1
  end
  new_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])