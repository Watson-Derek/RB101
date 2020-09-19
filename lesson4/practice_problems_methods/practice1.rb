[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# return value of this select method will be an array with all of the values
# of the original array, as the method ends with 'hi', so the method will always
# end as truthy, ignoring the previous line of num > 5