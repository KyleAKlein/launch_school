# Question 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

p !numbers

# prints
# 1
# 2
# 2
# 3

# Question 2
# the ! or ? at the end of a method, is part of the method name and not Ruby syntax. Therefore, we don't
# know what the method will do.
# 1  != means not equal
# 2  !user_name returns the boolean false
# 3  words.uniq! is a destructive method to eliminate repetition.
# 4  ? before something.
# 5  ? after something.
# 6  !!user_name returns the boolean true

# Question 3
# advice.gsub!("important", "urgent")

# Question 4
numbers = [1, 2, 3, 4, 5]

puts numbers.delete_at(1)   # deletes the 2 (index 1)
puts numbers.delete(1)      # deletes 1

# Question 5
puts (10...100).include?(42)
# (10..100).cover?(42)

# Question 6
famous_words = "seven years ago..."

puts "Four score and " << famous_words
puts "Four score and " + famous_words
# famous_words.prepend("Four score and ")

# Question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones
p flintstones.flatten

#["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

#Question 8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.assoc("Barney")