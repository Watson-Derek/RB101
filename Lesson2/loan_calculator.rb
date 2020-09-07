require 'yaml'
TEXT = YAML.load_file('loan_messages.yml')

def valid_integer(num)
  num.to_i.to_s == num
end

def valid_float(num)
  num.to_f.to_s == num
end

def valid_number(num)
  valid_integer(num) || valid_float(num)
end

loan_amount = ''
annual_rate = ''
loan_duration = ''

puts TEXT['greet']

loop do
  puts TEXT['amount']
  loan_amount = gets.chomp
  break if valid_number(loan_amount)

  puts TEXT['entry_error']
end

loop do
  puts TEXT['apr']
  annual_rate = gets.chomp
  break if valid_number(annual_rate)

  puts TEXT['entry_error']
end

loop do
  puts TEXT['duration']
  loan_duration = gets.chomp
  break if valid_number(loan_duration)

  puts TEXT['entry_error']
end

monthly_rate = ((annual_rate.to_f / 100) / 12)
months_duration = loan_duration.to_i * 12

monthly_payment = loan_amount.to_i *
                  (monthly_rate / (1 - (1 + monthly_rate)**-months_duration))
puts TEXT['result'] + monthly_payment.round(2).to_s
