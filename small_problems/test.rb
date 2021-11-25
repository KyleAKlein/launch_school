puts "Give me a name:"
user_input = gets.chomp

if user_input == ""
  user_input = "Teddy"
end

puts "#{user_input} is #{rand(20..200)} years old!"