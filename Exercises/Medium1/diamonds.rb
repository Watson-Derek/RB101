def diamond(num)
  stars = '*'
  spaces = ''
  (num / 2).times { |_x| spaces << ' ' }

  loop do
    puts "#{spaces}#{stars}#{spaces}"
    break if stars.size == num
    stars << '**'
    spaces.chop!
  end

  until stars.size < 1
    stars.chop!.chop!
    spaces << ' '
    puts spaces + stars + spaces
  end
end

puts diamond(1)
puts diamond(3)
puts diamond(9)
