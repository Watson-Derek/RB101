def triangle(input)
  spaces = ''
  stars = '*'

  (input - 1).times do
    spaces << ' '
  end

  input.times do
    puts spaces + stars
    spaces.chop!
    stars << '*'
  end
end

triangle(5)
puts ''
triangle(9)