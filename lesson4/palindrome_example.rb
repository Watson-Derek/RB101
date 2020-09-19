def substrings(string)
  result = []
  starting_index = 0
  
  while starting_index <= string.length - 2
    num_chars = 2
    while num_chars <= string.length - starting_index
      substring = string[starting_index, num_chars]
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

def is_palindrome?(string)
  string == string.reverse
end

def palindrome_substrings(string)
  result = []
  substrings_array = substrings(string)
  substrings_array.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

p palindrome_substrings("supercalifragilisticexpialidocious")
p palindrome_substrings("abcddcbA")
p palindrome_substrings("palindrome")
p palindrome_substrings("")
p palindrome_substrings("hello")