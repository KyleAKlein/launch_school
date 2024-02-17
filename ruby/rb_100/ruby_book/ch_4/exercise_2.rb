def louder(word)
	if word.length > 10 
		word.upcase
	else 
		word
	end
end

puts louder("hello world")
puts louder("Bob todd")
