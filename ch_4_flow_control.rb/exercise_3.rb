puts "give me a number"
number = gets.chomp.to_i

def math(n)
	if n < 51
		puts "This is between 0-50"
	elsif  n < 100
		puts "This is between 51-100"
	else
		puts "This is over 100."
	end
end

math(number)
