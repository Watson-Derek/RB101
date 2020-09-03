def repeat(text, num)
  count = 0
  while count < num
    puts text
    count += 1
  end
end

repeat('Hello', 3)

puts '------'

# provided solution is easier

def repeat2(text,num)
  num.times do
    puts text
  end
end

repeat2('Hello', 3)