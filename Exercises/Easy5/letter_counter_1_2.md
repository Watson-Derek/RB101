method that takes a string with one or more space spearated words, and returns a hash that shows the number of words of different sizes

Input - string of words or characters separated by spaces
ouput - hash of word sizes and number of words of that size


examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

examples show that characters count for the word size, ie how's = 5 for word size


algorithm

break string into an array using split(' ')
  this will keep the characters with the words, and separate by the spaces only

initialize an empty new hash {}

iterate through the array, array each
each word is counted to a variable reset each time, word_size
word_size will be the key for the hash
checks hash, if word_size is a key already, increase the value of that key by 1
if it is not, save it as a new key with a value of 1
return the new hash


For problem 2, return the same but with the non-letters not counting

use gsub to temporarily remove all non alpa characters /[^a..z]/