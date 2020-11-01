def friday_13th(year)
  friday_13_count = 0
  1.upto(12) do |month|
    day = Time.new(year, month, 13)
    friday_13_count += 1 if day.friday?
  end

  friday_13_count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
