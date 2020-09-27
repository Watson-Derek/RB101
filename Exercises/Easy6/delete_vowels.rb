def remove_vowels(array)
  vowels_removed = []

  array.each do |string|
    vowels_removed << string.delete("aeiouAEIOU")
  end

  vowels_removed
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
