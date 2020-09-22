[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1
      el + 1
    else
      el.map do |n|
        n + 1
      end
    end
  end
end


Line 1 - map method call on a three level nested array. Will return an array of all returned values from within the block
Line 1-11 - map block execution, final return values of the block will be passed to a new array
Line 2 - map method call on the first level sub-array passed from the line 1 map block. Will return an array of all returned values from within the block.
Line 2-10 - map block execution on the first level sub-arrays, passing in the second level sub-arrays, or values if no further sub-array. Final return values will be passed to a new array.
Line 3 - comparison ==, this is comparing whether the element passed into the second map block is equal to the integer 1.
  Line 3 - .to_s method call, converts the passed in element to a string
  Line 3 - .size method call, returns the length of the string from .to_s in an integer format
Line 3 - conditional if. If the comparison on Line 3 returns true, then executes next section
Line 3-9 - conditional execution for if, will return the value from whichever section is used from the conditional
Line 4 - calculation - el + 1 will add 1 to the current element and return that value
Line 5 - the else, this section executed if the comparison from Line 3 returned false
Line 6 - map method call on the element passed in from line 2, will return an array of all returned values from within its execution block.
Line 6-8 - map block execution. final return values of this block will be passed into the new map array.
Line 7 - calculation, takes each value passed to it from line 6 and adds 1, n + 1. This value is passed to the new map array.

In this example, the final return value will be:

The first sub-array passed in will be [[1, 2], [3, 4]], another nested array. This nested array is then passed into the second map block. The if statement will then evaluate whether the size [1, 2] and [3, 4] == 1 when converted to a string. The arrays when converted to strings will be '12' and '34'. The size of both of these strings is 2, which when compared (==) to 1, will return false, so both arrays will pass to line 6. Line 6 will take each array into another map block, and pass in the values. Line 7 will add 1 to each value and return to a new array, returning the arrays [2, 3] and [4, 5]. Those arrays will return to the second map method as [[2, 3], [4, 5]]. 

The second sub-array passed in will be the [5, 6] array. Then line 2 will pass the values 5 and 6 into the second map method block. 5 and 6 will be converted to strings on line 3, both with a size of 1, and 1 == 1 will return true, so they will pass to line 4. Line 4 will add 1 to each value, returning them to a new array [6, 7], which will be returned to the first map method block.

The final return value of the entire block will be:
[[[2, 3], [4, 5]], [6, 7]]
