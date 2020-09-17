def color_valid(color)
  if color == 'blue' || color == 'green'
    true
  else
    false
  end
end

def color_valid2(color)
  color == 'blue' || color == 'green'
end

# same result, will return true if color is correct