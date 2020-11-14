# In this assignment, we'll build a Rock Paper Scissors game. The game flow should go like this:

#     the user makes a choice
#     the computer makes a choice
#     the winner is displayed


VALID_CHOICES = %w(rock paper scissors)

def prompt(msg)
  puts ">> #{msg}"
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

  if (choice == 'rock' && computer_choice == 'scissors') ||
      (choice == 'paper' && computer_choice == 'rock') ||
      (choice == 'scissors' && computer_choice == 'paper') 
    prompt('You won!')
  elsif (choice == 'rock' && computer_choice == 'paper') ||
        (choice == 'paper' && computer_choice == 'scissors') ||
        (choice == 'scissors' && computer_choice == 'rock')
    prompt('Computer won!')
  else
    prompt("It's tie!")
  end

  prompt('Would you like to play again?') 
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
