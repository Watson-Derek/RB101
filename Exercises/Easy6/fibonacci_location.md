method that calculates and returns the index of the first fibonacci number that has the number of digits specificed as the argument. The first number has index of 1

input - integer, in this case specifying the number of digits to find first
output - integer, the index of the result of the calculation

rules - the first number in the fibonacci has index 1, though to get the second number which is also 1, it would have to add zero, so an array could start with 0 for index 0, and 1 for index 1, then the next number, 1, would have index 2

algorithm:
initialize an empty array
set two variables, num1 and num2, equal to 0 and 1

use an until loop to check that the last value in the array equals the input integer
in the loop, add num1 and num2 together to a changing variable calc, then push that value into the array
set num1 equal to num2
set num2 equal to calc