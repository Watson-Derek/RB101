def halvsies(array)
  final_array = []
  arr1 = []
  arr2 = []
  index = 0
  midpoint = (array.size / 2) + (array.size % 2)

  array.each do |value|
    if index < midpoint
      arr1 << value
    else
      arr2 << value
    end
    index += 1
  end

  final_array << arr1 << arr2
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
