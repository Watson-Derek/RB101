numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
p numbers

# each iteration will print the current value, then shift, deleting the value at 
# index 0. first, it will print 1, then shift, removing the value 1 and moving 2
# to index 0. the next iteration is at index 1, in this case value 3. it will print
# value 3, and shift, deleting the value at index 0, in this case 2. the next
# iteration would be index 2, but there are now only indices 0 and 1, so the loop
# ends, leaving an array of [3, 4]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
p numbers

# each iteration will print the current value, but then remove the last value from
# the array, returning it (not printing it to the screen). So in this case, the 
# first iteration will print 1 to the screen, and delete the value 4. Then it 
# will print 2 to the screen, and delete the value 3. At that point the loop
# will end, as there are no remaining values left.
