def print_in_box(string)
  outside_lines = '+--'
  inside_lines = '|  '

  box_width = string.size

  box_width.times do
    outside_lines << '-'
  end

  box_width.times do
    inside_lines << ' '
  end

  outside_lines << '+'
  inside_lines << '|'

  puts outside_lines
  puts inside_lines
  puts "| #{string} |"
  puts inside_lines
  puts outside_lines
end

print_in_box('hello there')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')