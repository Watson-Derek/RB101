def rotate_array(array)
  new_array = []
  index = -1

  loop do
    if index.abs == array.size
      new_array << array[index]
      break
    end
    new_array.unshift(array[index])
    index -= 1
  end

  new_array
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
