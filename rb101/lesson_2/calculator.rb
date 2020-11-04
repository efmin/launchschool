require 'pry'

def prompt message
  puts ">> #{message}"
end

def valid_num? n
  n.to_i.is_a? Integer
end

def operation_to_message op
  case op
  when '1'
    'adding'
  when '2'
    'subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
end

prompt('Welcome to Calculator!')

name = nil
loop do
  prompt('Please type in your name:')
  name = gets.chomp
  break unless name.empty?
end
prompt("Welcome, #{name}!")

loop do
  number1 = nil
  number2 = nil

  loop do
    prompt("What's the first number?")
    number1 = gets.chomp
    break if valid_num? number1  
    prompt 'Invalid number.'
  end

  loop do
    prompt("What's the second number?")
    number2 = gets.chomp
    break if valid_num? number2  
    prompt 'Invalid number.'
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt operator_prompt

  operator = nil
  loop do
    operator = gets.chomp
    break if (1..4).include? operator.to_i
    prompt 'Incorrect input. Please use 1-4.'
  end

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'  
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  performing_operation = <<-MSG
        #{operation_to_message(operator)}...
         #{operation_to_message(operator)}...
         really working hard here...
        MSG

  prompt(performing_operation)
  prompt("The result is #{result}.")
  prompt("Would you like to perform another calculation? (Y to calculate again)")
  repeat = gets.chomp.downcase
  break unless repeat == "y"
end

prompt("Goodbye!")
