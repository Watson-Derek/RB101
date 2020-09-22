def new_uuid
  characters = ['a', 'b', 'c', 'd', 'e', 'f', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

  uuid = [[8], [4], [4], [4], [12]]

  uuid.map! do |sub_array|
    num = sub_array[0]
    sub_array = characters.sample(num)
    sub_array.join
  end
  p uuid.join('-')
end
new_uuid