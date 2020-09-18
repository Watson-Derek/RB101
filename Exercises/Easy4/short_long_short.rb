def short_long_short(string_1, string_2)
  if string_1.length > string_2.length
    output_string = string_2.concat(string_1, string_2)
  else
    output_string = string_1.concat(string_2, string_1)
  end
  output_string
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')