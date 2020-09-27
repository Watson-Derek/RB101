def include?(array, value)
  did_find = array.find(-> {'no'}) { |i| i == value }

  did_find == 'no' ? false : true
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false