my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end


Line 1 - each method call on the outer array. No side effect, the return value will be the original called object (the outer array). This value is used, the variable my_arr will be assigned to it.
Line 1-7 - each block execution, on each subarray of the outer array. No side effect, return value of nil, and is not used.
Line 2 - each method call on the subarray. No side effect, the return value will be the original called object (the sub array). Value is not used.
Line 2-6 - inner each block execution on the sub-array. No side effect, and the return value will be the called object, in this case the sub-array. 
Line 3 - comparison '>', used by the if statement. Side effect is whether to move inside the if statement. Return value is boolean, either true or false, as to whether to continue within the statement. The boolean is used as this deciding factor.
Line 3-5 - the if statement execution, will return nil
Line 4 - method call (puts), for each element of the subarray that returns true from the comparison on line 3, that element is output as a string representation of itself. The return value of puts is nil, and is not used. 
Final return value is the original outer array passed to the first each block. The elements 18, 7, and 12 will print to the screen with the puts method, as they pass the comparison ( > 5)