# Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.has_key?("Spot")
p ages.include?("Spot")

# Question 2
munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY." x
# "The munsters are creepy in a good way." x
# "the munsters are creepy in a good way." x
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY." x

# Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

p ages.merge!(additional_ages)

# Question 4

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.match?("Dino")

# Question 5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones << "Dino"

# Question 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.unshift("Dino", "Hoppy")

# Question 8

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice("Few things in life are as important as ")
p advice.slice!(0, advice.index('house')) 
p advice

# Question 9

statement = "The Flintstones Rock!"
p statement.count("t")

# Question 10

title = "Flintstone Family Members"
title.center(40)