write a method that takes a string, and returns a new string that is the same as the original, but with all consecutive duplicate characters reduced to one instance. can not use squeeze

input - string
output - new string with all consecutive characters reduced to one instance

examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

algorithm:
start with first character, place it in new string
for each character, check whether the character before it is the same
if it is then delete the character
if it isn't then add it to the new string