# In this assignment, we'll build a Rock Paper Scissors game. The game flow should go like this:

#     the user makes a choice
#     the computer makes a choice
#     the winner is displayed


VALID_CHOICES = %w(rock paper scissors)

def prompt(msg)
  puts ">> #{msg}"
end

prompt("Please pick rock, paper, or scissors:")
user_choice = gets.chomp
puts user_choice

computer_choice = VALID_CHOICES.sample
puts computer_choice

