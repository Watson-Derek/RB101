method that takes two arrays as the arguments, and returns one array made up of all values from the input arrays, there should be no duplicates in the return array

input - two different arrays
output - one array of all elements of the input arrays, no duplicates

example:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

algorithm:
initialize empty return array []
iterate through array 1
  first check whether the return array includes the value (.include?)
  if yes, then next
  if no, then add the value to the return array

iterate through array 2 in the same way

