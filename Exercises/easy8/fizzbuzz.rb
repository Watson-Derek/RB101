def fizzbuzz(num1, num2)
  array = (num1..num2).to_a

  array.map! do |value|
    if value % 3 == 0 && value % 5 == 0
      'FizzBuzz'
    elsif value % 3 == 0
      'Fizz'
    elsif value % 5 == 0
      'Buzz'
    else
      value
    end
  end

  array.join(', ')
end

p fizzbuzz(1, 15)
