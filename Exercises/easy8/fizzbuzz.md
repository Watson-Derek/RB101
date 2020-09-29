method that takes two arguments, the first is a starting number, the second is the ending number. print all numbers between the two inputs, but if a number is divisible by 3, print 'Fizz', if divisible by 5 print 'Buzz', if both pring 'FizzBuzz'

input - two integers
ouptut - string of each number between the first and second input integer, with the replacements mentioned
rules - see descriptions

example:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

algorithm:
create a new array consisting of the first input to the second input (integer1..integer2).to_a
iterate through the array with index
if the value is divisble by 3 and 5, replace value at that index with 'FizzBuzz'
else if the value is divisble by 3, replace value at that index with 'Fizz'
else if the value is divisible by 5, replace value at that index with 'Buzz'
else do nothing to the value


join final array using ', ' and return