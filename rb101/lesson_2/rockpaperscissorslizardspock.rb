# TO DO
# add a display winner method
# separate logic from incrementing action in increment method

require 'pry'

VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(msg)
  puts ">> #{msg}"
end

def valid_choice(choice)
  case choice 
  when 'sp' then 'spock'
  when 'sc' then 'scissors'
  when 'l'  then 'lizard'
  when 'r'  then 'rock'
  when 'p'  then 'paper'
  else puts 'Invalid response.'
  end
end

def win?(first, second)
  (first == 'rock' && 
    (second == 'scissors' || second == 'lizard' )) ||
  (first == 'paper' && 
    (second == 'rock' || second == 'spock')) ||
  (first == 'scissors' && 
     (second == 'paper' || second == 'lizard')) ||
  (first == 'lizard' &&
    (second == 'spock' || second == 'paper')) ||
  (first == 'spock' &&
    (second == 'rock' || second == 'scissors'))
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

def increment_score(choice, computer_choice, user_score, computer_score)
  if win?(choice, computer_choice)
    user_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end
  puts "The Score inside method: User: #{user_score} vs Computer: #{computer_score}"
end

def display_score(user_score, computer_score)
  puts "The Score outside method: User: #{user_score} vs Computer: #{computer_score}"
end

  # if user_score == 5 || computer_score == 5
  #  game_play = false 
  # end 

# def display_winner(user_score, computer_score)
  # puts user_score == 5 ? 'You win the match!' : 'Computer wins the match!'
# end

prompt('Welcome to Rock-Paper-Spock-Lizard-Scissors!')
game_play = true

user_score = 0
computer_score = 0
display_score(user_score, computer_score)

loop do
  while game_play do 
    prompt("Choose: 
           'sp' for spock, 
           'l' for lizard,
           'r' for rock, 
           'p' for paper, 
           'sc' for scissor:")

    choice = ''
    loop do
      choice = gets.chomp
      choice = valid_choice(choice)
      break if choice
    end

    computer_choice = VALID_CHOICES.sample
    prompt("You picked #{choice} and Computer picked #{computer_choice}.")
    
    display_result(choice, computer_choice)  
    increment_score(choice, computer_choice, user_score, computer_score)
    display_score(user_score, computer_score)
     
    # if win?(choice, computer_choice)
    #   user_score += 1
    # elsif win?(computer_choice, choice)
    #   computer_score += 1
    # end  
      
    # finish_game?(user_score, computer_score) 
  end
  
  prompt('Would you like to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
