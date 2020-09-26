write a method that takes a string of words spearated by spaces, and return a new string with thte first and last letters of each word swapped

input - string of words separated by spaces (' ')
outpu - string of words separated by spaces, with first and last letter swapped

split string into an array of each word
two variables - first letter and last letter
if string.length == 1, then do nothing, as there is only one letter
split the array a second time to have each word be in an array

iterate over each word doing this

join array with(' ')
return new string