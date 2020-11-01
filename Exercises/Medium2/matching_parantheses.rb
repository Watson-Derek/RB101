def balanced?(string)
  paran_string = string.delete "^()"
  count = 0

  paran_string.each_char do |character|
    character == '(' ? count += 1 : count -= 1
    return false if count < 0
  end

  count == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
