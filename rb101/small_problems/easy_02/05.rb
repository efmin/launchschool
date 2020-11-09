def greeting(input)
  "Hello #{input}."
end

def yell_greeting(input)
  "HELLO #{input.chop.upcase}. WHY ARE WE SCREAMING?"
end

puts 'What is your name?'
name = gets.chomp

puts name.include?("!") ? yell_greeting(name) : greeting(name)

