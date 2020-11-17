# A full-redo of the exercise:

VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_COMBOS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['rock', 'scissors']
}

SCORES = {
  'user_score' => 0,
  'computer_score' => 0
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

def increment_score(choice, computer_choice)
  if win?(choice, computer_choice)  
    SCORES['user_score'] += 1
  elsif win?(computer_choice, choice)
    SCORES['computer_score'] += 1
  end
end



prompt('Welcome!')

# until 'user_score' == 5 || 'computer_score' == 5 
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
   
    increment_score(choice, computer_choice) 
    puts "The score is now: \nUser - #{SCORES['user_score']} \nComputer - #{SCORES['computer_score']}!"

    prompt('Would you like to play again?')
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
# end
