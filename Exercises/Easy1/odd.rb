def is_odd(x)
  x.abs % 2 != 0
end

puts 'enter num'
num = gets.chomp.to_i

puts is_odd(num)