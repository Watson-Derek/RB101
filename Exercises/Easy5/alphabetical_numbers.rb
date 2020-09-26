SORT_HASH = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
              5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
              10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
              14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
              17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(array)
  word_array = array.map do |integer|
    integer = SORT_HASH[integer]
  end

  word_array.sort!

  sorted_array = word_array.map do |text|
    text = SORT_HASH.invert[text]
  end

  sorted_array
end

arr = (0..19).to_a

p alphabetic_number_sort(arr)
