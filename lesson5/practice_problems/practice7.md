a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

Line 1 - points variable a to object 2

Line 2 - points variable b to an array of objects 5 and 8

Line 3 - points arr to an array of objects a and b. In this case arr is now [2, [5, 8]]

Line 5 - reassigns the object that arr[0] is pointing to to +2 of its original value. In this case 4. arr is now [4, [5, 8]]. a is still pointing to object 2, as += does not mutate the object

Line 6 - reassigns the object that arr[1][0] is pointing to to -= a, or in this case -= 2, as a is still pointing to object 2. This changes the value of arr[1][0] from 5 to 3, resulting in arr now = [4, [3, 8]]. Because variable b is also an array, that -= affects variable b as well

Line 5 does not change the object that a was pointing to, but Line 6 does, as they are both arrays. So the final values will be:

a = 2
b = [3, 8]
arr = [4, [3, 8]]