names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names[0]
  names.shift
  break if names.size == 0
end