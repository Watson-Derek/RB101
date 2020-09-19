['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# will return a hash of { a => ant, b => bear, c => cat }