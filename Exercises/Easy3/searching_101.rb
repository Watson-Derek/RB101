def prompt(text)
  puts "==> #{text}"
end

array = []

prompt("Enter the 1st number:")
array << gets.chomp.to_i
prompt("Enter the 2nd number:")
array << gets.chomp.to_i
prompt("Enter the 3rd number:")
array << gets.chomp.to_i
prompt("Enter the 4th number:")
array << gets.chomp.to_i
prompt("Enter the 5th number:")
array << gets.chomp.to_i

prompt("Enter the last number:")
final_number = gets.chomp.to_i

if array.include?(final_number)
  puts "The number #{final_number} appears in #{array}."
else
  puts "The number #{final_number} does not appear in #{array}."
end
