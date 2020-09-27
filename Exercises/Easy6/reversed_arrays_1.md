method that takes an array as the argument, and reverses the elements in place, by mutating the array passed in, the return array should be the same array object. 
Can not use .reverse or .reverse!

input - array
output - array, the same object as the input, mutate the original. this output array is still a different array however

examples:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []

rules, reverse each array element, not the elements within the array. example ['abc'] is only one element, so it stays as is

algorithm:
input_size = length of array, will determine number of times to iterate


starting index is 0 and -1
set variable a to index 0
set variable b to index -1

array[0] = b
array[-1] = a

while left index + (-right index) is less than array size, do that, and increase index 1 by 1 and decrease index 2 by 1