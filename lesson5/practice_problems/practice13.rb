arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

sort_array = arr.sort_by do |subarr|
  subarr.select do |value|
    value.odd?
  end
end

p arr
p sort_array