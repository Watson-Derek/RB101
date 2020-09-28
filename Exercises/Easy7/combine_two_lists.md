method that combines two arrays passed in as the arguments, and returns a new array that contains all elements from both input arrays, alternating

input - two arrays
output - one array, with the elements from the input arrays
rules - return a new array
  - can assume that both input arrays are non-empty, and contain the same # of elements

example:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

algorithm
initialize new array - combined_arr = []
set index equal to zero
iterate through the first array, adding the value to the index variable into the combined array, and increase the index value by 2 each time
set index equal to one
iterate through the second array, adding the value to the index variable into the combined array, and increase the index value by 2 each time
return the new combined array
