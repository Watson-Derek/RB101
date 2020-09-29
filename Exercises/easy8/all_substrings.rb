def substrings(string)
  start_index = 0
  array = []

  until start_index == string.size
    start_index.upto(string.size - 1) do |index|
      array << string[start_index..index]
    end

    start_index += 1
  end
  array
end

p substrings('abcde') == ['a', 'ab', 'abc', 'abcd', 'abcde',
                          'b', 'bc', 'bcd', 'bcde',
                          'c', 'cd', 'cde',
                          'd', 'de',
                          'e']
