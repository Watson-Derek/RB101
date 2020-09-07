require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts(" => #{message}")
end

def valid_integer?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  valid_integer?(num) || valid_float?(num)
end

def operation_to_message(op)
  word = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
  word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['greet'] + "#{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_num'])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['number_error'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_num'])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['number_error'])
    end
  end

  #operator_prompt = <<-MSG
    #What operation would you like to perform?
    #1) add
    #2) subtract
    #3) multiply
    #4) divide
    #MSG
    
  prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['prompt_error'])
    end
  end

  prompt("#{operation_to_message(operator)} " + MESSAGES['performing'])

  result = case operator
  when '1'
    result = number1.to_i() + number2.to_i()
  when '2'
    result = number1.to_i() - number2.to_i()
  when '3'
    result = number1.to_i() * number2.to_i()
  when '4'
    result = number1.to_f() / number2.to_f()
  end

  prompt(MESSAGES['result'] + "#{result}")

  prompt(MESSAGES['continue'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['ending'])