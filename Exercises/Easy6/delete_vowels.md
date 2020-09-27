method that takes an array of strings, and returns a new array of the same strings, but with vowels removed

input - array of strings
output - new array of strings, vowels removed from each string
rules - from examples, case insensitive

examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

algorithm:

regex for string characters - /[characters]/.i (.i makes case insensitive)

initialize new empty array []
iterate through each string, removing the vowels, then pushing that to the new array
