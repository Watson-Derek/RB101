a = %w(a b c d e)
puts a.fetch(7)   #this will give an error, there is no index 7
puts a.fetch(7, 'beats me') # will print beats me, there is no index 7
puts a.fetch(7) { |index| index**2 } # will print 49, since no index 7, returns index squared

# %w(x y x) means create an array of strings, seperated by the space between characters
