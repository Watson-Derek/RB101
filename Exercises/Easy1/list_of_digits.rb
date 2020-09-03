def digit_list(integer)
  integer.to_s.split('').map { |x| x.to_i }
end

p digit_list(1538756)