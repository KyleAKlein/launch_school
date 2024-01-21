def prompt(message)
  puts ">> #{message}"
end

loop do 
  prompt "Would you like to play rock, paper, scissors?"
  start = gets.chomp

  if start == "yes" || "y"
    puts "Excellent, please select rock, paper, or scissors:"
  else
    next
  end

  player_choice = gets.chomp
  
  
  break
end 
