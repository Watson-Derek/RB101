def letter_percentages(string)
  total_chars = string.length.to_f
  percentage_hash = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }

  lowercase_count = string.count "/[a-z]/"
  uppercase_count = string.count "/[A-Z]/"
  neither_count = total_chars - lowercase_count - uppercase_count

  percentage_hash[:lowercase] = (lowercase_count / total_chars) * 100
  percentage_hash[:uppercase] = (uppercase_count / total_chars) * 100
  percentage_hash[:neither] = (neither_count / total_chars) * 100

  percentage_hash
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
