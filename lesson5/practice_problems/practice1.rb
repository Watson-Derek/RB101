arr = ['10', '11', '9', '7', '8']

arr.sort do |value_a, value_b|
  value_b.to_i <=> value_a.to_i
end

p arr