vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(ary)
  ary = ary.each { |x| x.downcase! }
  occur = {}
  ary.uniq.each do |x|
    occur[x] = ary.count(x)
  end
  p occur
end


count_occurrences(vehicles)