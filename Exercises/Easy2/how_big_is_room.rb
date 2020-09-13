puts "Enter the length of the room in meters:"
room_length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
room_width = gets.chomp.to_i

area_meters = room_length * room_width

area_feet = area_meters * 10.7639

puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."