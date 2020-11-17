# A full-redo of the exercise:

VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_COMBOS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['rock', 'scissors']
}

def prompt(msg)
  puts ">> #{msg}"
end

def win?(first, second)
  WINNING_COMBOS[first].include?(second) 
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

# def increment_score(choice, computer_choice, user_score, computer_score)
#   if win?(choice, computer_choice)  
#     user_score += 1
#   elsif win?(computer_choice, choice)
#     computer_score += 1
#   else
#     prompt("It's tie!")
#   end
# end



prompt('Welcome!')

user_score = 0
computer_score = 0

# until user_score == 5 || computer_score == 5 
  loop do
    prompt('Please pick rock, paper, scissors, spock, or lizard:')

    choice = ''
    loop do
      choice = gets.chomp
      break if VALID_CHOICES.include?(choice)
      prompt('Invalid response.')
    end 

    computer_choice = VALID_CHOICES.sample
    prompt("You picked #{choice} and Computer picked #{computer_choice}.")

    display_result(choice, computer_choice)
    
    # if win?(choice, computer_choice)  
    #   prompt('You won!')
    # elsif win?(computer_choice, choice)
    #   prompt('Computer won!')
    # else
    #   prompt("It's tie!")
    # end
    
    # puts computer_choice
    # puts choice 
    
    # increment score
    
    if win?(choice, computer_choice)
      user_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    puts "The score is now: User - #{user_score} VS. Computer - #{computer_score}!"

    prompt('Would you like to play again?')
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
# end
