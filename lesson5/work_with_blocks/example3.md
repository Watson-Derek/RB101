[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end


Line 1 - map method call on the outer array. No side effect, and will return a new array
Line 1-4 - map block execution, on each sub-array of the outer array. No side affect, and the return value will be the first element of each subarray, these return values will be used by map for transformation
Line 2 - method call (first), on each subarray, returns the first (index 0) element of the subarray, used by puts
Line 2 - method call (puts), on the element at index 0 of the subarray returned from the (first) method call. Side effect, outputs a string representation of the element, then returns nil. The return value is not used to determine the final return value for the block.
Line 3 - method call (first). On each subarray, returns the first element of the subarray, this return value is used to determine the return value of the block (map).
Final return value of the map block will be a new array [1, 3], an array consisting of each of the first (index 0) elements of each subarray of the original outer array.