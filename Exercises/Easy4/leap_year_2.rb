def leap_year?(year)
  if year >= 1752
    return false unless year % 4 == 0
    if year % 100 == 0
      return false unless year % 400 == 0
    end
    true
  else
    return false unless year % 4 == 0
    true
  end
end

p leap_year?(2016)
p leap_year?(2015)
p leap_year?(2100)
p leap_year?(2400)
p leap_year?(240000)
p leap_year?(240001)
p leap_year?(2000)
p leap_year?(1900)
p leap_year?(1752)
p leap_year?(1700)
p leap_year?(1)
p leap_year?(100)
p leap_year?(400)
