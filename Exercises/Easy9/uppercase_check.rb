UPPERCASE_LETTERS = ('A'..'Z').to_a
LETTERS = ('a'..'z').to_a + UPPERCASE_LETTERS

def uppercase?(string)
  check_array = []

  string.each_char do |character|
    if LETTERS.include?(character)
      if UPPERCASE_LETTERS.include?(character)
        check_array << true
      else
        check_array << false
      end
    else
      next
    end
  end
  if check_array.include?(false)
    false
  else
    true
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
