def prompt(message)
  Kernel.puts ">> #{message}"
end

def valid_num?(n)
  n.to_i != 0
end

prompt("Welcome to Calculator!")

name = nil
loop do
  prompt("Please type in your name:")
  name = gets.chomp
  break unless name.empty?
end
prompt("Welcome, #{name}!")

loop do
  number1 = nil
  number2 = nil

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
    break if valid_num?(number1)  
    prompt("Invalid number.")
  end

  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    break if valid_num?(number2)  
    prompt("Invalid number.")
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt(operator_prompt)

  operator = nil 
  loop do
    operator = Kernel.gets().chomp()
    break if (1..4).include?(operator.to_i)
    prompt("Incorrect input. Please use 1-4.")
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

  prompt("The result is #{result}.")
  prompt("Would you like to perform another calculation? (Y to calculate again)")
  repeat = gets.chomp.downcase
  break unless repeat == "y"
end

prompt("Goodbye!")
