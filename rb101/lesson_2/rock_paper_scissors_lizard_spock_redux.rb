# A full-redo of the exercise:

VALID_CHOICES = %w(rock paper scissors lizard spock)

USER_CHOICES = {
  'sp' => 'spock',
  'sc' => 'scissors',
  'l' => 'lizard',
  'p' => 'paper',
  'r' => 'rock'
}

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

def display_score
  display = <<~HEREDOC
  ********************
  The score is now:
  User - #{SCORES['user_score']}
  Computer - #{SCORES['computer_score']}
  ********************
HEREDOC
  puts display
end

def win_state?
  SCORES.values.include?(5)
end

def display_winner
  user_win = "Congrats! You beat Computer #{SCORES['user_score']} 
              to #{SCORES['computer_score']}."
  computer_win = "Too bad! Computer beat you #{SCORES['computer_score']}
                 to #{SCORES['user_score']}."
  if SCORES['user_score'] == 5
    prompt(user_win)
  elsif SCORES['computer_score'] == 5
    prompt(computer_win)
  end
end

prompt('Welcome!')

loop do
  instructions = <<~HEREDOC
  Please pick: 
  (r) for rock 
  (p) for paper
  (sc) for scissors
  (sp) for spock
  (l) for lizard
HEREDOC

  prompt(instructions)

  choice = ''
  loop do
    input = gets.chomp
    choice = USER_CHOICES[input]
    break if VALID_CHOICES.include?(choice)
    prompt('Invalid response.')
  end 

  computer_choice = VALID_CHOICES.sample
  prompt("You picked #{choice} and Computer picked #{computer_choice}.")
  display_result(choice, computer_choice)
  
  increment_score(choice, computer_choice)
  display_score
  
  if win_state?
    display_winner
    break
  end
end

prompt('Goodbye!')
