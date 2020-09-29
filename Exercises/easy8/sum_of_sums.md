method that takes an array of numbers then returns the sum of the sums of each leading subsequence for that array. assume that the array always contains at least one number

input - array of numbers
output - sum

examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

algorithm:
initialize sum variable equal to 0
initialize second varialbe equal to 0
iterate through the array, adding each value to the sum variable and saving the variable each time. also save the current value to a current value variable

each with index, each time add the sum of all index 0 to current to the sum variable
0 + 3 = 3
prev val = 3

sum += prev val + 5 = 11
prev val += 5 = 8

sum += prev val (8) + 2 = 21
prev val += 2 = 7


