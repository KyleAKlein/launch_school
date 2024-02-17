VALID_CHOICES = %w(rock paper scissors lizard spock)
#OTHER_CHOICES = %w(r p s l sp)

# #def win?(first, second)
#   (first == 'rock' && second == 'scissors' || second == 'lizard') ||
#   (first == 'paper' && second == 'rock' || second == 'spock') ||
#   (first == 'scissors' && second == 'paper' || second == 'lizard') ||
# 	(first == 'lizard' && second == 'paper' || second == 'spock') ||
# 	(first == 'spock' && second == 'scissors' || second == 'rock')
# end

def win?(first, second)
	{ 
	'rock': scissors, lizard,
	'paper': spock, rock,
	'scissors': paper, lizard,
	'lizard': spock, paper,
	'spock': scissors, rock,
}
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('You lose!')
  else
    prompt('You tie!')
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end



loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp

    break if VALID_CHOICES.include?(choice) 

    prompt('That\'s not a valid choice.')
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}. Computer chose: #{computer_choice}.")

  display_result(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing, bye!')
