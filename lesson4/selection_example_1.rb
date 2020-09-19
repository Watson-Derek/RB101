produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  new_hash = {}
  hash.each do |key, value|
    new_hash.store(key, value) if value == 'Fruit'
  end
  p new_hash
end

select_fruit(produce)
p produce