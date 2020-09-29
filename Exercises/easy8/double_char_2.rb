CONSONANTS = (('a'..'z').to_a + ('A'..'Z').to_a).delete_if { |c| c =~ /[aeiouAEIOU]/ }

def double_consonants(string)
  new_string = ''
  string.each_char do |character|
    if CONSONANTS.include?(character)
      new_string << character + character
    else
      new_string << character
    end
  end
  new_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""