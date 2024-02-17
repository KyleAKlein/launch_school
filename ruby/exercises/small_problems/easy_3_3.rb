puts "Please write a word or words:"
words = gets.chomp

count = words.delete(' ').size

puts "There are #{count} characters in \"#{words}.\""