LOWERCASE_CHARS = ('a'..'z').to_a.join
UPPERCASE_CHARS = ('A'..'Z').to_a.join

def letter_case_count(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0 }
  string_size = string.size

  hash[:lowercase] = string.count(LOWERCASE_CHARS)
  hash[:uppercase] = string.count(UPPERCASE_CHARS)
  hash[:neither] = string_size - hash[:lowercase] - hash[:uppercase]

  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }