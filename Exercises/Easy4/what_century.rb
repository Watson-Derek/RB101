p 1965.0 / 100.0
p 2000.0 / 100.0
p 2001.0 / 100.0
p 5.0 / 100.0

def what_century(year)
  century = year / 100 + 1
  century -=1 if year % 100 == 0
  
end
