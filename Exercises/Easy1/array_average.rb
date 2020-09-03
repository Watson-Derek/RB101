def average(array)
  totalval = 0
  array.each do |x|
    totalval += x
  end
  totalval / array.length
end


puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# further explanation, return the average value as a float, not an integer

def averagefloat(array)
  totalval = 0
  array.each { |x| totalval += x }
  totalval / array.length.to_f
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

=begin
#much easier solution
def average(array)
  array.sum / array.length
end
=end
