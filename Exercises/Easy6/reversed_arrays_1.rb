def reverse_array(array)
  left_index = 0
  right_index = -1

  while (left_index - right_index) < array.size
    val1 = array[left_index]
    val2 = array[right_index]

    array[left_index] = val2
    array[right_index] = val1

    left_index += 1
    right_index -= 1
  end
  
  p array.object_id
  array
end

arr1 = [1, 2, 3, 4]
reverse_array(arr1)
p arr1
p arr1.object_id

arr2 = %w(a b e d c)
reverse_array(arr2)
p arr2
p arr2.object_id

arr3 = ['abc']
reverse_array(arr3)
p arr3
p arr3.object_id

arr4 = []
reverse_array(arr4)
p arr4
p arr4.object_id