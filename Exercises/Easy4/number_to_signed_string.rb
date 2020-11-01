DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3',
           4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def symbol(number)
  if number < 0
    '-'
  elsif number > 0
    '+'
  else
    ''
  end
end

def signed_integer_to_string(number)
  sign = symbol(number)

  number *= -1 if number < 0

  string = ''
  loop do
    array = number.divmod(10)
    string.prepend(DIGITS[array[1]])
    number = array[0]
    break if number == 0
  end
  number = sign + string
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
