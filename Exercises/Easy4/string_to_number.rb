DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, 
           '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9'=> 9 }

def string_to_integer(string)
  array = string.chars
  array.map! { |character| DIGITS[character] }
  value = 0
  array.each { |character| value = 10 * value + character }
  value
end

p string_to_integer('4321')