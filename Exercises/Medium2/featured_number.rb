def featured(integer)
  num = integer + 1
  loop do
    break if num % 7 == 0
    num += 1
  end

  loop do
    break if unique?(num)
    num += 7
    return 'no possible number' if num >= 9_876_543_210
  end

  num
end

def unique?(num)
  num % 7 == 0 &&
    num.odd? &&
    num.to_s == num.to_s.split('').uniq.join
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible
