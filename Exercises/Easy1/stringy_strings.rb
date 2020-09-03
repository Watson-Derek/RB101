def stringy(num)
  ary = []
  num.times do |x|
    if x % 2 == 0
      ary << 1
    else
      ary << 0
    end
    x += 1
  end
  ary.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=begin
solution is a little simpler

def stringy(size)
  numbers = []     same to this point, its the 'each' that is different

  size.times do |index|
    number = index.even? ? 1 : 0   --- this checks if the index is even, starting at 0
    numbers << number
  end

  numbers.join --- same here
end
