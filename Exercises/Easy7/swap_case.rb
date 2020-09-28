LOWERCASE_CHARS = ('a'..'z').to_a.join
UPPERCASE_CHARS = ('A'..'Z').to_a.join

def swapcase(string)
  swapped_string = ''

  string.each_char do |character|
    if LOWERCASE_CHARS.include?(character)
      swapped_string << character.upcase
    elsif UPPERCASE_CHARS.include?(character)
      swapped_string << character.downcase
    else
      swapped_string << character
    end
  end
  swapped_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
