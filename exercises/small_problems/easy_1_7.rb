def stringy(num)
	answer = []
	num.times do
		if answer.last == "1"
			answer << "0"
		else
			answer.push("1")
		end
	
	end
  answer.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'