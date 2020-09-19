[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# map always returns an array, with the same number of values as passed into it, 
# so this will return an array with 3 values.
# in this case, if the value is greater than 1, then puts num is called, however
# puts num returns nil. if the value is 1 or less, then just num is called, meaning
# the return value is num. 
# so the returned array will be [1, nil, nil]