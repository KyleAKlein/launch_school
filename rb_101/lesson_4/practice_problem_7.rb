statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
	letter_frequency = statement.count(letter)
	result[letter] = letter_frequency if letter_frequency > 0
end

p result


#{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }