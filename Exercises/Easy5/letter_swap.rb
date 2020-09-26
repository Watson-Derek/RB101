def swap(string)
  arr = string.split
  arr.map do |word|
    if word.length == 1
      next
    end

    first_letter = word[0]
    last_letter = word[-1]

    word[0] = last_letter
    word[-1] = first_letter
  end
  arr.join(' ')
end





p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'