def leading_substrings(string)
  sub_string = ''
  array = []
  index = 0

  string.each_char do |character|
    sub_string += character
    array[index] = sub_string
    index += 1
  end
  array
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']