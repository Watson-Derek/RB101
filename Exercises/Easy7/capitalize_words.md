method that takes a single string argument and returns a new string that contains the original value of the input string with the first character of each word capitalized and all other letters lowercase

input - string
output - string with first character of each word capitalized

examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

obersvations from examples - the first character is to be capitalized, not the first letter. The last example shows this with the word "quoted", it remains "quoted", since q is the second character

algorithm:
break string into an array using split
run capitalize on each word using each
join back together into new string with (' ')