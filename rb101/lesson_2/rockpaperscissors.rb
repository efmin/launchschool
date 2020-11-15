COMPUTER_CHOICES = %w(rock paper scissors spock lizard)

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

loop do
  prompt("Choose: 
         'sp' for spock, 
         'l' for lizard,
         'r' for rock, 
         'p' for paper, 
         'sc' for scissor:")

  choice = ''
 
  loop do
    choice = gets.chomp
    break if valid_choice(choice)
  end

  computer_choice = COMPUTER_CHOICES.sample
  prompt("You picked #{choice} and Computer picked #{computer_choice}.")

  display_result(choice, computer_choice)

  prompt('Would you like to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
