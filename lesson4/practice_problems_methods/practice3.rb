[1, 2, 3].reject do |num|
  puts num
end

# reject returns an array for which the argument in the block returns false
# the return value of this will be an array of [1, 2, 3], as puts always
# returns nil