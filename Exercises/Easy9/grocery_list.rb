def buy_fruit(array)
  result = []

  array.each do |sub_array|
    sub_array[1].times { result << sub_array[0] }
  end

  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]
