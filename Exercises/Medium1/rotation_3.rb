require 'pry'

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  rotate_arr = number.to_s.split('')[-digits..-1]
  hold_arr = number.to_s.split('')[0...-digits]
  rotate_arr = rotate_array(rotate_arr)
  (hold_arr + rotate_arr).join.to_i
end

def max_rotation(number)
  num_size = number.to_s.size
  num_size.downto(1) do |digit|
    number = rotate_rightmost_digits(number, digit)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845