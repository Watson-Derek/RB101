def bubble_sort!(array)
  times = array.length - 1

  loop do
    swapped = false
    index = 0
    until index == times do
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
      index += 1
    end
    break if swapped == false
  end

  array
end

array1 = [5, 3]
bubble_sort!(array1)
p array1 == [3, 5]

array2 = [6, 2, 7, 1, 4]
bubble_sort!(array2)
p array2 == [1, 2, 4, 6, 7]

array3 = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array3)
p array3 == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
