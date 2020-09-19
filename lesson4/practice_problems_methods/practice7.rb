[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

#the block's return value will be either true or false, as the last argment is .odd?
#and that evaluates the passed in value
#the return value of the .any? method will be true, as there is at least one true
#return from the method, as 1 and 3 are both odd integers