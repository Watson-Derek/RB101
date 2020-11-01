def triangle(side_1, side_2, side_3)
  return :equilateral if side_1 == side_2 && side_1 == side_3

  tri_array = [side_1, side_2, side_3].sort
  
  if tri_array[0] + tri_array[1] <= tri_array[2]
    :invalid
  elsif tri_array[0] == tri_array[1] || tri_array[1] == tri_array[2]
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
