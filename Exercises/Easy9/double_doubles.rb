def twice(integer)
  int_string = integer.to_s
  mid_string = int_string.size / 2

  if int_string.size.even?
    arr1 = int_string[0...mid_string]
    arr2 = int_string[mid_string..-1]
    if arr1 == arr2
      integer
    else
      integer * 2
    end
  else
    integer * 2
  end   
end



p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10