def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3

  if average >= 90
    'A'
  elsif average >= 80 && average < 90
    'B'
  elsif average >= 70 && average < 80
    'C'
  elsif average >= 60 && average < 70
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
