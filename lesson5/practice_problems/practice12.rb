arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}

# hsh[arr[0][0]] = arr[0][1]
# hsh[arr[1][0]] = arr[1][1]
# hsh[arr[2][0]] = arr[2][1]
# hsh[arr[3][0]] = arr[3][1]


arr.each do |sub_array|
  hsh[sub_array[0]] = sub_array[1]
end

p hsh