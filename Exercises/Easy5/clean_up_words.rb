def cleanup(string)
  letters = []
  for letter in 'a'..'z' do
    letters << letter
  end
  new_string = ''
  string.each_char do |character|
    if letters.include?(character) == false
      if new_string[-1] == ' '
        next
      end
      character = ' '
    end
    new_string << character
  end
  new_string
end

p cleanup("---what's my +*& line?") == ' what s my line '