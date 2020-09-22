arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hash|
  new_arr = {}
  hash.each do |key, value|
    new_arr[key] = value + 1
  end
  new_arr
end

p arr
