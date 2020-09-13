p 'What is the bill?'
bill = gets.chomp.to_f

p 'What is the tip percentage?'
tip_percent = gets.chomp.to_f

tip_total = (bill * (tip_percent / 100)).round(2)
bill_total = (tip_total + bill).round(2)

puts "The tip is $#{tip_total}"
puts "The total is $#{bill_total}"
