[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

Line 1 - map method call on the outer array. No side effect, and will return a new array based on the return values within the block
Line 1-5 - map block execution on each sub-array of the outer array. No side effect, the return value will be determined by the block exection
Line 2 - map method call on the sub-array. No side effect, and will return an array of the return values within the block
Line 2-4 map block execution on the elements within the sub-array. No side effect, the return value will be determined by the block execution.
Line 3 - calculation. takes each element of the sub-array passed in by the block, and multiplies it by 2. The return value is the element * 2.
The inner map block will return an array consisting of each element of the sub-array passed to it multiplied by 2. In this case the first sub-array passed to it will return as [2, 4], and the second sub-array passed to it will return as [6, 8]. 
The final return value of the map block executing on the outer array will be an array consisting of the returned values of the inner map block. In this case the final output will be [[2, 4], [6, 8]]