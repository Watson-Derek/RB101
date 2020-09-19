{ a: 'ant', b: 'bear', }.map do |key, value|
  if value.size > 3
    value
  end
end

# return value will be an array of ['nil', 'bear']
# map always returns a value, in this case, the first value passed in, 'ant', 
# fails the if, resulting in nil, as there is no return value specified for an else
