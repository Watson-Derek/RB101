DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, 
           '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9'=> 9 }

def string_to_integer(string)
  array = string.chars
  if array[0] == '-'
    array.shift
    array.map! { |character| DIGITS[character] }

    value = 0
    array.each { |character| value = 10 * value + character }
    return value * -1
  elsif array[0] == '+'
    array.shift
  end
  array.map! { |character| DIGITS[character] }

  value = 0
  array.each { |character| value = 10 * value + character }
  value
end

#def string_to_signed_integer(string)
 # if string[0] == 
p string_to_integer('4321')
p string_to_integer('-570')
p string_to_integer('+100')
