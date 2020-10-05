# def joinor(array, delimiter = ', ', word = 'or')
#   choices = 'Choose a square '
#   index = 0

#   if array.size == 1
#     choices << array[0].to_s
#   elsif array.size == 2
#     choices << "#{array[0]} #{word} #{array[1]}"
#   else
#     loop do
#       if index == array.size - 1
#         choices << word + ' ' + array[index].to_s
#         break
#       else
#         choices << array[index].to_s + delimiter
#         index += 1
#       end
#     end
#   end
#   choices
# end

def joinor(array, delimiter = ', ', word = 'or')
  choices = "Choose a square: #{array[0]}"
  index = 1
  return choices if array.size == 1
  return choices << " #{word} #{array[1]}" if array.size == 2

  loop do
    if index == array.size - 1
      choices << "#{delimiter}#{word} #{array[index]}"
      break
    else
      choices << delimiter + array[index].to_s
      index += 1
    end
  end
  choices
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
p joinor([3])
