method that takes a string, and returns a hash that contains 3 entries (key/value pairs), the first displays number of lowercase characters, the second number of uppercase characters, and third number of characters that are neither (non-alpha characters)

input - string
output - hash
rules - anything non-alpha is considered in the third category, this includes numbers, symbols, spaces, etc

examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

algorithm
the neither can simply be the total count of characters minus the count of lowercase and uppercase
create two constant variables, one for all lowercase characters, one for all uppercase characters as arrays, and join them to make them into strings

inside method, initialize empty hash
hash[lowercase:] equals the count of lowercase constant variable characters in string
hash[uppercase:] equals the ocunt of uppercase constant variable characters in string
hash[neither:] equals string.length - hash[lowercase:] - hash[uppercase:]
