def crunch(string)
  crunched_string = string[0]

  string.each_char do |character|
    crunched_string << character if crunched_string[-1] != character
  end
  crunched_string = '' if crunched_string == nil
  crunched_string
end












p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''