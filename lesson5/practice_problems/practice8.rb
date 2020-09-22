hsh = {first: ['the', 'quick'], 
        second: ['brown', 'fox'], 
        third: ['jumped'], 
        fourth: ['over', 'the', 'lazy', 'dog']
      }

vowels_arr = ['a', 'e', 'i', 'o', 'u']

hsh.each do |key, array|
  array.each do |string|
    string.each_char do |character|
      p character if vowels_arr.include?(character)
    end
  end
end
