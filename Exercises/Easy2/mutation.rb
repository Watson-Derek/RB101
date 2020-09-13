array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

#will return all original values from array 1, as the arrays point to different objects

# was wrong. array 2 was passed each string value from array 1, and each pointed
# to the same string object. when mutating those objects in the second loop, 
# the strings were mutated, and both arrays were pointing to the same strings