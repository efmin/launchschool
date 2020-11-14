VALID_CHOICES = %w(rock paper scissors)

def prompt(msg)
  puts ">> #{msg}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_result(choice, computer_choice)
  if win?(choice, computer_choice)  
    prompt('You won!')
  elsif win?(computer_choice, choice)
    prompt('Computer won!')
  else
    prompt("It's tie!")
  end
end

loop do
  prompt("Please pick rock, paper, or scissors:")

  choice = ''
  loop do
    choice = gets.chomp
    break if VALID_CHOICES.include?(choice)
    prompt('Invalid response. Please choose rock, paper, or scissors.')
  end

  computer_choice = VALID_CHOICES.sample
  prompt("You picked #{choice} and Computer picked #{computer_choice}.")

  display_result(choice, computer_choice)

  prompt('Would you like to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
