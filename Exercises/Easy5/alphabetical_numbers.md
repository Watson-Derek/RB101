method that takes an array of integers from 0 to nineteen, and returns an array of those integers sorted based on the english word for each number

input - array of integers
output - array of integers, sorted by the word of the number

example
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

algorithm
create a hash that has key of integer and value of the word spelled out for each key

use the sort_by method