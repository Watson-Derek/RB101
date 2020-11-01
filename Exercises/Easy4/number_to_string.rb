DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 
           4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(number)
  string = ''
  loop do
    array = number.divmod(10)
    string.prepend(DIGITS[array[1]])
    number = array[0]
    break if number == 0
  end
  number = string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
