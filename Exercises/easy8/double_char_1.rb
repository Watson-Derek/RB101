def repeater(string)
  new_string = ''
  string.each_char do |character|
    new_string << character + character
  end
  new_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
